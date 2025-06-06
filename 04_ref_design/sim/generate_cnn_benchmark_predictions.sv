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
	logic [FP_TOTAL-1:0] q_conv2d_batchnorm_5_input_TDATA; //input
	logic q_conv2d_batchnorm_5_input_TVALID; //input: data valid to be sent
    wire q_conv2d_batchnorm_5_input_TREADY; //output: myproject ready to receive data
		  
	// output
	wire [5*FP_TOTAL-1:0] layer18_out_TDATA; //output
	wire layer18_out_TVALID; // output: myproject output valid to be sent
    reg layer18_out_TREADY; //input: receiver ready to receive myproject output

	//////////////////////// DUT module ////////////////////////
	myproject dut (
        .q_conv2d_batchnorm_5_input_TDATA(q_conv2d_batchnorm_5_input_TDATA),
        .layer18_out_TDATA(layer18_out_TDATA),

        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),

        .q_conv2d_batchnorm_5_input_TVALID(q_conv2d_batchnorm_5_input_TVALID),
        .q_conv2d_batchnorm_5_input_TREADY(q_conv2d_batchnorm_5_input_TREADY),
            
        .layer18_out_TVALID(layer18_out_TVALID),
        .layer18_out_TREADY(layer18_out_TREADY),
		  
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
        q_conv2d_batchnorm_5_input_TVALID <= 1'b1;
	end

	// output-ready
	always_ff @(posedge ap_clk) begin
        layer18_out_TREADY <= 1'b1;
	end
	
	//////////////////////// I/O data ////////////////////////

	// I/O memory
	reg [FP_TOTAL-1:0] input_mem [OUT_ROWS*OUT_COLS-1:0];
    reg [FP_TOTAL-1:0] output_mem [4:0];

	// Indices to track read/write progress
	integer ii;
	integer pixel_idx;
	
	// File pointers
	integer input_file, output_file;

	// Sequentially read in input data
	always_ff @(posedge ap_clk) begin
		if (~ap_rst_n) begin
			pixel_idx <= 0;
		end	
		else if (q_conv2d_batchnorm_5_input_TVALID & q_conv2d_batchnorm_5_input_TREADY) begin
			pixel_idx <= pixel_idx + 1;
			q_conv2d_batchnorm_5_input_TDATA <= input_mem[pixel_idx][7:0];
		end	
	end
	
	// Sequentially read out output data
	always_ff @(posedge ap_clk) begin

        if (layer18_out_TVALID & layer18_out_TREADY) begin
            output_mem[4] <= layer18_out_TDATA[39:32];
            output_mem[3] <= layer18_out_TDATA[31:24];
            output_mem[2] <= layer18_out_TDATA[23:16];
            output_mem[1] <= layer18_out_TDATA[15:8];
            output_mem[0] <= layer18_out_TDATA[7:0];
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
										Y1_range[i], X1_range[j]), input_mem);

                //////////////////////// 2. Wait for computation to complete ////////////////////////

                // Toggle start
                @(posedge ap_clk) ap_start <= 1; @(posedge ap_clk) ap_start <= 0; 
                
                //////////////////////// 3. Save output, close files ////////////////////////

                // wait(ap_done)
                // $display("\n\n[INFO] (Y1, X1) = (%0d, %0d) complete", Y1_range[i], X1_range[j]);
                @(negedge ap_ready) begin
                    $display("\n\n[INFO] (Y1, X1) = (%0d, %0d) complete", Y1_range[i], X1_range[j]);

                    // Output
                    output_file = $fopen($sformatf("/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/%0dx%0d_to_%0dx%0dx%0d/Y1_%0d/X1_%0d/CNN_out_benchmark.txt",
										IN_ROWS, IN_COLS,
            							OUT_ROWS, OUT_COLS, NUM_CROPS,
										Y1_range[i], X1_range[j]), "wb");
                    if (output_file == 0) begin
                        $display("Error: Could not open output file for writing.");
                        $stop;
                    end
                    for (ii=0; ii<5; ii=ii+1) begin
                        $fwrite(output_file, "%b\n", output_mem[ii]);
                    end

                    $fclose(output_file);


                end

                
		    end

        end
        
		//////////////////////// 4. End sim ////////////////////////
        
        $display("\n\n[TB] Simulation complete; CNN benchmark predictions generated");
		$stop;
	end

endmodule