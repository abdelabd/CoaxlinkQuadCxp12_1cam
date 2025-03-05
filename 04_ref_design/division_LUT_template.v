module division_LUT_ap_fixed_{FP_TOTAL}_{FP_INT} #(
)(
    input logic [{FP_TOTAL-1}:0] number_in,
    output logic [{FP_TOTAL-1}:0] reciprocal

);

    logic [{NUM_ROWS-1}:0] reciprocal_LUT [{FP_TOTAL}-1:0];

// INSERT LUT HERE
    



    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
