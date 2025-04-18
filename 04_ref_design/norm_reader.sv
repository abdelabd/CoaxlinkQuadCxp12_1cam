// Author: Abdelrahman Elabd
// Lab: ACME Lab, U. Washington ECE
// Date: 04/17/2025
// Module purpose: This module normalizes each pixel of an incoming (post-crop) streamed image by the specified 'norm_denominator'.
// It then passes those pixels on to the downstream module. 

module norm_reader #(
    parameter OUT_ROWS          = 10,
    parameter OUT_COLS          = 10
)(
    input  logic                     clk,
    input  logic                     srst,
    input  logic                     s_axis_resetn,

    // ap control signals
    input logic seq_ap_idle,
    input logic cf_ap_done,

    input logic ap_start, 
    output logic ap_done,
    output logic ap_ready, 

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [7:0] s_axis_tdata,

    // Normalization value
    input logic [7:0] norm_denominator,
    input logic norm_denominator_tvalid,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [7:0] m_axis_tdata

);
    
    
    /////////////////////////////////// WIRE DECLARATIONS ///////////////////////////////////

    logic reset;

    logic ready_to_norm; // Must wait for upstream crop_filter to finish cropping an entire-image; otherwise, max_value might be incorrect.

    // Output of LUT: stores value of normalization coefficient 
    logic [23:0] norm_coef; 
    logic norm_coef_tvalid;

    // FIFO handshake wires
    logic wren_to_fifo, fifo_s_axis_tready;
    logic [7:0] data_to_fifo;

    logic [$clog2(OUT_ROWS*OUT_COLS)-1:0] cnt_fifo_reads; // Allows us to determine when we're done normalizing the current image

    enum logic {IDLE, NORMALIZING} ps, ns; // For FSM

    /////////////////////////////////// LOGIC ///////////////////////////////////

    // Combine both reset signals into one for simplicity
    assign reset = srst || (!s_axis_resetn);

    // Drive ready_to_norm: only true if the upstream crop-filter is done cropping.
    always_ff @(posedge clk) begin
        if (reset || ap_start) begin 
            ready_to_norm <= 1'b0;
        end
        else if (cf_ap_done) begin
            ready_to_norm <= 1'b1;
        end
    end 

    // Pass through s_axis_tready if ready_to_norm
    assign s_axis_tready = fifo_s_axis_tready && ready_to_norm;

    // Pass through wren_to_fifo if ready_to_norm
    assign wren_to_fifo = s_axis_tvalid && ready_to_norm;

    // norm_coef = 1/norm_denominator. LUT for efficiency
    udivision_LUT_8bit_int_to_24bit_frac norm_coef_getter (.clk(clk), 
                                                            .number_in(norm_denominator), .number_in_tvalid(norm_denominator_tvalid),
                                                            .reciprocal(norm_coef), .reciprocal_tvalid(norm_coef_tvalid));

    // data_to_fifo = s_axis_tdata * norm_coef 
    umult_int_frac #(.INT_WIDTH(8), .FRAC_WIDTH(24), .MODULE_OUT_WIDTH(8)) 
        normed_pixel_getter (.pixel(s_axis_tdata), .norm_factor(norm_coef), .module_out(data_to_fifo));

    // Write to FIFO 
    axis_fifo nr_axis_fifo (.s_aclk(clk),
                            .s_aresetn(~reset),
                            .s_axis_tvalid(wren_to_fifo),
                            .s_axis_tready(fifo_s_axis_tready),
                            .s_axis_tdata(data_to_fifo),
                            .m_axis_tvalid(m_axis_tvalid),
                            .m_axis_tready(m_axis_tready),
                            .m_axis_tdata(m_axis_tdata)
                            );

    // Drive cnt_fifo_reads
    always_ff @(posedge clk) begin
        if (reset || ap_start) cnt_fifo_reads <= 0;
        else if (cnt_fifo_reads == OUT_ROWS*OUT_COLS) cnt_fifo_reads <= 0;
        else if (m_axis_tvalid && m_axis_tready) cnt_fifo_reads <= cnt_fifo_reads + 1;
    end

    // Assert ap_done if downstream module has read out a cropped-images worth of pixels
    assign ap_done = (cnt_fifo_reads==OUT_ROWS*OUT_COLS);

    // FSM: drive ap_ready
    always_ff @(posedge clk) begin
        if (reset) ps <= IDLE;
        else ps <= ns;
    end
    always_comb begin
        case(ps)
            IDLE: begin
                ap_ready = 1'b1;
                if (ap_start && seq_ap_idle) ns = NORMALIZING;
                else ns = IDLE;
            end
            NORMALIZING: begin
                ap_ready = 1'b0;
                if (cnt_fifo_reads == OUT_ROWS*OUT_COLS) ns = IDLE;
                else ns = NORMALIZING;
            end
        endcase
    end
    
    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
