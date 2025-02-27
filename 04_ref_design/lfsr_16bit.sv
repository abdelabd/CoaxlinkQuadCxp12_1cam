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


module lfsr_16bit_testbench();
	logic [15:0] Q;
	logic clk, reset;
	
	lfsr_16bit dut (.clk(clk), .reset(reset), .Q(Q));
	
	// Set up a simulated clock.  
	parameter CLOCK_PERIOD=100;  
	initial begin  
		clk <= 0;  
		forever #(CLOCK_PERIOD/2) clk <= ~clk; // Forever toggle the clock 
	end  
	
	initial begin
		reset <= 1; @(posedge clk);
		reset <= 0; repeat(5000) @(posedge clk);
		
		$stop;
	
	end

endmodule


