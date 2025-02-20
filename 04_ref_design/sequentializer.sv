module sequentializer #(
    parameter PIXEL_BIT_WIDTH = 16,
    parameter PIXELS_PER_BURST = 16,
    parameter USER_WIDTH = 4,
    parameter IN_ROWS = 100,
    parameter IN_COLS = 160,
    parameter OUT_ROWS = 48,
    parameter OUT_COLS = 48,
    parameter IMG_ROW_BITWIDTH = 10,
    parameter IMG_COL_BITWIDTH = 10)

    (clk, srst, s_axis_resetn,  // TODO: Figure out when/how the s_axis_restn is used
    s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tuser,
    crop_x0, crop_y0,
    m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tuser);

    input  logic clk; 
    input  logic srst; // Synchronous reset

    input  logic s_axis_resetn; // AXI Stream interface reset

    // AXI Stream Slave Interface
    input  logic s_axis_tvalid;
    output logic s_axis_tready;
    input  logic [PIXEL_BIT_WIDTH*PIXELS_PER_BURST-1:0] s_axis_tdata;
    input  logic [USER_WIDTH-1:0] s_axis_tuser;

    // Crop-coordinates
    input  logic [IMG_COL_BITWIDTH-1:0] crop_x0;
    input  logic [IMG_ROW_BITWIDTH-1:0] crop_y0;
    
    // AXIS Stream Master Interface
    output logic m_axis_tvalid;
    input  logic m_axis_tready;
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata;
    output logic [USER_WIDTH-1:0] m_axis_tuser;

    // First, we want to keep track of the indeces of the incoming pixels
    logic idx_start, idx_end; // The indeces of the first and last pixel in the current pixel-burst
    always_ff @(posedge clk) begin
        if (srst) begin
            idx_start <= 0;
            idx_end <= PIXELS_PER_BURST - 1;
        end
        else if (s_axis_tvalid && s_axis_tready) begin
            idx_start <= idx_start + PIXELS_PER_BURST;
            idx_end <= idx_end + PIXELS_PER_BURST;
        end  
    end

    assign s_axis_tready = 1'b1;
    assign m_axis_tdata = s_axis_tdata;
    assign m_axis_tvalid = 1'b1;
    assign m_axis_tuser = s_axis_tuser;

endmodule