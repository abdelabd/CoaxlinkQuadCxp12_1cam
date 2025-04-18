// Author: Abdelrahman Elabd
// Lab: ACME Lab, U. Washington ECE
// Date: 04/17/2025
// Module purpose: This module multiplies a fully-integer fixed-point value, 'pixel', by a fully-fractional fixed-point value, 'norm_factor',
// and outputs a fully-fractional fixed-point value 'module_out'. The output is always less than 1. 

module umult_int_frac // IMPORTANT: Assumes FRAC_WIDTH >= OUT_WIDTH
#(
    parameter INT_WIDTH = 8,
    parameter FRAC_WIDTH = 8,
    parameter MODULE_OUT_WIDTH = 8
)
(
    input logic clk,

    input logic [INT_WIDTH-1:0] pixel, // integer, unsigned
    input logic pixel_tvalid,

    input logic [FRAC_WIDTH-1:0] norm_factor, // fractional, unsigned
    input logic norm_factor_tvalid,

    output logic [MODULE_OUT_WIDTH-1:0] module_out, // fractional, unsigned
    output logic module_out_tvalid
);
    
    logic [INT_WIDTH+FRAC_WIDTH-1:0] mult_out_full;
    logic module_out_tvalid_reg;
    always_ff @(posedge clk) begin
        mult_out_full <= pixel * norm_factor;
        module_out_tvalid_reg <= pixel_tvalid && norm_factor_tvalid;
    end

    assign module_out = mult_out_full[FRAC_WIDTH-1:FRAC_WIDTH-MODULE_OUT_WIDTH];
    assign module_out_tvalid = module_out_tvalid_reg;

endmodule