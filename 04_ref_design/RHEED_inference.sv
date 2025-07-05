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
    output logic            m_axis_tvalid,
    input  logic            m_axis_tready,
    output logic [159:0]    m_axis_tdata [NUM_CROPS-1:0],

    // crop-index 
    output logic [$clog2(NUM_CROPS)-1:0] crop_idx_read
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

    logic [NUM_CROPS-1:0] cn_m_axis_tvalid_all;
    logic [7:0] cn_m_axis_tdata_all [NUM_CROPS-1:0];

    logic [NUM_CROPS-1:0] cn_max_value_tvalid_all;

    // Crop-Sequentializer output wires
    logic cs_m_axis_tvalid;
    logic [NUM_CROPS-1:0] cs_s_axis_tready_all;
    logic [7:0] cs_m_axis_tdata;

    // CNN output wires
    logic [159:0] CNN_m_axis_tdata;
    logic CNN_s_axis_tready, CNN_m_axis_tvalid;
    logic CNN_ap_ready, CNN_ap_done, CNN_ap_idle;

    // CNN input wires
    logic [15:0] reset_sync; // Long reset for CNN
    logic ap_rst_for_CNN;
    logic ap_start_for_CNN;
    logic m_axis_tready_for_CNN;
    
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

                .m_axis_tvalid(cn_m_axis_tvalid_all[crop_idx]),
                .m_axis_tready(cs_s_axis_tready_all[crop_idx]),
                .m_axis_tdata(cn_m_axis_tdata_all[crop_idx]),

                .max_value_tvalid(cn_max_value_tvalid_all[crop_idx])
            );
        end
    endgenerate

    // Crop-Sequentializer
    crop_sequentializer#(
            .IN_ROWS(IN_ROWS),
            .IN_COLS(IN_COLS), 
            .OUT_ROWS(OUT_ROWS),
            .OUT_COLS(OUT_COLS),
            .NUM_CROPS(NUM_CROPS)
    ) 
    iCropSeq (
        .clk(clk),
        .reset(reset),

        .s_axis_tvalid(cn_m_axis_tvalid_all),
        .s_axis_tready(cs_s_axis_tready_all),
        .s_axis_tdata(cn_m_axis_tdata_all),

        .m_axis_tvalid(cs_m_axis_tvalid),
        .m_axis_tready(CNN_s_axis_tready),
        .m_axis_tdata(cs_m_axis_tdata),

        .crop_idx(crop_idx_read)
    );

    // CNN
    myproject iCNN (
        .q_conv2d_batchnorm_input_TDATA(cs_m_axis_tdata),
        .layer21_out_TDATA(CNN_m_axis_tdata),

        .ap_clk(clk),
        .ap_rst_n(ap_rst_n_sync),

        .q_conv2d_batchnorm_input_TVALID(cs_m_axis_tvalid),
        .q_conv2d_batchnorm_input_TREADY(CNN_s_axis_tready),

        .ap_start(ap_start_for_CNN),

        .layer21_out_TVALID(CNN_m_axis_tvalid),
        .layer21_out_TREADY(m_axis_tready_for_CNN),

        .ap_done(CNN_ap_done),
        .ap_ready(CNN_ap_ready),
        .ap_idle(CNN_ap_idle)
    );
    assign m_axis_tready_for_CNN = 1'b1;

    // Drive long reset for CNN
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            reset_sync <= 16'hFFFF; 
        else
            reset_sync <= {reset_sync[14:0], 1'b0};
    end
    assign ap_rst_n_sync = ~reset_sync[15]; 

    // Drive ap_start for CNN
    logic CNN_ready_state;
    always_ff @(posedge clk) begin
        if (reset || CNN_ap_ready) CNN_ready_state <= 1'b1;
        else if (ap_start_for_CNN) CNN_ready_state <= 1'b0;
    end

    always_ff @(posedge clk) begin
        if (reset || ap_start_for_CNN) ap_start_for_CNN <= 1'b0;
        else if (cn_max_value_tvalid_all[crop_idx_read] && CNN_ready_state) ap_start_for_CNN <= 1'b1;
    end

    // Output
    // m_axis_tdata
    always_ff @(posedge clk) begin
        if (CNN_m_axis_tvalid && m_axis_tready_for_CNN) m_axis_tdata[crop_idx_read] <= CNN_m_axis_tdata;
    end

    // m_axis_tvalid
    always_ff @(posedge clk) begin
        if (reset) m_axis_tvalid <= 1'b0;
        else if (crop_idx_read == NUM_CROPS-1) begin
            if (CNN_m_axis_tvalid && m_axis_tready_for_CNN) m_axis_tvalid <= 1'b1;
        end
        else if (m_axis_tvalid && m_axis_tready) m_axis_tvalid <= 1'b0;
    end
    /////////////////////////////////// TESTBENCHING ///////////////////////////////////
    
    // synthesis translate_off


    // synthesis translate_on


endmodule