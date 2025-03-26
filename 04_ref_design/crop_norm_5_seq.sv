module crop_norm_5_seq #(
    parameter PIXEL_BIT_WIDTH   = 10,
    parameter IN_ROWS           = 20, // must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 10,
    parameter OUT_COLS          = 10
)(
    input  logic                     clk,
    input  logic                     srst,
    input  logic                     s_axis_resetn,

    // ap control signals
    input logic seq_ap_done,
    input logic seq_ap_idle,

    input logic ap_start,  
    output logic ap_done,
    output logic ap_ready,

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH-1:0] s_axis_tdata,

    // Crop-coordinates -- 5 pairs
    input logic [$clog2(IN_COLS)-1:0] crop_x0 [4:0],
    input logic [$clog2(IN_ROWS)-1:0] crop_y0 [4:0],
    
    // Coordinate-counters 
    input logic [$clog2(IN_COLS)-1:0] cnt_col,
    input logic [$clog2(IN_ROWS)-1:0] cnt_row,  

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata
);

    

    // Each instance of the crop-norm has same inputs, besides the crop-coordinates
    // However, each has a unique output
    // Only one drives the top-level downstream handshake at a time, 
    // The top-level ap_done, ap_ready and s_axis_tready is determined through a combination of all 5 crop-modules 

    //////////////////////// Internal signals ////////////////////////

    logic reset;
    assign reset = srst || (!s_axis_resetn);

    logic [4:0] ap_done_internal;
    logic [4:0] ap_ready_internal;
    logic [4:0] s_axis_tready_internal;
    logic [4:0] m_axis_tvalid_internal;
    logic [4:0] m_axis_tready_internal;
    logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata_internal [4:0];

    //////////////////////// 5 crop-norm instantiation ////////////////////////

    genvar i;
    generate
        for (i=0; i<5; i++) begin : N_crop_norms
            crop_norm #(.PIXEL_BIT_WIDTH(PIXEL_BIT_WIDTH),
                        .IN_ROWS(IN_ROWS),
                        .IN_COLS(IN_COLS),
                        .OUT_ROWS(OUT_ROWS),
                        .OUT_COLS(OUT_COLS)) 
            crop_norm_i (.clk(clk), .srst(srst), .s_axis_resetn(s_axis_resetn),
                         .seq_ap_done(seq_ap_done), .seq_ap_idle(seq_ap_idle),
                         .ap_start(ap_start), .ap_done(ap_done_internal[i]), .ap_ready(ap_ready_internal[i]),
                         .s_axis_tvalid(s_axis_tvalid), .s_axis_tready(s_axis_tready_internal[i]), .s_axis_tdata(s_axis_tdata),
                         .crop_x0(crop_x0[i]), .crop_y0(crop_y0[i]), .cnt_col(cnt_col), .cnt_row(cnt_row),
                         .m_axis_tvalid(m_axis_tvalid_internal[i]), .m_axis_tready(m_axis_tready_internal[i]), .m_axis_tdata(m_axis_tdata_internal[i])
                         );
        end
    endgenerate

    //////////////////////// FSM: Drive downstream handshake ////////////////////////
    enum logic [2:0] {CP0, CP1, CP2, CP3, CP4, DONE} ps, ns;
    always_ff @(posedge clk) begin
        if (reset) ps <= CP0;
        else ps <= ns;
    end

    
    always_comb begin
        case (ps)
            CP0: begin
                m_axis_tvalid = m_axis_tvalid_internal[0];
                m_axis_tready_internal = 5'b00001;
                m_axis_tdata = m_axis_tdata_internal[0];
                ap_done = 1'b0;
                if (ap_ready_internal[0]) ns = CP1;
                else ns = CP0;
            end

            CP1: begin
                m_axis_tvalid = m_axis_tvalid_internal[1];
                m_axis_tready_internal = 5'b00010;
                m_axis_tdata = m_axis_tdata_internal[1];
                ap_done = 1'b0;
                if (ap_ready_internal[1]) ns = CP2;
                else ns = CP1;
            end

            CP2: begin
                m_axis_tvalid = m_axis_tvalid_internal[2];
                m_axis_tready_internal = 5'b00100;
                m_axis_tdata = m_axis_tdata_internal[2];
                ap_done = 1'b0;
                if (ap_ready_internal[2]) ns = CP3;
                else ns = CP2;
            end

            CP3: begin
                m_axis_tvalid = m_axis_tvalid_internal[3];
                m_axis_tready_internal = 5'b01000;
                m_axis_tdata = m_axis_tdata_internal[3];
                ap_done = 1'b0;
                if (ap_ready_internal[3]) ns = CP4;
                else ns = CP3;
            end

            CP4: begin
                m_axis_tvalid = m_axis_tvalid_internal[4];
                m_axis_tready_internal = 5'b10000;
                m_axis_tdata = m_axis_tdata_internal[4];
                ap_done = 1'b0;
                if (ap_ready_internal[4]) ns = DONE;
                else ns = CP4;
            end

            DONE: begin
                m_axis_tvalid = 1'b0;
                m_axis_tready_internal = 5'b00000;
                m_axis_tdata = {PIXEL_BIT_WIDTH{1'b0}};
                ap_done = 1'b1;
                ns = CP0;
            end
        endcase
    end
    
    //////////////////////// top-level ap_ready ////////////////////////
    assign ap_ready = ap_ready_internal[0] && ap_ready_internal[1] && ap_ready_internal[2] && ap_ready_internal[3] && ap_ready_internal[4];

    //////////////////////// top-level s_axis_tready ////////////////////////
    assign s_axis_tready = s_axis_tready_internal[0] && s_axis_tready_internal[1] && s_axis_tready_internal[2] && s_axis_tready_internal[3] && s_axis_tready_internal[4];

endmodule