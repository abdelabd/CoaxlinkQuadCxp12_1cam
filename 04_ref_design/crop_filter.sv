module crop_filter #(
    parameter PIXEL_BIT_WIDTH   = 10,
    parameter USER_WIDTH        = 2,
    parameter IN_ROWS           = 20, // must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 10,
    parameter OUT_COLS          = 10
)(
    input  logic                     clk,
    input  logic                     srst,
    input  logic                     s_axis_resetn,

    // ap control signals
    input logic ap_start, 
    output logic ap_done,
    // output logic ap_ready, // TODO
    // output logic ap_idle, // TODO

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH-1:0] s_axis_tdata,
    input  logic [USER_WIDTH-1:0]    s_axis_tuser,

    // Crop-coordinates
    input logic [$clog2(IN_COLS)-1:0] crop_x0,
    input logic [$clog2(IN_ROWS)-1:0] crop_y0,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata,
    output logic [USER_WIDTH-1:0] m_axis_tuser,
    input logic [$clog2(IN_COLS)-1:0] cnt_col,
    input logic [$clog2(IN_ROWS)-1:0] cnt_row

);

    // Combine both reset signals into one for simplicity
    logic reset;
    assign reset = srst || (!s_axis_resetn);

    // 's_' = slave
    // 'int' = intermediate
    // 'm_' = master

    //////////////////////// intmd_axis_tuser ////////////////////////
    logic [USER_WIDTH-1:0] intmd_axis_tuser;
    assign intmd_axis_tuser = s_axis_tuser;


    //////////////////////// intmd_axis_tvalid, intmd_axis_tdata ////////////////////////
    logic intmd_axis_tvalid;
    logic [PIXEL_BIT_WIDTH-1:0] intmd_axis_tdata;    

    // Turn them on if they pass crop_filter
    always_comb begin
        s_axis_tready = intmd_axis_tready;

        if((cnt_row >= crop_y0) && (cnt_row < crop_y0+OUT_ROWS) && (cnt_col >= crop_x0) && (cnt_col < crop_x0+OUT_COLS)) begin 
            intmd_axis_tvalid = 1'b1 && s_axis_tvalid;
            intmd_axis_tdata = s_axis_tdata;
        end
        else begin 
            intmd_axis_tvalid = 1'b0;
            intmd_axis_tdata = 0;
        end
        
    end

    //////////////////////// intmd_axis_tready ////////////////////////

    logic intmd_axis_tready; // Depends on the downstream FIFO

    //////////////////////// FIFO ////////////////////////

    axis_fifo cf_axis_fifo (.s_aclk(clk),
                            .s_aresetn(~reset),
                            .s_axis_tvalid(intmd_axis_tvalid),
                            .s_axis_tready(intmd_axis_tready),
                            .s_axis_tdata(intmd_axis_tdata),
                            .s_axis_tuser(intmd_axis_tuser),
                            .m_axis_tvalid(m_axis_tvalid),
                            .m_axis_tready(m_axis_tready),
                            .m_axis_tdata(m_axis_tdata),
                            .m_axis_tuser(m_axis_tuser)
                            );

    //////////////////////// ap_done signal ////////////////////////

    logic [$clog2(OUT_ROWS*OUT_COLS)-1:0] cnt_fifo_writes;
    always_ff @(posedge clk) begin

        if (reset) cnt_fifo_writes <= 0;
        else if (cnt_fifo_writes == OUT_ROWS*OUT_COLS-1) cnt_fifo_writes <= 0;
        else if (intmd_axis_tready && intmd_axis_tvalid) cnt_fifo_writes <= cnt_fifo_writes + 1;

    end

    always_ff @(posedge clk) begin
        if (reset || cnt_fifo_writes==0) ap_done <= 1'b0;
        else if (cnt_fifo_writes==OUT_ROWS*OUT_COLS-1) ap_done <= 1'b1;
    end

    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
