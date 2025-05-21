module crop_sequentializer#(
    parameter IN_ROWS           = 20, // Must be multiple of PIXELS_PER_BURST. Purposely wrong here to ensure instantiation is correct in CustomLogic.vhd
    parameter IN_COLS           = 20,
    parameter OUT_ROWS          = 20,
    parameter OUT_COLS          = 20,
    parameter NUM_CROPS         = 3
)(
    input  logic clk, 
    input  logic reset,

    // AXI Stream Slave Interface for incoming pixels from N_CROPS crop-norm modules
    input  logic [NUM_CROPS-1:0]     s_axis_tvalid,
    output logic [NUM_CROPS-1:0]     s_axis_tready,
    input  logic [7:0]               s_axis_tdata [NUM_CROPS-1:0], 

    // AXI Stream Master Interface outgoing pixels, one crop at a time
    output logic                            m_axis_tvalid,
    input  logic                            m_axis_tready,
    output logic [7:0]                      m_axis_tdata,

    // crop_index
    output logic [2:0] crop_idx
);

    // Wires
    logic [$clog2(OUT_ROWS*OUT_COLS)-1:0] cnt_fifo_reads; // tells us when we're done with the current crops
    logic [4:0] s_axis_tready_reg; // helps us to pass through m_axis_tready to the appropriate (current) crop

    // Drive cnt_fifo_reads
    always_ff @(posedge clk) begin
        if (reset) cnt_fifo_reads <= 'd0;
        else if (m_axis_tvalid && m_axis_tready) begin
            if (cnt_fifo_reads == OUT_ROWS*OUT_COLS-1) cnt_fifo_reads <= 'd0;
            else cnt_fifo_reads <= cnt_fifo_reads + 1;
        end
    end

    // Drive crop_idx
    always_ff @(posedge clk) begin
        if (reset) crop_idx <= 'd0;
        else if ((cnt_fifo_reads == OUT_ROWS*OUT_COLS-1) && m_axis_tvalid && m_axis_tready) begin
            if (crop_idx == NUM_CROPS - 1) crop_idx <= 'd0;
            else crop_idx <= crop_idx + 1;
        end
    end

    // Drive master-handshake wires
    assign m_axis_tvalid = s_axis_tvalid[crop_idx];
    assign m_axis_tdata = s_axis_tdata[crop_idx];

    // Drive slave-handshake wires
    always_ff @(posedge clk) begin
        if (reset) begin
            s_axis_tready_reg <= {NUM_CROPS{1'b0}};
            s_axis_tready_reg[0] <= 1'b1;
        end
        else if ((cnt_fifo_reads == OUT_ROWS*OUT_COLS-1) && m_axis_tvalid && m_axis_tready) begin
            s_axis_tready_reg <= {s_axis_tready[NUM_CROPS-2:0], s_axis_tready[NUM_CROPS-1]};
        end
    end
    genvar ii;
    generate 
        for (ii=0; ii<NUM_CROPS; ii++) begin : make_s_axis_tready
            assign s_axis_tready[ii] = s_axis_tready_reg[ii] && m_axis_tready;
        end
    endgenerate;
    
endmodule