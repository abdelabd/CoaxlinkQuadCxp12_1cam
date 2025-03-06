module division_LUT_ap_fixed_{FP_TOTAL}_{FP_INT}_s{LUT_BITS} #(
)(
    input logic [{FP_TOTAL}-1:0] number_in,
    output logic [{FP_TOTAL}-1:0] reciprocal

);

    logic [{NUM_ROWS-1}:0] reciprocal_LUT [{FP_TOTAL}-1:0];

    always_comb begin
        case (number_in[{FP_TOTAL}-1:{FP_TOTAL}-{LUT_BITS}])
// INSERT LUT HERE

        endcase
    end
    



    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
