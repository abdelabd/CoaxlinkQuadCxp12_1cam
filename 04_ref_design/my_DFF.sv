module my_DFF(clk, reset, D, Q);
    input logic clk, reset;
    input logic D; // Data input 
    output logic Q; // output Q 
    always @(posedge clk) 
    if (reset) Q <= 0;
    else Q <= D;
endmodule 