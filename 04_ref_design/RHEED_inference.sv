module RHEED_inference #(
    parameter IN_ROWS           = 20, // Must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 20,
    parameter OUT_COLS          = 20
)(
    input  logic clk, 
    input  logic reset,

    input  logic ap_start,

    // Crop-coordinates
    input logic [$clog2(IN_COLS)-1:0] crop_x0,
    input logic [$clog2(IN_ROWS)-1:0] crop_y0,

    // AXI Stream Slave Interface for incoming pixels
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [255:0]             s_axis_tdata, 

    // AXI Stream Master Interface outgoing, post-crop pixels
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [7:0] m_axis_tdata
);

    /////////////////////////////////// WIRE DECLARATIONS ///////////////////////////////////

    // Sequentializer output wires
    logic seq_s_axis_tready;
    logic seq_m_axis_tvalid;
    logic [7:0] seq_m_axis_tdata;

    logic [$clog2(IN_COLS)-1:0] seq_cnt_col;
    logic [$clog2(IN_ROWS)-1:0] seq_cnt_row;

    logic seq_ap_ready;
    logic seq_ap_idle;

    // Crop-Norm output wires
    logic cn_ap_done;
	logic cn_ap_ready;

	logic cn_s_axis_tready;
	logic cn_m_axis_tvalid;
	logic [7:0] cn_m_axis_tdata;

    /////////////////////////////////// LOGIC ///////////////////////////////////

    // Sequentializer
    assign s_axis_tready = seq_s_axis_tready;
    sequentializer_Mono8 #(
      .IN_ROWS(IN_ROWS),
      .IN_COLS(IN_COLS)
    )
    iSequentializer (
      .clk(clk), 
      .reset(reset),

	  .ap_start(ap_start),
	  .ap_ready(seq_ap_ready),
	  .ap_idle(seq_ap_idle),

	  .cn_ap_ready(cn_ap_ready),
	  
      .s_axis_tvalid(s_axis_tvalid),
      .s_axis_tready(seq_s_axis_tready),
      .s_axis_tdata(s_axis_tdata),

	  .m_axis_tvalid(seq_m_axis_tvalid),
	  .m_axis_tready(cn_s_axis_tready),
	  .m_axis_tdata(seq_m_axis_tdata),

	  .cnt_col(seq_cnt_col),
	  .cnt_row(seq_cnt_row)
    );

    // Crop-Norm
    assign m_axis_tvalid = cn_m_axis_tvalid;
    assign m_axis_tdata = cn_m_axis_tdata;
    crop_norm #(
      .IN_ROWS(IN_ROWS),
      .IN_COLS(IN_COLS), 
      .OUT_ROWS(OUT_ROWS),
      .OUT_COLS(OUT_COLS)
    ) 
    iCropNorm (
	  .clk(clk), 
	  .reset(reset),

	  .seq_ap_idle(seq_ap_idle),

	  .ap_start(ap_start),
	  .ap_done(cn_ap_done),
	  .ap_ready(cn_ap_ready),
	  
	  .s_axis_tvalid(seq_m_axis_tvalid),
	  .s_axis_tready(cn_s_axis_tready),
	  .s_axis_tdata(seq_m_axis_tdata),

	  .crop_x0(crop_x0),
	  .crop_y0(crop_y0),
	  .cnt_col(seq_cnt_col),
	  .cnt_row(seq_cnt_row),

	  .m_axis_tvalid(cn_m_axis_tvalid),
	  .m_axis_tready(m_axis_tready),
	  .m_axis_tdata(cn_m_axis_tdata)
	);

    /////////////////////////////////// TESTBENCHING ///////////////////////////////////
    
    // synthesis translate_off


    // synthesis translate_on


endmodule