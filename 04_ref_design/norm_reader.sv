module norm_reader #(
    parameter PIXEL_BIT_WIDTH   = 10,
    parameter FP_INT            = 5,
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
    always_ff @(posedge clk) begin
        if (reset || ap_start) begin
            ready_to_norm <= 1'b0;
        end
        else if (cf_ap_done) begin
            ready_to_norm <= 1'b1;
        end
    end

    logic [PIXEL_BIT_WIDTH-1:0] norm_numerator;
    assign norm_numerator = 16'b0000010000000000; // '1' in ap_fixed<FP_TOTAL, FP_INT>
    logic [PIXEL_BIT_WIDTH-1:0] norm_value;
    logic [PIXEL_BIT_WIDTH-1:0] norm_denominator_test;
    assign norm_denominator_test = 16'b0000001000000000;
    logic norm_value_ready;
    logic norm_value_overflow;

    qdiv #(.Q(FP_INT), .N(PIXEL_BIT_WIDTH)) 
    norm_coefficient_getter (
        .i_dividend(norm_numerator),
        // .i_divisor(norm_denominator),
        .i_divisor(norm_denominator_test),
        .i_start(cf_ap_done), // start the operation once upstream is done
        .i_clk(clk),
        .o_quotient_out(norm_value),
        .o_complete(norm_value_ready),
        .o_overflow(norm_value_overflow)
    );


    assign s_axis_tready = ready_to_norm && norm_value_ready && m_axis_tready;
    assign m_axis_tvalid = ready_to_norm && norm_value_ready && s_axis_tvalid;
    
    logic m_axis_tdata_overflow;
    qmult #(.Q(FP_INT), .N(PIXEL_BIT_WIDTH))
    normalized_value_getter (
        .i_multiplicand(s_axis_tdata),
        .i_multiplier(norm_value),
        .o_result(m_axis_tdata),
        .ovr(m_axis_tdata_overflow)
    );

    logic [2*PIXEL_BIT_WIDTH-1:0] mult_test;
    assign mult_test = norm_denominator * norm_denominator;

    logic [PIXEL_BIT_WIDTH-1:0] mult_test_concat;
    localparam pbwo2 = PIXEL_BIT_WIDTH/2;
    assign mult_test_concat[PIXEL_BIT_WIDTH-1 -: PIXEL_BIT_WIDTH/2] = mult_test[PIXEL_BIT_WIDTH-1 -: PIXEL_BIT_WIDTH/2];
    assign mult_test_concat[PIXEL_BIT_WIDTH/2 -1 -: PIXEL_BIT_WIDTH/2] = mult_test[PIXEL_BIT_WIDTH/2 -1 -: PIXEL_BIT_WIDTH/2];
    
    // assign m_axis_tdata = s_axis_tdata * norm_value; // TODO: why does above not work? <-- Prob not a problem because I'm passing-through the handshake signals. 

    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
