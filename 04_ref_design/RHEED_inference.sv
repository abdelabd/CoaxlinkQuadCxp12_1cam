module RHEED_inference #(
    parameter IN_ROWS           = 20, // Must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 20,
    parameter OUT_COLS          = 20,
    parameter NUM_CROPS         = 3
)(
    input  logic clk, 
    input  logic reset,

    input  logic ap_start,

    // Crop-coordinates
    input logic [$clog2(IN_COLS)-1:0] crop_x0 [NUM_CROPS-1:0],
    input logic [$clog2(IN_ROWS)-1:0] crop_y0 [NUM_CROPS-1:0],

    // AXI Stream Slave Interface for incoming pixels
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [255:0]             s_axis_tdata, 

    // AXI Stream Master Interface outgoing, post-crop pixels
    output logic [NUM_CROPS-1:0]            m_axis_tvalid,
    input  logic [NUM_CROPS-1:0]            m_axis_tready,
    output logic [7:0]      m_axis_tdata [NUM_CROPS-1:0]
);

    /////////////////////////////////// WIRE DECLARATIONS ///////////////////////////////////

    // Sequentializer output wires
    logic seq_m_axis_tvalid;
    logic [7:0] seq_m_axis_tdata;

    logic [$clog2(IN_COLS)-1:0] seq_cnt_col;
    logic [$clog2(IN_ROWS)-1:0] seq_cnt_row;

    logic seq_ap_ready;
    logic seq_ap_idle;

    // Crop-Norm output wires
    logic [NUM_CROPS-1:0] cn_ap_done_all;
    logic cn_ap_done;
	logic [NUM_CROPS-1:0] cn_ap_ready_all;
    logic cn_ap_ready;


	logic [NUM_CROPS-1:0] cn_s_axis_tready_all;
    logic cn_s_axis_tready;
	logic cn_m_axis_tvalid;
	logic [7:0] cn_m_axis_tdata;

    /////////////////////////////////// LOGIC ///////////////////////////////////

    // Sequentializer
    assign cn_ap_done = cn_ap_done_all[0] && cn_ap_done_all[1] && cn_ap_done_all[2] && cn_ap_done_all[3] && cn_ap_done_all[4];
    assign cn_ap_ready = cn_ap_ready_all[0] && cn_ap_ready_all[1] && cn_ap_ready_all[2] && cn_ap_ready_all[3] && cn_ap_ready_all[4];
    assign cn_s_axis_tready = cn_s_axis_tready_all[0] && cn_s_axis_tready_all[1] && cn_s_axis_tready_all[2] && cn_s_axis_tready_all[3] && cn_s_axis_tready_all[4];
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
      .s_axis_tready(s_axis_tready),
      .s_axis_tdata(s_axis_tdata),

	  .m_axis_tvalid(seq_m_axis_tvalid),
	  .m_axis_tready(cn_s_axis_tready),
	  .m_axis_tdata(seq_m_axis_tdata),

	  .cnt_col(seq_cnt_col),
	  .cnt_row(seq_cnt_row)
    );

    // Crop-Norm
    genvar crop_idx;
    generate 
        for (crop_idx=0; crop_idx < NUM_CROPS; crop_idx ++) begin
            crop_norm #(
                .IN_ROWS(IN_ROWS),
                .IN_COLS(IN_COLS), 
                .OUT_ROWS(OUT_ROWS),
                .OUT_COLS(OUT_COLS)
                ) 
            CropNorm_i (
                .clk(clk), 
                .reset(reset),

                .seq_ap_idle(seq_ap_idle),
                .all_crop_norm_ap_ready(cn_ap_ready),

                .ap_start(ap_start),
                .ap_done(cn_ap_done_all[crop_idx]),
                .ap_ready(cn_ap_ready_all[crop_idx]),
                
                .s_axis_tvalid(seq_m_axis_tvalid),
                .s_axis_tready(cn_s_axis_tready_all[crop_idx]),
                .s_axis_tdata(seq_m_axis_tdata),

                .crop_x0(crop_x0[crop_idx]),
                .crop_y0(crop_y0[crop_idx]),
                .cnt_col(seq_cnt_col),
                .cnt_row(seq_cnt_row),

                .m_axis_tvalid(m_axis_tvalid[crop_idx]),
                .m_axis_tready(m_axis_tready[crop_idx]),
                .m_axis_tdata(m_axis_tdata[crop_idx])
                );
        end
    endgenerate
    

    /////////////////////////////////// TESTBENCHING ///////////////////////////////////
    
    // synthesis translate_off


    // synthesis translate_on


endmodule