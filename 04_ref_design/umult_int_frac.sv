module umult_int_frac
#(
    parameter WIDTH = 8
)
(
    input logic [WIDTH-1:0] pixel, // integer, unsigned
    input logic [WIDTH-1:0] norm_factor, // fractional, unsigned
    output logic [WIDTH-1:0] out // fractional, unsigned
);
    
    logic [2*WIDTH-1:0] val;
    assign val = pixel * norm_factor;
    assign out = val[WIDTH-1:0];

endmodule