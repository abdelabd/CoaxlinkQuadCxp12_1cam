module umult_int_frac // IMPORTANT: Assumes FRAC_WIDTH >= OUT_WIDTH
#(
    parameter INT_WIDTH = 8,
    parameter FRAC_WIDTH = 8,
    parameter OUT_WIDTH = 8
)
(
    input logic [INT_WIDTH-1:0] pixel, // integer, unsigned
    input logic [FRAC_WIDTH-1:0] norm_factor, // fractional, unsigned
    output logic [OUT_WIDTH-1:0] out // fractional, unsigned
);
    
    logic [INT_WIDTH+FRAC_WIDTH-1:0] val;
    assign val = pixel * norm_factor;
    assign out = val[FRAC_WIDTH-1:FRAC_WIDTH-OUT_WIDTH];

endmodule