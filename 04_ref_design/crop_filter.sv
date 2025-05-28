// Author: Abdelrahman Elabd
// Lab: ACME Lab, U. Washington ECE
// Date: 04/17/2025
// Module purpose: This module crops an incoming streamed image of size IN_ROWS x IN_COLS to an outgoing streamed image of size OUT_ROWS x OUT_COLS,
// with crop-coordinates specified by the inputs [top = crop_y0, left = crop_x0, bottom = crop_y0 + OUT_ROWS, right = crop_x0 + OUT_COLS]
// This module also outputs the maximum pixel value of the outgoing post-cropped image - this is helpful/necessary for the downstream norm_reader module

module crop_filter #(
    parameter IN_ROWS           = 20, // must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 10,
    parameter OUT_COLS          = 10
)(
    input  logic                     clk,
    input  logic                     reset,

    // ap control signals
    input logic ap_start,  
    output logic ap_done,
    output logic ap_ready,

    input logic nr_ap_ready,

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [7:0] s_axis_tdata,

    // Crop-coordinates
    input logic [$clog2(IN_COLS)-1:0] crop_x0,
    input logic [$clog2(IN_ROWS)-1:0] crop_y0,

    // Max-value for normalization 
    output logic [7:0] max_value,
    output logic max_value_tvalid,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [7:0] m_axis_tdata,
    input logic [$clog2(IN_COLS)-1:0] cnt_col,
    input logic [$clog2(IN_ROWS)-1:0] cnt_row  

);
    /////////////////////////////////// WIRE DECLARATIONS ///////////////////////////////////

    // FIFO handshake wires
    logic wren_to_fifo, fifo_s_axis_tready;
    logic [7:0] data_to_fifo;  

    logic [$clog2(OUT_ROWS*OUT_COLS)-1:0] cnt_fifo_writes; // Allows us to determine when we're done cropping
 
    /////////////////////////////////// LOGIC ///////////////////////////////////

    // Drive ap_ready 
    assign ap_ready = nr_ap_ready; // pass-through the ap_ready signal; we're ready to start cropping if the downstream norm-reader is ready to start normalizing

    // Main-logic: Assert tvalid and save data to FIFO if (x,y) coordinates are inside of crop-box
    always_comb begin
        s_axis_tready = fifo_s_axis_tready;

        if((cnt_row >= crop_y0) && (cnt_row < crop_y0+OUT_ROWS) && (cnt_col >= crop_x0) && (cnt_col < crop_x0+OUT_COLS)) begin 
            wren_to_fifo = 1'b1 && s_axis_tvalid;
            data_to_fifo = s_axis_tdata;
        end
        else begin 
            wren_to_fifo = 1'b0;
            data_to_fifo = 0;
        end
        
    end

    // Write to FIFO 
    axis_fifo cf_axis_fifo (.s_aclk(clk),
                            .s_aresetn(~reset),
                            .s_axis_tvalid(wren_to_fifo),
                            .s_axis_tready(fifo_s_axis_tready),
                            .s_axis_tdata(data_to_fifo),
                            .m_axis_tvalid(m_axis_tvalid),
                            .m_axis_tready(m_axis_tready),
                            .m_axis_tdata(m_axis_tdata)
                            );

    // Drive cnt_fifo_writes
    always_ff @(posedge clk) begin

        if (reset) cnt_fifo_writes <= 0;
        else if (cnt_fifo_writes == OUT_ROWS*OUT_COLS-1) cnt_fifo_writes <= 0;
        else if (fifo_s_axis_tready && wren_to_fifo) cnt_fifo_writes <= cnt_fifo_writes + 1;

    end

    // Assert ap_done once we've written a cropped-images worth of pixels
    assign ap_done = (cnt_fifo_writes==OUT_ROWS*OUT_COLS-1);

    // Drive max_value: the largest pixel value that passes the crop_filter
    always_ff @(posedge clk) begin
        if (reset || ap_start) begin 
            max_value <= 0;
            max_value_tvalid <= 1'b0;
        end
        else if (wren_to_fifo && fifo_s_axis_tready) begin
            if (data_to_fifo > max_value) max_value <= data_to_fifo;
            if (cnt_fifo_writes==OUT_ROWS*OUT_COLS-1) max_value_tvalid <= 1'b1;
        end
    end

    //////////////////////// For testbenching ////////////////////////
    // synthesis translate_off

    // synthesis translate_on

endmodule
