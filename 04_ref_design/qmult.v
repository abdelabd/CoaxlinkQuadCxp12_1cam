`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Credit: https://github.com/freecores/verilog_fixed_point_math_library/blob/master/qmult.v 
// Company: 
// Engineer: 
// 
// Create Date:    11:21:14 08/24/2011 
// Design Name: 
// Module Name:    q15_mult 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module qmult #(
    // Parameterized values
    parameter Q = 15,
    parameter N = 32
    )
    (
     input      [N-1:0] i_multiplicand,
     input      [N-1:0] i_multiplier,
     output     [N-1:0] o_result,
     output reg         ovr
     );
     
    // The underlying assumption is that both fixed-point values are of the same length (N,Q)
    // The results will be of length N+N = 2N bits...
    // This ensures that the binary point remains in the same location.

    reg [2*N-1:0] r_result; // Register to store multiplication result (2N bits)
    reg [N-1:0]   r_RetVal;
    
    // Assigning the output result
    assign o_result = r_RetVal; 

    always @(i_multiplicand, i_multiplier) begin
        r_result <= i_multiplicand * i_multiplier; // Perform full multiplication
        ovr <= 1'b0; // Reset overflow flag
    end

    always @(r_result) begin
        // Compute the sign bit as the XOR of the input sign bits
        r_RetVal[N-1] <= i_multiplicand[N-1] ^ i_multiplier[N-1];
        
        // Extract the correct fixed-point portion of the result
        r_RetVal[N-2:0] <= r_result[N-2+Q:Q];

        // Check for overflow
        if (|r_result[2*N-2:N-1+Q]) 
            ovr <= 1'b1;
    end
endmodule