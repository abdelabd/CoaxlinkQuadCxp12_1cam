module sequentializer #(
    parameter PIXEL_BIT_WIDTH   = 16,
    parameter PIXELS_PER_BURST  = 16,
    parameter USER_WIDTH        = 4,
    parameter IN_ROWS           = 100, // must be multiple of PIXELS_PER_BURST
    parameter IN_COLS           = 160,
    parameter OUT_ROWS          = 48,
    parameter OUT_COLS          = 48
)(
    input  logic clk, 
    input  logic srst,           // Synchronous reset
    input  logic s_axis_resetn,  // AXI Stream interface reset (active-low)

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH*PIXELS_PER_BURST-1:0] s_axis_tdata,
    input  logic [USER_WIDTH-1:0]    s_axis_tuser,

    // Crop coordinates
    input  logic [$clog2(IN_COLS)-1:0] crop_x0,
    input  logic [$clog2(IN_ROWS)-1:0] crop_y0,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata
);

    //////////////////////// Store data-burst ////////////////////////
    logic [PIXEL_BIT_WIDTH-1:0] pixel_buffer [0:PIXELS_PER_BURST-1];
    generate
        for (genvar i = 0; i < PIXELS_PER_BURST; i++) begin : burst_store
            always_ff @(posedge clk) begin
            if ((!s_axis_resetn)||srst) begin
                pixel_buffer[i] <= '0;
            end
            else if (s_axis_tvalid && s_axis_tready) begin
                pixel_buffer[i] <= s_axis_tdata[(i+1)*PIXEL_BIT_WIDTH-1 : i*PIXEL_BIT_WIDTH];
            end
            end
        end
    endgenerate


    //////////////////////// Finite State machine ////////////////////////
    assign s_axis_tready = 1'b1; //TODO: Comment this out

    enum logic {LOAD_IN, STREAM_OUT} ps, ns;
    always_ff @(posedge clk) begin
        if ((!s_axis_resetn)||srst||s_axis_tuser[0]) ps <= LOAD_IN; // If reset or frame-start
        else ps <= ns;
    end

    always_comb begin

        case (ps)

            LOAD_IN: begin
                // s_axis_tready = 1'b1;
                m_axis_tvalid = 1'b0;
                if (s_axis_tvalid && s_axis_tready) ns = STREAM_OUT;
                else ns = LOAD_IN;
            end

            STREAM_OUT: begin
                // s_axis_tready = 1'b0;
                m_axis_tvalid = 1'b1;
                if (m_axis_tready && m_axis_tvalid) begin
                    if (cnt_idx_in_burst == PIXELS_PER_BURST-1) ns = LOAD_IN;
                    else ns = STREAM_OUT;
                end
                else ns = STREAM_OUT;

            end
        endcase 

    end

    //////////////////////// Track indeces ////////////////////////
    logic [$clog2(PIXELS_PER_BURST)-1:0] cnt_idx_in_burst;
    logic [$clog2(IN_COLS)-1:0] cnt_col;
    logic [$clog2(IN_ROWS)-1:0] cnt_row;
    logic [$clog2(IN_COLS*IN_ROWS)-1:0] cnt_idx_in_frame;
    assign cnt_idx_in_frame = cnt_row*IN_COLS + cnt_col; // for testbenching and debugging

    always_ff @(posedge clk) begin
        if ((!s_axis_resetn)||srst||s_axis_tuser[0]) begin 
            cnt_idx_in_burst <= 0;
            cnt_col <= 0;
            cnt_row <= 0;
        end
        else if (s_axis_tvalid && s_axis_tready) begin

            if (cnt_idx_in_burst == PIXELS_PER_BURST-1) cnt_idx_in_burst <= 0;
            else cnt_idx_in_burst <= cnt_idx_in_burst + 1;

            if (cnt_col==IN_COLS-1) cnt_col <= 0;
            else cnt_col <= cnt_col + 1;

            if (s_axis_tuser[2]) cnt_row <= cnt_row + 1; //i.e. if line end 

        end
    end

endmodule
