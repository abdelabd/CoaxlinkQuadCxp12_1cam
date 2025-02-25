module shift_register #(parameter WIDTH = 16,
			parameter DEPTH = 16)
	(clk, reset, load, shift, parallel_in, serial_in, data_out);
	input logic clk, reset, load, shift;
	input logic [WIDTH*DEPTH-1:0] parallel_in;
	input logic [WIDTH-1:0] serial_in;
	output logic [WIDTH-1:0] data_out [DEPTH-1:0];

	// Shift register logic
     generate
        for (genvar i = 0; i < DEPTH; i++) begin : main_logic

            always_ff @(posedge clk) begin

                if (reset) data_out[i] <= {WIDTH{1'b0}};

                else if (load) data_out[i] <= parallel_in[(i+1)*WIDTH-1: i*WIDTH];

                else if (shift) begin
                    if (i == DEPTH-1) data_out[i] <= serial_in;
                    else data_out[i] <= data_out[i+1];
                end

            end

        end
     endgenerate

endmodule