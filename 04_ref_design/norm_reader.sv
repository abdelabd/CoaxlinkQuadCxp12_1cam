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

    logic [PIXEL_BIT_WIDTH-1:0] norm_coef;
    division_LUT_ap_fixed_16_10_s16 norm_coef_getter (.number_in(norm_denominator), .reciprocal(norm_coef));

    assign s_axis_tready = ready_to_norm && m_axis_tready;
    assign m_axis_tvalid = ready_to_norm && s_axis_tvalid;

    logic m_axis_tdata_ovr;
    qmult #(.Q(FP_INT), .N(PIXEL_BIT_WIDTH)) m_axis_tdata_getter
        (.i_multiplicand(s_axis_tdata), 
        .i_multiplier(norm_coef), 
        .o_result(m_axis_tdata), 
        .ovr(m_axis_tdata_ovr));

    logic [PIXEL_BIT_WIDTH-1:0] den_test, out_test;
    division_LUT_ap_fixed_16_10_s16 div_test (.number_in(den_test), .reciprocal(out_test));

    int cc_counter;
    always_ff @(posedge clk) begin
        if (reset) cc_counter <= 0;
        else cc_counter <= cc_counter + 1;
    end
    always_ff @(posedge clk) begin
        if (cc_counter < 100) den_test <= 16'b0000000010100000; 
        else if (cc_counter < 200) den_test <= 16'b0000000011100000;
        else if (cc_counter < 300) den_test <= 16'b0000000101100000;
        else if (cc_counter < 400) den_test <= 16'b0000001000100000;
        else if (cc_counter < 500) den_test <= 16'b0000001111100000;
        else if (cc_counter < 600) den_test <= 16'b0000010100100000;
        else if (cc_counter < 700) den_test <= 16'b0000010101100000;
        else if (cc_counter < 800) den_test <= 16'b0000010111100000;
        else if (cc_counter < 900) den_test <= 16'b0000011110100000;
        else den_test <= 16'b0100111001100000;
    end

    logic [PIXEL_BIT_WIDTH-1:0] a_test, b_test, c_test;
    logic qmult_test_over;
    qmult #(.Q(FP_INT), .N(PIXEL_BIT_WIDTH)) qmult_test 
    (.i_multiplicand(a_test),
    .i_multiplier(b_test),
    .o_result(c_test),
    .ovr(qmult_test_over));
    always_ff @(posedge clk) begin
        if (cc_counter < 100) begin
            a_test <= 16'b0000000010100000;
            b_test <= 16'b0000000001000000;
        end
        else if (cc_counter < 200) begin
            a_test <= 16'b0000000011100000;
            b_test <= 16'b0000100000000000;
        end
        else if (cc_counter < 300) begin
            a_test <= 16'b0000000101100000;
            b_test <= 16'b0000011101000000;
        end
        else if (cc_counter < 400) begin
            a_test <= 16'b0000001000100000;
            b_test <= 16'b0000010110000000;
        end
        else if (cc_counter < 500) begin
            a_test <= 16'b0000001111100000;
            b_test <= 16'b0000010100000000;
        end
        else begin
            a_test <= 16'b0000010100100000;
            b_test <= 16'b0000010011000000;
        end
    end

    
    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
