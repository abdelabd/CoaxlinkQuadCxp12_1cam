module udivision_LUT_{N_BITS_IN}bit_int_to_{N_BITS_OUT}bit_frac #(
)(
    input logic clk,
    input logic [{N_BITS_IN}-1:0] number_in,
    input logic number_in_tvalid,
    output logic [{N_BITS_OUT}-1:0] reciprocal,
    output logic reciprocal_tvalid

);

    logic [2**{N_BITS_IN}-1:0] reciprocal_LUT [{N_BITS_OUT}-1:0];
    logic [{N_BITS_OUT}-1:0] reciprocal_reg;
    logic reciprocal_tvalid_reg;

    always_comb begin
        reciprocal_tvalid_reg = number_in_tvalid;
        case (number_in)
// INSERT LUT HERE

        endcase
    end
    
    always_ff @(posedge clk) begin
        reciprocal <= reciprocal_reg;
        reciprocal_tvalid <= reciprocal_tvalid_reg;
    end
        

    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
