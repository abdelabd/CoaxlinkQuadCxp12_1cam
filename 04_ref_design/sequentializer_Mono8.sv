// Author: Abdelrahman Elabd
// Lab: ACME Lab, U. Washington ECE
// Date: 04/17/2025
// Module purpose: The CustomLogic framegrabber spits out 256 bits at a time: either 16 16-bit pixels or 32 8-bit pixels
// This module takes the 32 8-bit pixels and 'sequentializes' them - i.e. it spits out only one pixel at a time
// This is necessary because the downstream hls4ml module only accepts a stream of one pixel per clock-cycle
// This module also outputs the x- and y- coordinate of the current output pixel - helpful/necessary for the downstream crop_norm module

module sequentializer_Mono8 #(
    parameter IN_ROWS           = 20, // Must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20
)(
    input  logic clk, 
    input  logic srst,           // Synchronous reset
    input  logic s_axis_resetn,  // AXI Stream interface reset (active-low)

    // ap control signals
    input logic ap_start, 
    output logic ap_done,
    output logic ap_ready, 
    output logic ap_idle,

    input logic cf_ap_ready,

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [255:0]             s_axis_tdata, 

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [7:0] m_axis_tdata,

    output logic [$clog2(IN_COLS)-1:0] cnt_col,
    output logic [$clog2(IN_ROWS)-1:0] cnt_row
);

    localparam PIXELS_PER_BURST = 32;

    /////////////////////////////////// WIRE DECLARATIONS ///////////////////////////////////
    
    logic reset;

    logic frame_started; // Tells us not to do anything until we're receiving pixels from the actual frame 

    logic [7:0] pixel_buffer [PIXELS_PER_BURST-1:0]; // Shift-register memory
    logic load, shift; // Shift-register control signals

    // Index-tracking
    logic [$clog2(PIXELS_PER_BURST)-1:0] cnt_idx_in_burst;
    logic [$clog2(IN_ROWS*IN_COLS)-1:0] cnt_idx_in_frame;

    // For FSM
    enum logic [1:0] {IDLE, LOAD_IN, STREAM_OUT, DONE} ps, ns;

    /////////////////////////////////// LOGIC ///////////////////////////////////

    // Combine both reset signals into one for simplicity
    assign reset = srst || (!s_axis_resetn);

    // Drive frame-started
    always_comb begin
        if (reset) frame_started = 1'b0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) frame_started = 1'b0;
        else if (ap_start && ap_ready) frame_started = 1'b1;
    end

    // Drive shift-register to store pixel-burst ////////////////////////
    shift_register #(.WIDTH(8), .DEPTH(PIXELS_PER_BURST)) 
    seq_sr (.clk(clk), .reset(reset), .load(load), .shift(shift),
    .parallel_in(s_axis_tdata), .serial_in(8'b00000000), .data_out(pixel_buffer));

    // Drive cnt_idx_in_frame
    always_ff @(posedge clk) begin
        if (reset) cnt_idx_in_frame <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_idx_in_frame <= 0;
        else if (m_axis_tvalid && m_axis_tready) cnt_idx_in_frame <= cnt_idx_in_frame + 1;
    end

    // Drive cnt_col
    always_ff @(posedge clk) begin
        if (reset) cnt_col <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_col <= 0;
        else if (m_axis_tvalid && m_axis_tready) begin
            if (cnt_col==IN_COLS-1) cnt_col <= 0;
            else cnt_col <= cnt_col + 1;
        end
    end

    // Drive cnt_row
    always_ff @(posedge clk) begin
        if (reset) cnt_row <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_row <= 0;
        else if (m_axis_tvalid && m_axis_tready) begin
            if (cnt_col==IN_COLS-1) begin
                if (cnt_row==IN_ROWS-1) cnt_row <= 0;
                else cnt_row <= cnt_row + 1;
            end
        end
    end

    // Drive cnt_idx_in_burst
    always_ff @(posedge clk) begin
        if (reset) cnt_idx_in_burst <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_idx_in_burst <= 0;
        else if (s_axis_tvalid && s_axis_tready) cnt_idx_in_burst <= 0;
        else if (m_axis_tvalid && m_axis_tready) cnt_idx_in_burst <= cnt_idx_in_burst + 1;
    end

    // Finite-state machine: drive ap_done, ap_ready, ap_idle,
    //                             load, shift
    //                             ps, ns
    //                             s_axis_tready, m_axis_tvalid
    always_ff @(posedge clk) begin 
        if (reset) ps <= IDLE; 
        else ps <= ns;
    end

    always_comb begin
        case (ps)

            IDLE: begin
                ap_done = 1'b0;
                ap_ready = cf_ap_ready;
                ap_idle = 1'b1;

                s_axis_tready = 1'b0;
                m_axis_tvalid = 1'b0;
                load = 1'b0;
                shift = 1'b0;
                if (frame_started) ns = LOAD_IN; 
                else ns = IDLE;
            end

            LOAD_IN: begin
                ap_done = 1'b0;
                ap_ready = 1'b0;
                ap_idle = 1'b0;

                s_axis_tready = 1'b1;
                m_axis_tvalid = 1'b0;
                load = s_axis_tvalid && s_axis_tready;
                shift = 1'b0;
                if (s_axis_tvalid && s_axis_tready) ns = STREAM_OUT; // On slave handshake, prepare to stream out on master
                else ns = LOAD_IN;
            end

            STREAM_OUT: begin
                ap_done = 1'b0;
                ap_ready = 1'b0;
                ap_idle = 1'b0;

                s_axis_tready = 1'b0;
                m_axis_tvalid = 1'b1;
                load = 1'b0;
                shift = m_axis_tvalid && m_axis_tready;
                if (cnt_idx_in_frame == IN_ROWS*IN_COLS-1) ns = DONE;
                else if ((cnt_idx_in_burst == PIXELS_PER_BURST-1) && (m_axis_tvalid && m_axis_tready)) ns = LOAD_IN; // Wait for this handshake to complete before moving to LOAD_IN
                else ns = STREAM_OUT;
            end

            DONE: begin
                ap_done = 1'b1;
                ap_ready = 1'b0; 
                ap_idle = 1'b0;
                
                s_axis_tready = 1'b0;
                m_axis_tvalid = 1'b0;
                load = 1'b0;
                shift = 1'b0;
                ns = IDLE;
            end

        endcase 
    end

    // Drive m_axis_tdata
    assign m_axis_tdata = pixel_buffer[0]; // Output is the bottom byte of pixel_buffer

    /////////////////////////////////// TESTBENCHING ///////////////////////////////////

    // synthesis translate_off
    logic downstream_handshake;
    assign downstream_handshake = (m_axis_tvalid && m_axis_tready);
    
    int signed col_diff;
    assign col_diff = cnt_col - cnt_idx_in_frame%IN_COLS;

    int signed row_diff;
    assign row_diff = cnt_row - cnt_idx_in_frame/IN_COLS;

    always_ff @(posedge clk) begin
        if (downstream_handshake) begin
            assert(m_axis_tdata == cnt_idx_in_frame); // Only true for systematic testbench data of course
            assert((cnt_idx_in_frame%IN_COLS)==cnt_col);
            assert(col_diff==0);
            assert((cnt_idx_in_frame/IN_COLS)==cnt_row);
            assert(row_diff==0);
        end
    end
    // synthesis translate_on

endmodule
