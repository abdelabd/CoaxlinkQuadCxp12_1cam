`timescale 1ns/1ps
module generate_cnn_benchmark_predictions();

    //////////////////////// User parameters ////////////////////////
    localparam FP_TOTAL         = 8;
    localparam FP_INT 			= 0;

    localparam IN_ROWS         	= 100;
    localparam IN_COLS         	= 160;
    localparam OUT_ROWS        	= 48;
    localparam OUT_COLS        	= 48;
    localparam NUM_CROPS       	= 1;
	int Y1_range[3] 			= '{0, 1, 52};
	int X1_range[3] 			= '{0, 13, 112};


	//////////////////////// DUT signals ////////////////////////
	reg ap_clk; //input
	reg ap_rst_n; //input
	reg ap_start; //input
	wire ap_done; //output
	wire ap_idle; //output
	wire ap_ready; //output

	// Image data input to the HLS module
	logic [7:0] q_conv2d_batchnorm_input_TDATA; //input
	logic q_conv2d_batchnorm_input_TVALID; //input: data valid to be sent
    wire q_conv2d_batchnorm_input_TREADY; //output: myproject ready to receive data
		  
	// output
	wire [159:0] layer21_out_TDATA; //output
	wire layer21_out_TVALID; // output: myproject output valid to be sent
    reg layer21_out_TREADY; //input: receiver ready to receive myproject output

	//////////////////////// DUT module ////////////////////////
	myproject dut (
        .q_conv2d_batchnorm_input_TDATA({24'b0, q_conv2d_batchnorm_input_TDATA}),
        .layer21_out_TDATA(layer21_out_TDATA),

        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),

        .q_conv2d_batchnorm_input_TVALID(q_conv2d_batchnorm_input_TVALID),
        .q_conv2d_batchnorm_input_TREADY(q_conv2d_batchnorm_input_TREADY),
            
        .layer21_out_TVALID(layer21_out_TVALID),
        .layer21_out_TREADY(layer21_out_TREADY),
		  
        .ap_start(ap_start),
        .ap_done(ap_done),
        .ap_ready(ap_ready),
        .ap_idle(ap_idle)
	);
	

	//////////////////////// Generate clock ////////////////////////
	parameter CLOCK_PERIOD = 0.002;
	initial begin
		 ap_clk = 0;
		 forever #(CLOCK_PERIOD/2) ap_clk = ~ap_clk; // 100MHz clock
	end

	integer cc_counter; // cycle counter
    always_ff @(posedge ap_clk) begin
        if (~ap_rst_n) begin
            cc_counter <= 0;
        end
        else begin
            cc_counter <= cc_counter + 1;
        end
    end

    //////////////////////// Set handshake signals ////////////////////////

    // input-valid
	always_ff @(posedge ap_clk) begin
        q_conv2d_batchnorm_input_TVALID <= 1'b1;
	end

	// output-ready
	always_ff @(posedge ap_clk) begin
        layer21_out_TREADY <= 1'b1;
	end
	
	//////////////////////// I/O data ////////////////////////

	// I/O memory
	reg [7:0] in_mem [OUT_ROWS*OUT_COLS-1:0];
    reg [21:0] out_mem [4:0];
    reg [21:0] out_benchmark_mem [4:0];
    reg [22:0] diff [4:0];
    genvar jj;
    generate
        for (jj = 0; jj < 5; jj = jj + 1) begin : gen_out_diff
            assign diff[jj] = out_benchmark_mem[jj] - out_mem[jj];
        end
    endgenerate

	// Indices to track read/write progress
	integer ii;
	integer pixel_idx;
	
	// File pointers
	integer output_file;
    integer cnt_CNN_handshake;
    integer cnt_frame = -1;

	// Sequentially read in input data
	always_ff @(posedge ap_clk) begin
		if ((~ap_rst_n)||ap_start) begin
			pixel_idx <= 0;
            cnt_CNN_handshake <= 0;
            cnt_frame <= cnt_frame + 1;
		end	
		else begin
            q_conv2d_batchnorm_input_TDATA <= in_mem[pixel_idx][7:0];
            if (q_conv2d_batchnorm_input_TVALID & q_conv2d_batchnorm_input_TREADY) begin
			    pixel_idx <= pixel_idx + 1;
                cnt_CNN_handshake <= cnt_CNN_handshake + 1;
            end
		end	
	end
	
	// Sequentially read out output data
	always_ff @(posedge ap_clk) begin

        if (layer21_out_TVALID & layer21_out_TREADY) begin

            out_mem[4] <= layer21_out_TDATA[159-10:128];
            assert((out_benchmark_mem[4] - layer21_out_TDATA[159-10:128] > -3) && (out_benchmark_mem[4]- layer21_out_TDATA[159-10:128] < 3)) 
                else $display("Mismatch at (frame, neuron)=(%0d, 4). Expected %h, got %h, diff=%0d\n", cnt_frame, out_benchmark_mem[4], layer21_out_TDATA[159-10:128], out_benchmark_mem[4] - layer21_out_TDATA[159-10:128]);

            out_mem[3] <= layer21_out_TDATA[127-10:96];
            assert((out_benchmark_mem[3] - layer21_out_TDATA[127-10:96] > -3) && (out_benchmark_mem[3]- layer21_out_TDATA[127-10:96] < 3)) 
                else $display("Mismatch at (frame, neuron)=(%0d, 3). Expected %h, got %h, diff=%0d\n", cnt_frame, out_benchmark_mem[3], layer21_out_TDATA[127-10:96], out_benchmark_mem[3] - layer21_out_TDATA[127-10:96]);

            out_mem[2] <= layer21_out_TDATA[95-10:64];
            assert((out_benchmark_mem[2] - layer21_out_TDATA[95-10:64] > -3) && (out_benchmark_mem[2]- layer21_out_TDATA[95-10:64] < 3)) 
                else $display("Mismatch at (frame, neuron)=(%0d, 2). Expected %h, got %h, diff=%0d\n", cnt_frame, out_benchmark_mem[2], layer21_out_TDATA[95-10:64], out_benchmark_mem[2] - layer21_out_TDATA[95-10:64]);

            out_mem[1] <= layer21_out_TDATA[63-10:32];
            assert((out_benchmark_mem[1] - layer21_out_TDATA[63-10:32] > -3) && (out_benchmark_mem[1]- layer21_out_TDATA[63-10:32] < 3)) 
                else $display("Mismatch at (frame, neuron)=(%0d, 1). Expected %h, got %h, diff=%0d\n", cnt_frame, out_benchmark_mem[1], layer21_out_TDATA[63-10:32], out_benchmark_mem[1] - layer21_out_TDATA[63-10:32]);

            out_mem[0] <= layer21_out_TDATA[31-10:0];
            assert((out_benchmark_mem[0] - layer21_out_TDATA[31-10:0] > -3) && (out_benchmark_mem[0]- layer21_out_TDATA[31-10:0] < 3)) 
                else $display("Mismatch at (frame, neuron)=(%0d, 0). Expected %h, got %h, diff=%0d\n", cnt_frame, out_benchmark_mem[0], layer21_out_TDATA[31-10:0], out_benchmark_mem[0] - layer21_out_TDATA[31-10:0]);
        end
        
	end

	
	// Run through signal protocol to run module
	initial begin
        @(posedge ap_clk) ap_start <= 0; // start off to begin
        // toggle ~ap_rst_n
        @(posedge ap_clk) ap_rst_n <= 0; @(posedge ap_clk) ap_rst_n <= 1; // recall, ap_rst_n active low
		foreach(Y1_range[i]) begin
			foreach(X1_range[j]) begin

                //////////////////////// 1. Load input data ////////////////////////
		        $readmemh($sformatf("/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/%0dx%0d_to_%0dx%0dx%0d/Y1_%0d/X1_%0d/HDL_cropnorm_out_1D.txt",
										IN_ROWS, IN_COLS,
            							OUT_ROWS, OUT_COLS, NUM_CROPS,
										Y1_range[i], X1_range[j]), in_mem);

                //////////////////////// 2. Load output benchmark data ////////////////////////

                $readmemb($sformatf("/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/%0dx%0d_to_%0dx%0dx%0d/Y1_%0d/X1_%0d/QKeras_mg1_pred_ap_fixed_22_11.txt",
										IN_ROWS, IN_COLS,
            							OUT_ROWS, OUT_COLS, NUM_CROPS,
										Y1_range[i], X1_range[j]), out_benchmark_mem);

                //////////////////////// 3. Wait for computation to complete ////////////////////////

                // Toggle start
                @(posedge ap_clk) ap_start <= 1; @(posedge ap_clk) ap_start <= 0; 
                
                //////////////////////// 4. Save output, close files ////////////////////////

                // wait(ap_done)
                @(negedge ap_ready) begin

                    // Output
                    output_file = $fopen($sformatf("/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/%0dx%0d_to_%0dx%0dx%0d/Y1_%0d/X1_%0d/CNN_mg1_out_benchmark_ap_fixed_22_11.txt",
										IN_ROWS, IN_COLS,
            							OUT_ROWS, OUT_COLS, NUM_CROPS,
										Y1_range[i], X1_range[j]), "wb");
                    if (output_file == 0) begin
                        $display("Error: Could not open output file for writing.");
                        $stop;
                    end
                    for (ii=0; ii<5; ii=ii+1) begin
                        $fwrite(output_file, "%b\n", out_mem[ii]);
                    end

                    $fclose(output_file);
                    $display("\n\n[INFO] (Y1, X1) = (%0d, %0d) complete", Y1_range[i], X1_range[j]);


                end

                
		    end

        end
        
		//////////////////////// 5. End sim ////////////////////////
        
        $display("\n\n[TB] Simulation complete; CNN benchmark predictions generated");
		$stop;
	end

endmodule