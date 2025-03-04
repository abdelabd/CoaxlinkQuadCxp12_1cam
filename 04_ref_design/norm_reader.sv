module norm_reader #(
    parameter PIXEL_BIT_WIDTH   = 10,
    parameter USER_WIDTH        = 2
)(
    input  logic                     clk,
    input  logic                     srst,
    input  logic                     s_axis_resetn,

    // ap control signals
    
    input logic cf_ap_done,
    input logic ap_start, 
    output logic ap_done,
    // output logic ap_ready, // TODO
    // output logic ap_idle, // TODO

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH-1:0] s_axis_tdata,

    // Normalization value
    input logic [PIXEL_BIT_WIDTH-1:0] norm_denominator,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata

);

    // Combine both reset signals into one for simplicity
    logic reset;
    assign reset = srst || (!s_axis_resetn);

    //////////////////////// ready_to_norm: only true if the upstream crop-filter is done with its task ////////////////////////
    logic ready_to_norm;
    logic [63:0] norm_coef;
    always_ff @(posedge clk) begin
        if (reset || ap_start) begin
            ready_to_norm <= 1'b0;
            norm_coef <= 0;
        end
        else if (cf_ap_done) begin
            ready_to_norm <= 1'b1;
            // norm_coef <= 1/norm_denominator;
            norm_coef <= 1;  // For testing at first
        end
    end

    assign s_axis_tready = ready_to_norm && m_axis_tready;
    assign m_axis_tvalid = ready_to_norm && s_axis_tvalid;
    assign m_axis_tdata = s_axis_tdata * norm_coef; // TODO: why does above not work? <-- Prob not a problem because I'm passing-through the handshake signals. 

    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
