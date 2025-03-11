module udivision_LUT_8bit_int_to_8bit_frac #(
)(
    input logic [8-1:0] number_in,
    output logic [8-1:0] reciprocal

);

    logic [2**8-1:0] reciprocal_LUT [8-1:0];

    always_comb begin
        case (number_in)
        8'b00000000 : reciprocal = 8'b11111111;
        8'b00000001 : reciprocal = 8'b10000000;
        8'b00000010 : reciprocal = 8'b01010101;
        8'b00000011 : reciprocal = 8'b01000000;
        8'b00000100 : reciprocal = 8'b00110011;
        8'b00000101 : reciprocal = 8'b00101010;
        8'b00000110 : reciprocal = 8'b00100100;
        8'b00000111 : reciprocal = 8'b00100000;
        8'b00001000 : reciprocal = 8'b00011100;
        8'b00001001 : reciprocal = 8'b00011001;
        8'b00001010 : reciprocal = 8'b00010111;
        8'b00001011 : reciprocal = 8'b00010101;
        8'b00001100 : reciprocal = 8'b00010011;
        8'b00001101 : reciprocal = 8'b00010010;
        8'b00001110 : reciprocal = 8'b00010001;
        8'b00001111 : reciprocal = 8'b00010000;
        8'b00010000 : reciprocal = 8'b00001111;
        8'b00010001 : reciprocal = 8'b00001110;
        8'b00010010 : reciprocal = 8'b00001101;
        8'b00010011 : reciprocal = 8'b00001100;
        8'b00010100 : reciprocal = 8'b00001100;
        8'b00010101 : reciprocal = 8'b00001011;
        8'b00010110 : reciprocal = 8'b00001011;
        8'b00010111 : reciprocal = 8'b00001010;
        8'b00011000 : reciprocal = 8'b00001010;
        8'b00011001 : reciprocal = 8'b00001001;
        8'b00011010 : reciprocal = 8'b00001001;
        8'b00011011 : reciprocal = 8'b00001001;
        8'b00011100 : reciprocal = 8'b00001000;
        8'b00011101 : reciprocal = 8'b00001000;
        8'b00011110 : reciprocal = 8'b00001000;
        8'b00011111 : reciprocal = 8'b00001000;
        8'b00100000 : reciprocal = 8'b00000111;
        8'b00100001 : reciprocal = 8'b00000111;
        8'b00100010 : reciprocal = 8'b00000111;
        8'b00100011 : reciprocal = 8'b00000111;
        8'b00100100 : reciprocal = 8'b00000110;
        8'b00100101 : reciprocal = 8'b00000110;
        8'b00100110 : reciprocal = 8'b00000110;
        8'b00100111 : reciprocal = 8'b00000110;
        8'b00101000 : reciprocal = 8'b00000110;
        8'b00101001 : reciprocal = 8'b00000110;
        8'b00101010 : reciprocal = 8'b00000101;
        8'b00101011 : reciprocal = 8'b00000101;
        8'b00101100 : reciprocal = 8'b00000101;
        8'b00101101 : reciprocal = 8'b00000101;
        8'b00101110 : reciprocal = 8'b00000101;
        8'b00101111 : reciprocal = 8'b00000101;
        8'b00110000 : reciprocal = 8'b00000101;
        8'b00110001 : reciprocal = 8'b00000101;
        8'b00110010 : reciprocal = 8'b00000101;
        8'b00110011 : reciprocal = 8'b00000100;
        8'b00110100 : reciprocal = 8'b00000100;
        8'b00110101 : reciprocal = 8'b00000100;
        8'b00110110 : reciprocal = 8'b00000100;
        8'b00110111 : reciprocal = 8'b00000100;
        8'b00111000 : reciprocal = 8'b00000100;
        8'b00111001 : reciprocal = 8'b00000100;
        8'b00111010 : reciprocal = 8'b00000100;
        8'b00111011 : reciprocal = 8'b00000100;
        8'b00111100 : reciprocal = 8'b00000100;
        8'b00111101 : reciprocal = 8'b00000100;
        8'b00111110 : reciprocal = 8'b00000100;
        8'b00111111 : reciprocal = 8'b00000100;
        8'b01000000 : reciprocal = 8'b00000011;
        8'b01000001 : reciprocal = 8'b00000011;
        8'b01000010 : reciprocal = 8'b00000011;
        8'b01000011 : reciprocal = 8'b00000011;
        8'b01000100 : reciprocal = 8'b00000011;
        8'b01000101 : reciprocal = 8'b00000011;
        8'b01000110 : reciprocal = 8'b00000011;
        8'b01000111 : reciprocal = 8'b00000011;
        8'b01001000 : reciprocal = 8'b00000011;
        8'b01001001 : reciprocal = 8'b00000011;
        8'b01001010 : reciprocal = 8'b00000011;
        8'b01001011 : reciprocal = 8'b00000011;
        8'b01001100 : reciprocal = 8'b00000011;
        8'b01001101 : reciprocal = 8'b00000011;
        8'b01001110 : reciprocal = 8'b00000011;
        8'b01001111 : reciprocal = 8'b00000011;
        8'b01010000 : reciprocal = 8'b00000011;
        8'b01010001 : reciprocal = 8'b00000011;
        8'b01010010 : reciprocal = 8'b00000011;
        8'b01010011 : reciprocal = 8'b00000011;
        8'b01010100 : reciprocal = 8'b00000011;
        8'b01010101 : reciprocal = 8'b00000010;
        8'b01010110 : reciprocal = 8'b00000010;
        8'b01010111 : reciprocal = 8'b00000010;
        8'b01011000 : reciprocal = 8'b00000010;
        8'b01011001 : reciprocal = 8'b00000010;
        8'b01011010 : reciprocal = 8'b00000010;
        8'b01011011 : reciprocal = 8'b00000010;
        8'b01011100 : reciprocal = 8'b00000010;
        8'b01011101 : reciprocal = 8'b00000010;
        8'b01011110 : reciprocal = 8'b00000010;
        8'b01011111 : reciprocal = 8'b00000010;
        8'b01100000 : reciprocal = 8'b00000010;
        8'b01100001 : reciprocal = 8'b00000010;
        8'b01100010 : reciprocal = 8'b00000010;
        8'b01100011 : reciprocal = 8'b00000010;
        8'b01100100 : reciprocal = 8'b00000010;
        8'b01100101 : reciprocal = 8'b00000010;
        8'b01100110 : reciprocal = 8'b00000010;
        8'b01100111 : reciprocal = 8'b00000010;
        8'b01101000 : reciprocal = 8'b00000010;
        8'b01101001 : reciprocal = 8'b00000010;
        8'b01101010 : reciprocal = 8'b00000010;
        8'b01101011 : reciprocal = 8'b00000010;
        8'b01101100 : reciprocal = 8'b00000010;
        8'b01101101 : reciprocal = 8'b00000010;
        8'b01101110 : reciprocal = 8'b00000010;
        8'b01101111 : reciprocal = 8'b00000010;
        8'b01110000 : reciprocal = 8'b00000010;
        8'b01110001 : reciprocal = 8'b00000010;
        8'b01110010 : reciprocal = 8'b00000010;
        8'b01110011 : reciprocal = 8'b00000010;
        8'b01110100 : reciprocal = 8'b00000010;
        8'b01110101 : reciprocal = 8'b00000010;
        8'b01110110 : reciprocal = 8'b00000010;
        8'b01110111 : reciprocal = 8'b00000010;
        8'b01111000 : reciprocal = 8'b00000010;
        8'b01111001 : reciprocal = 8'b00000010;
        8'b01111010 : reciprocal = 8'b00000010;
        8'b01111011 : reciprocal = 8'b00000010;
        8'b01111100 : reciprocal = 8'b00000010;
        8'b01111101 : reciprocal = 8'b00000010;
        8'b01111110 : reciprocal = 8'b00000010;
        8'b01111111 : reciprocal = 8'b00000010;
        default : reciprocal = 8'b00000001;


        endcase
    end
    



    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
