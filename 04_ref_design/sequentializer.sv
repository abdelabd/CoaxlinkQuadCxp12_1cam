module sequentializer #(
    parameter PIXEL_BIT_WIDTH   = 16,
    parameter PIXELS_PER_BURST  = 16,
    parameter USER_WIDTH        = 4,
    parameter IN_ROWS           = 100, // must be multiple of PIXELS_PER_BURST
    parameter IN_COLS           = 160,
    parameter OUT_ROWS          = 48,
    parameter OUT_COLS          = 48
)(
    input  logic clk, 
    input  logic srst,           // Synchronous reset
    input  logic s_axis_resetn,  // AXI Stream interface reset (active-low)

    // AXI Stream Slave Interface
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [PIXEL_BIT_WIDTH*PIXELS_PER_BURST-1:0] s_axis_tdata,
    input  logic [USER_WIDTH-1:0]    s_axis_tuser,

    // Crop coordinates
    input  logic [$clog2(IN_COLS)-1:0] crop_x0,
    input  logic [$clog2(IN_ROWS)-1:0] crop_y0,

    // AXI Stream Master Interface
    output logic                   m_axis_tvalid,
    input  logic                   m_axis_tready,
    output logic [PIXEL_BIT_WIDTH-1:0] m_axis_tdata
);

    //TODO: These two hard-coded for now 
    int STRIPE_ORDER [25:0] = '{12, 13, 11, 14, 10, 15, 9, 16, 8, 17, 7, 18, 6, 19, 5, 20, 4, 21, 3, 22, 2, 23, 1, 24, 0, 25}; 
    int LINE_ORDER [103:0] = '{48, 49, 50, 51, 52, 53, 54, 55, 44, 45, 46, 47, 56, 57, 58, 59, 40, 41, 42, 43, 60, 61, 62, 63, 36, 37, 38, 39, 64, 65, 66, 67, 32, 33, 34, 35, 68, 69, 70, 71, 28, 29, 30, 31, 72, 73, 74, 75, 24, 25, 26, 27, 76, 77, 78, 79, 20, 21, 22, 23, 80, 81, 82, 83, 16, 17, 18, 19, 84, 85, 86, 87, 12, 13, 14, 15, 88, 89, 90, 91, 8, 9, 10, 11, 92, 93, 94, 95, 4, 5, 6, 7, 96, 97, 98, 99, 0, 1, 2, 3, 100, 101, 102, 103};

    //////////////////////// Store data-burst ////////////////////////
    logic [PIXEL_BIT_WIDTH-1:0] pixel_buffer [0:PIXELS_PER_BURST-1];
    generate
        for (genvar i = 0; i < PIXELS_PER_BURST; i++) begin : burst_store
            always_ff @(posedge clk) begin
            if ((!s_axis_resetn)||srst) begin
                pixel_buffer[i] <= '0;
            end
            else if (s_axis_tvalid && s_axis_tready) begin
                pixel_buffer[i] <= s_axis_tdata[(i+1)*PIXEL_BIT_WIDTH-1 : i*PIXEL_BIT_WIDTH];
            end
            end
        end
    endgenerate


    //////////////////////// Finite State machine ////////////////////////
    // assign s_axis_tready = 1'b1; //TODO: Comment this out

    enum logic {RECEIVING, STREAMING} ps, ns;
    always_ff @(posedge clk) begin
        if ((!s_axis_resetn)||srst||s_axis_tuser[0]) ps <= RECEIVING; // If reset or frame-start
        else ps <= ns;
    end

    // reg burst_complete;
    always_comb begin

        case (ps)

            RECEIVING: begin
                s_axis_tready = 1'b1;
                m_axis_tvalid = 1'b0;
                if (s_axis_tvalid) ns = STREAMING;
                else ns = RECEIVING;
            end

            STREAMING: begin
                if (m_axis_tready) begin
                    if (burst_complete) ns = RECEIVING;
                    else ns = STREAMING;
                end
                else ns = STREAMING;

            end
        endcase 

    end

    //////////////////////// Track indeces ////////////////////////
    logic cnt_idx_in_burst;
    logic burst_complete;
    assign burst_complete = (cnt_idx_in_burst == PIXELS_PER_BURST-1);
    logic cnt_col;
    logic cnt_row_idx;
    logic cnt_row;
    assign cnt_row = LINE_ORDER[cnt_row_idx];

    // always_ff @(posedge clk) begin
    //     if ((!s_axis_resetn)||srst||s_axis_tuser[0]) begin 
    //         cnt_idx_in_burst <= 0;
    //         cnt_col <= 0;
    //         cnt_row_idx <= 0;
    //         cnt_row <= LINE_ORDER[cnt_row_idx]
    //     end
    //     else begin

    //         if (s_axis_tvalid && s_axis_tready) begin

    //         end

    //     end
    // end
    

    // always_ff @(posedge clk) begin

    //     if ((!s_axis_resetn)||srst) begin 
    //         // ps       <= RECEIVING;
    //         s_axis_tready  <= 1'b0;
    //         m_axis_tvalid  <= 1'b0;
    //         m_axis_tdata   <= '0;
    //         cnt_idx_in_burst   <= 0;
    //         cnt_row        <= '0;
    //         cnt_col        <= '0;
    //     end

    //     else begin
    //         // ps <= ns;

    //         case (ps)
    //             //-------------------------------------
    //             RECEIVING: begin
    //                 s_axis_tready <= 1'b1;
    //                 m_axis_tvalid <= 1'b0; 

    //                 if (s_axis_tvalid) begin
    //                     s_axis_tready <= 1'b0; 
    //                     cnt_idx_in_burst <= 0;
    //                 end
    //             end

    //             STREAMING: begin
    //                 s_axis_tready <= 1'b0;  
    //                 m_axis_tvalid <= 1'b1;
                    
    //                 if (m_axis_tready) begin

    //                     m_axis_tdata <= pixel_buffer[cnt_idx_in_burst];

    //                     // Move to next pixel
    //                     cnt_idx_in_burst <= cnt_idx_in_burst + 1'b1;
                        
    //                     // Increment col/row counters
    //                     if (cnt_col == IN_COLS-1) begin
    //                         cnt_col <= 0;
    //                         if (cnt_row == IN_ROWS-1) cnt_row <= 0;
    //                         else cnt_row <= cnt_row + 1'b1;
    //                     end
    //                     else cnt_col <= cnt_col + 1'b1;

                        
    //                 end
    //             end
                
    //             default: begin
    //             end
    //         endcase
    //     end
    // end

    // //-------------------------------------------------------------------------
    // // Next-state logic
    // //-------------------------------------------------------------------------
    // always_comb begin
    //     ns = ps;
    //     case (ps)
    //         RECEIVING: begin
    //             if (s_axis_tvalid) begin
    //                 // Once we have a burst, go to output mode
    //                 ns = STREAMING;
    //             end
    //         end

    //         STREAMING: begin
    //             // After outputting all 16 pixels, return to RECEIVING
    //             if (cnt_idx_in_burst == (PIXELS_PER_BURST-1) && m_axis_tready) begin
    //                 ns = RECEIVING;
    //             end
    //         end

    //         default: begin
    //             ns = RECEIVING;
    //         end
    //     endcase
    // end

endmodule
