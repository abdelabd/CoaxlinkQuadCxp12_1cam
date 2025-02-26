module crop_filter #(
    parameter PIXEL_BIT_WIDTH   = 10,
    parameter IN_ROWS           = 20, // must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 10,
    parameter OUT_COLS          = 10
)(
    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH-1:0] s_axis_tdata,

    // Crop-coordinates
    input logic [$clog2(IN_COLS)-1:0] crop_x0,
    input logic [$clog2(IN_ROWS)-1:0] crop_y0,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata,
    input logic [$clog2(IN_COLS)-1:0] cnt_col,
    input logic [$clog2(IN_ROWS)-1:0] cnt_row
);

    //////////////////////// Crop-filter logic ////////////////////////
    always_comb begin
        s_axis_tready = m_axis_tready;

        if((cnt_row >= crop_y0) && (cnt_row < crop_y0+OUT_ROWS) && (cnt_col >= crop_x0) && (cnt_col < crop_x0+OUT_COLS)) begin 
            m_axis_tvalid = 1'b1 && s_axis_tvalid;
            m_axis_tdata = s_axis_tdata;
        end
        else begin 
            m_axis_tvalid = 1'b0;
            m_axis_tdata = 0;
        end
        
    end

    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
