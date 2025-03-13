module udivision_LUT_{N_BITS_IN}bit_int_to_{N_BITS_OUT}bit_frac #(
)(
    input logic [{N_BITS_IN}-1:0] number_in,
    output logic [{N_BITS_OUT}-1:0] reciprocal

);

    logic [2**{N_BITS_IN}-1:0] reciprocal_LUT [{N_BITS_OUT}-1:0];

    always_comb begin
        case (number_in)
// INSERT LUT HERE

        endcase
    end
    



    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
