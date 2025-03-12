module lfsr_16bit(clk, reset, Q);
	output logic [15:0] Q;
	input logic clk, reset;
	
	
	// String of 16 DFFs
	logic D0;
	assign D0 = ~(Q[15] ^ Q[14] ^ Q[12] ^ Q[3]);
	
	my_DFF dff0 (.clk(clk), .reset(reset), .D(D0), .Q(Q[0])); // first DFF
	
	genvar i;
	generate
		for (i=0; i<15; i++) begin : each_dff
			my_DFF dff_i (.clk(clk), .reset(reset), .D(Q[i]), .Q(Q[i+1]));
		end
	endgenerate
	
endmodule 