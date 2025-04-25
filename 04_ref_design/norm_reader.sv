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
    input  logic                     reset,

    // ap control signals
    input logic seq_ap_idle,
    input logic cf_ap_done,
    input logic all_crop_norm_ap_ready,

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

    // Output of LUT: stores value of normalization coefficient 
    logic [23:0] norm_coef; 
    logic norm_coef_tvalid;

    // FIFO handshake wires
    logic wren_to_fifo, fifo_s_axis_tready;
    logic [7:0] data_to_fifo;

    logic [$clog2(OUT_ROWS*OUT_COLS)-1:0] cnt_fifo_reads; // Allows us to determine when we're done normalizing the current image

    enum logic {IDLE, NORMALIZING} ps, ns; // For FSM

    /////////////////////////////////// LOGIC ///////////////////////////////////

    // Pass through s_axis_tready if norm_coef_tvalid
    assign s_axis_tready = fifo_s_axis_tready && norm_coef_tvalid;

    // norm_coef = 1/norm_denominator. LUT for efficiency
    udivision_LUT_8bit_int_to_24bit_frac norm_coef_getter (.clk(clk), 
                                                            .number_in(norm_denominator), .number_in_tvalid(norm_denominator_tvalid),
                                                            .reciprocal(norm_coef), .reciprocal_tvalid(norm_coef_tvalid));

    // data_to_fifo = s_axis_tdata * norm_coef 
    umult_int_frac #(.INT_WIDTH(8), .FRAC_WIDTH(24), .MODULE_OUT_WIDTH(8)) 
        normed_pixel_getter (.clk(clk),
                            .pixel(s_axis_tdata), .pixel_tvalid(s_axis_tvalid),
                            .norm_factor(norm_coef), .norm_factor_tvalid(norm_coef_tvalid),
                            .module_out(data_to_fifo), .module_out_tvalid(wren_to_fifo));

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
                if (ap_start && seq_ap_idle && all_crop_norm_ap_ready) ns = NORMALIZING;
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
