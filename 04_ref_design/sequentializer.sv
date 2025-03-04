module sequentializer #(
    parameter PIXEL_BIT_WIDTH   = 10,
    parameter PIXELS_PER_BURST  = 10,
    parameter USER_WIDTH        = 2,
    parameter IN_ROWS           = 20, // must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 10,
    parameter OUT_COLS          = 10
)(
    input  logic clk, 
    input  logic srst,           // Synchronous reset
    input  logic s_axis_resetn,  // AXI Stream interface reset (active-low)

    // ap control signals
    input logic ap_start, 
    output logic ap_done,
    // output logic ap_ready, // TODO
    // output logic ap_idle, // TODO

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH*PIXELS_PER_BURST-1:0] s_axis_tdata,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata,
    output logic [$clog2(IN_COLS)-1:0] cnt_col,
    output logic [$clog2(IN_ROWS)-1:0] cnt_row
);

    //////////////////////// Internal signals ////////////////////////

    // Combine both reset signals into one for simplicity
    logic reset;
    assign reset = srst || (!s_axis_resetn);

    // frame_started tells us not to do anything until we're receiving pixels from the actual frame 
    logic frame_started;
    always_comb begin
        if (reset) frame_started = 1'b0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) frame_started = 1'b0;
        else if (ap_start) frame_started = 1'b1;
    end

    //////////////////////// Finite-state machine ////////////////////////
    enum logic [1:0] {IDLE, LOAD_IN, STREAM_OUT, DONE} ps, ns;
    always_ff @(posedge clk) begin 
        if (reset) ps <= IDLE;
        else ps <= ns;
    end

    always_comb begin
        case (ps)

            IDLE: begin
                ap_done = 1'b0;

                s_axis_tready = 1'b0;
                m_axis_tvalid = 1'b0;
                load = 1'b0;
                shift = 1'b0;
                if (frame_started) ns = LOAD_IN; 
                else ns = IDLE;
            end

            LOAD_IN: begin
                ap_done = 1'b0;

                s_axis_tready = 1'b1;
                m_axis_tvalid = 1'b0;
                load = s_axis_tvalid && s_axis_tready;
                shift = 1'b0;
                if (s_axis_tvalid && s_axis_tready) ns = STREAM_OUT; // On slave handshake, prepare to stream out on master
                else ns = LOAD_IN;
            end

            STREAM_OUT: begin
                ap_done = 1'b0;

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
                
                s_axis_tready = 1'b0;
                m_axis_tvalid = 1'b0;
                load = 1'b0;
                shift = 1'b0;
                ns = IDLE;
            end

        endcase 
    end

    //////////////////////// Shift-register to store data-burst ////////////////////////

    logic [PIXEL_BIT_WIDTH-1:0] pixel_buffer [PIXELS_PER_BURST-1:0];
    logic load, shift;
    shift_register #(.WIDTH(PIXEL_BIT_WIDTH), .DEPTH(PIXELS_PER_BURST)) 
    seq_sr (.clk(clk), .reset(reset), .load(load), .shift(shift),
    .parallel_in(s_axis_tdata), .serial_in({PIXEL_BIT_WIDTH{1'b0}}), .data_out(pixel_buffer));

    assign m_axis_tdata = pixel_buffer[0]; // Output is the bottom byte of pixel_buffer

    //////////////////////// Counters ////////////////////////

    // cnt_idx_in_burst
    logic [$clog2(PIXELS_PER_BURST)-1:0] cnt_idx_in_burst;
    always_ff @(posedge clk) begin
        if (reset) cnt_idx_in_burst <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_idx_in_burst <= 0;
        else if (s_axis_tvalid && s_axis_tready) cnt_idx_in_burst <= 0;
        else if (m_axis_tvalid && m_axis_tready) cnt_idx_in_burst <= cnt_idx_in_burst + 1;
    end

    // cnt_idx_in_frame
    logic [$clog2(IN_ROWS*IN_COLS)-1:0] cnt_idx_in_frame;
    always_ff @(posedge clk) begin
        if (reset) cnt_idx_in_frame <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_idx_in_frame <= 0;
        else if (m_axis_tvalid && m_axis_tready) cnt_idx_in_frame <= cnt_idx_in_frame + 1;
    end

    // cnt_col
    always_ff @(posedge clk) begin
        if (reset) cnt_col <= 0;
        else if (cnt_idx_in_frame==IN_ROWS*IN_COLS-1) cnt_col <= 0;
        else if (m_axis_tvalid && m_axis_tready) begin
            if (cnt_col==IN_COLS-1) cnt_col <= 0;
            else cnt_col <= cnt_col + 1;
        end
    end

    // cnt_row
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

    //////////////////////// For testbenching ////////////////////////

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
