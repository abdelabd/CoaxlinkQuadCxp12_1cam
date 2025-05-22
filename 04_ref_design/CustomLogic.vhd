--------------------------------------------------------------------------------
-- Project: CustomLogic
--------------------------------------------------------------------------------
--  Module: CustomLogic
--    File: CustomLogic.vhd
--    Date: 2023-03-07
--     Rev: 0.5
--  Author: PP
--------------------------------------------------------------------------------
-- CustomLogic wrapper for the user design
--------------------------------------------------------------------------------
-- 0.1, 2017-12-15, PP, Initial release
-- 0.2, 2019-07-12, PP, Updated CustomLogic interfaces
-- 0.3, 2019-10-24, PP, Added General Purpose I/O Interface
-- 0.4, 2021-02-25, PP, Added *mem_base and *mem_size ports into the On-Board
--                      Memory interface
-- 0.5, 2023-03-07, MH, Added CustomLogic output control
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- For testbenching
use std.textio.all;
use ieee.std_logic_textio.all;

entity CustomLogic is
	generic (
		STREAM_DATA_WIDTH			: natural := 128;
	    MEMORY_DATA_WIDTH			: natural := 128
	);
    port (
		---- CustomLogic Common Interfaces -------------------------------------
        -- Clock/Reset
		clk250						: in  std_logic;	-- Clock 250 MHz
		srst250						: in  std_logic; 	-- Global reset (PCIe reset)
		-- General Purpose I/O Interface
		user_output_ctrl			: out std_logic_vector( 15 downto 0);
		user_output_status			: in  std_logic_vector(  7 downto 0);
		standard_io_set1_status		: in  std_logic_vector(  9 downto 0);
		standard_io_set2_status		: in  std_logic_vector(  9 downto 0);
		module_io_set_status		: in  std_logic_vector( 39 downto 0);
		qdc1_position_status		: in  std_logic_vector( 31 downto 0);
		custom_logic_output_ctrl	: out std_logic_vector( 31 downto 0);
		reserved					: in  std_logic_vector(511 downto 0) := (others=>'0');
		-- Control Slave Interface
		s_ctrl_addr					: in  std_logic_vector( 15 downto 0);
		s_ctrl_data_wr_en			: in  std_logic;
		s_ctrl_data_wr				: in  std_logic_vector( 31 downto 0);
		s_ctrl_data_rd				: out std_logic_vector( 31 downto 0);
		-- On-Board Memory - Parameters
		onboard_mem_base			: in  std_logic_vector( 31 downto 0);	-- Base address of the CustomLogic partition in the On-Board Memory
		onboard_mem_size			: in  std_logic_vector( 31 downto 0);	-- Size in bytes of the CustomLogic partition in the On-Board Memory
		-- On-Board Memory - AXI 4 Master Interface
		m_axi_resetn 				: in  std_logic;	-- AXI 4 Interface reset
		m_axi_awaddr 				: out std_logic_vector( 31 downto 0);
		m_axi_awlen 				: out std_logic_vector(  7 downto 0);
		m_axi_awsize 				: out std_logic_vector(  2 downto 0);
		m_axi_awburst 				: out std_logic_vector(  1 downto 0);
		m_axi_awlock 				: out std_logic;
		m_axi_awcache 				: out std_logic_vector(  3 downto 0);
		m_axi_awprot 				: out std_logic_vector(  2 downto 0);
		m_axi_awqos 				: out std_logic_vector(  3 downto 0);
		m_axi_awvalid 				: out std_logic;
		m_axi_awready 				: in  std_logic;
		m_axi_wdata 				: out std_logic_vector(MEMORY_DATA_WIDTH   - 1 downto 0);
		m_axi_wstrb 				: out std_logic_vector(MEMORY_DATA_WIDTH/8 - 1 downto 0);
		m_axi_wlast 				: out std_logic;
		m_axi_wvalid 				: out std_logic;
		m_axi_wready 				: in  std_logic;
		m_axi_bresp 				: in  std_logic_vector(  1 downto 0);
		m_axi_bvalid 				: in  std_logic;
		m_axi_bready 				: out std_logic;
		m_axi_araddr 				: out std_logic_vector( 31 downto 0);
		m_axi_arlen 				: out std_logic_vector(  7 downto 0);
		m_axi_arsize 				: out std_logic_vector(  2 downto 0);
		m_axi_arburst 				: out std_logic_vector(  1 downto 0);
		m_axi_arlock 				: out std_logic;
		m_axi_arcache 				: out std_logic_vector(  3 downto 0);
		m_axi_arprot 				: out std_logic_vector(  2 downto 0);
		m_axi_arqos 				: out std_logic_vector(  3 downto 0);
		m_axi_arvalid 				: out std_logic;
		m_axi_arready 				: in  std_logic;
		m_axi_rdata 				: in  std_logic_vector(MEMORY_DATA_WIDTH - 1 downto 0);
		m_axi_rresp 				: in  std_logic_vector(  1 downto 0);
		m_axi_rlast 				: in  std_logic;
		m_axi_rvalid 				: in  std_logic;
		m_axi_rready 				: out std_logic;	
		---- CustomLogic Device/Channel Interfaces -----------------------------
		-- AXI Stream Slave Interface
		s_axis_resetn				: in  std_logic;	-- AXI Stream Interface reset
		s_axis_tvalid				: in  std_logic;
		s_axis_tready				: out std_logic;
		s_axis_tdata				: in  std_logic_vector(STREAM_DATA_WIDTH - 1 downto 0);
		s_axis_tuser				: in  std_logic_vector(  3 downto 0);
		-- Metadata Slave Interface
		s_mdata_StreamId			: in  std_logic_vector( 7 downto 0);
		s_mdata_SourceTag			: in  std_logic_vector(15 downto 0);
		s_mdata_Xsize				: in  std_logic_vector(23 downto 0);
		s_mdata_Xoffs				: in  std_logic_vector(23 downto 0);
		s_mdata_Ysize				: in  std_logic_vector(23 downto 0);
		s_mdata_Yoffs				: in  std_logic_vector(23 downto 0);
		s_mdata_DsizeL				: in  std_logic_vector(23 downto 0);
		s_mdata_PixelF				: in  std_logic_vector(15 downto 0);
		s_mdata_TapG				: in  std_logic_vector(15 downto 0);
		s_mdata_Flags				: in  std_logic_vector( 7 downto 0);
		s_mdata_Timestamp			: in  std_logic_vector(31 downto 0);
		s_mdata_PixProcFlgs			: in  std_logic_vector( 7 downto 0);
		s_mdata_Status				: in  std_logic_vector(31 downto 0);
		-- AXI Stream Master Interface
		m_axis_tvalid				: out std_logic;
		m_axis_tready				: in  std_logic;
		m_axis_tdata				: out std_logic_vector(STREAM_DATA_WIDTH - 1 downto 0);
		m_axis_tuser				: out std_logic_vector(  3 downto 0);
		-- Metadata Master Interface
		m_mdata_StreamId			: out std_logic_vector( 7 downto 0);
		m_mdata_SourceTag			: out std_logic_vector(15 downto 0);
		m_mdata_Xsize				: out std_logic_vector(23 downto 0);
		m_mdata_Xoffs				: out std_logic_vector(23 downto 0);
		m_mdata_Ysize				: out std_logic_vector(23 downto 0);
		m_mdata_Yoffs				: out std_logic_vector(23 downto 0);
		m_mdata_DsizeL				: out std_logic_vector(23 downto 0);
		m_mdata_PixelF				: out std_logic_vector(15 downto 0);
		m_mdata_TapG				: out std_logic_vector(15 downto 0);
		m_mdata_Flags				: out std_logic_vector( 7 downto 0);
		m_mdata_Timestamp			: out std_logic_vector(31 downto 0);
		m_mdata_PixProcFlgs			: out std_logic_vector( 7 downto 0);
		m_mdata_Status				: out std_logic_vector(31 downto 0);
		-- Memento Master Interface
		m_memento_event				: out std_logic;
		m_memento_arg0				: out std_logic_vector(31 downto 0);
		m_memento_arg1				: out std_logic_vector(31 downto 0)
    );
end entity CustomLogic;

architecture behav of CustomLogic is

	----------------------------------------------------------------------------
	-- Functions
	----------------------------------------------------------------------------
	function clog2(n : integer) return integer is
		variable m, p : integer;
	begin
		m := 0;
		p := 1;
		while p < n loop
		m := m + 1;
		p := p * 2;
		end loop;
		return m;
	end function;


	----------------------------------------------------------------------------
	-- Constants
	----------------------------------------------------------------------------
	constant IN_ROWS : integer := 300;
	constant IN_COLS : integer := 512;
	constant OUT_ROWS : integer := 48;
	constant OUT_COLS : integer := 48;
	constant NUM_CROPS : integer := 5;
	-- Crop-coordinates constant for now
	constant CROP_Y0_CONST : integer := 0;
	constant CROP_X0_CONST : integer := 0;
	constant CROP_IDX : integer := 0;
	

	----------------------------------------------------------------------------
	-- Types
	----------------------------------------------------------------------------
	type crop_coords_const is array (NUM_CROPS-1 downto 0) of integer;
	-- constant CROP_Y0_N_CONST : crop_coords_const := (0, 0, 2, 4, 27); -- 32x32_to_5x5x5
	-- constant CROP_Y0_N_CONST : crop_coords_const := (10, 10, 23, 43, 52); -- 100x160_to_48x48x5
	constant CROP_Y0_N_CONST : crop_coords_const := (0, 0, 20, 40, 252); -- 300x512_to_48x48x5
	
	-- constant CROP_X0_N_CONST : crop_coords_const := (0, 3, 0, 4, 27); -- 32x32_to_5x5x5
	-- constant CROP_X0_N_CONST : crop_coords_const := (10, 37, 10, 53, 99); -- 100x160_to_48x48x5
	constant CROP_X0_N_CONST : crop_coords_const := (0, 30, 0, 40, 464); -- 300x512_to_48x48x5


	type crop_coords_x_wire is array (NUM_CROPS-1 downto 0) of std_logic_vector(clog2(IN_COLS)-1 downto 0);
	type crop_coords_y_wire is array(NUM_CROPS-1 downto 0) of std_logic_vector(clog2(IN_ROWS)-1 downto 0);

	type output_mem_array is array (NUM_CROPS-1 downto 0, OUT_ROWS*OUT_COLS-1 downto 0) of std_logic_vector(7 downto 0);
	type cropped_output_array is array (NUM_CROPS-1 downto 0) of std_logic_vector(7 downto 0);
	type diff_array is array (NUM_CROPS-1 downto 0) of integer;
	----------------------------------------------------------------------------
	-- Signals
	----------------------------------------------------------------------------

	-- reset
	signal reset_rheed : std_logic;

	-- Slave-side handshake
	signal rheed_s_axis_tready : std_logic; 

	-- Master-side handshake
	signal rheed_m_axis_tvalid : std_logic_vector(NUM_CROPS-1 downto 0);
	signal rheed_m_axis_tdata : cropped_output_array;

	-- Custom downstream tready signal for randomized testbenching
	signal tb_s_axis_tready : std_logic_vector(NUM_CROPS-1 downto 0);

	-- Crop-coordinates
	signal crop_y0_n : crop_coords_y_wire;
	signal crop_x0_n : crop_coords_x_wire;

	--------- For testbenching ---------
	-- synthesis translate_off

	constant NUM_FRAMES : integer := 2;
	signal cnt_frame : integer := 0;

	-- For random-bit generator (drives downstream tready)
	signal lfsr_16bit_out : std_logic_vector(15 downto 0);

	-- Memory for output and benchmark-output
	signal idx_out : diff_array;
	signal out_mem          : output_mem_array;
    signal out_benchmark_mem: output_mem_array;
	--VHDL makes this so goddamn difficult to do in a loop
	constant OUT_BENCHMARK_FILE_0    : string := "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
											& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
											& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) & "x" & integer'image(NUM_CROPS)
											& "/Y1_" & integer'image(CROP_Y0_N_CONST(0)) &"_X1_" & integer'image(CROP_X0_N_CONST(0)) 
											& "/img_postnorm_INDEX.txt";
	constant OUT_BENCHMARK_FILE_1    : string := "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
											& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
											& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) & "x" & integer'image(NUM_CROPS)
											& "/Y1_" & integer'image(CROP_Y0_N_CONST(1)) &"_X1_" & integer'image(CROP_X0_N_CONST(1)) 
											& "/img_postnorm_INDEX.txt";
	constant OUT_BENCHMARK_FILE_2    : string := "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
											& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
											& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) & "x" & integer'image(NUM_CROPS)
											& "/Y1_" & integer'image(CROP_Y0_N_CONST(2)) &"_X1_" & integer'image(CROP_X0_N_CONST(2)) 
											& "/img_postnorm_INDEX.txt";
	constant OUT_BENCHMARK_FILE_3    : string := "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
											& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
											& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) & "x" & integer'image(NUM_CROPS)
											& "/Y1_" & integer'image(CROP_Y0_N_CONST(3)) &"_X1_" & integer'image(CROP_X0_N_CONST(3)) 
											& "/img_postnorm_INDEX.txt";
	constant OUT_BENCHMARK_FILE_4    : string := "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
											& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
											& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) & "x" & integer'image(NUM_CROPS)
											& "/Y1_" & integer'image(CROP_Y0_N_CONST(4)) &"_X1_" & integer'image(CROP_X0_N_CONST(4)) 
											& "/img_postnorm_INDEX.txt";

	-- synthesis translate_on


	----------------------------------------------------------------------------
	-- Debug
	----------------------------------------------------------------------------
	-- attribute mark_debug : string;
	-- attribute mark_debug of s_axis_resetn	: signal is "true";
	-- attribute mark_debug of s_axis_tvalid	: signal is "true";
	-- attribute mark_debug of s_axis_tready	: signal is "true";
	-- attribute mark_debug of s_axis_tuser		: signal is "true";

	
	----------------------------------------------------------------------------
	-- Components
	----------------------------------------------------------------------------


begin

	-- Bypass these connections for now. 
	m_axis_tdata <= s_axis_tdata;
	m_axis_tuser <= s_axis_tuser;
	m_axis_tvalid <= '1';

	-- Instantiate RHEED_inference module
	reset_rheed <= (not s_axis_resetn) or srst250;
	s_axis_tready <= rheed_s_axis_tready; -- For clarity's sake
	iRHEED : entity work.RHEED_inference
	generic map (
    	IN_ROWS 		=> IN_ROWS, 
    	IN_COLS         => IN_COLS,
    	OUT_ROWS        => OUT_ROWS,
    	OUT_COLS        => OUT_COLS,
		NUM_CROPS 		=> NUM_CROPS
	)
	port map(
      clk => clk250, 
      reset => reset_rheed,

	  ap_start => s_axis_tuser(0),

	  crop_x0 => crop_x0_n,
	  crop_y0 => crop_y0_n,
	  
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => rheed_s_axis_tready,
      s_axis_tdata => s_axis_tdata,

	  m_axis_tvalid => rheed_m_axis_tvalid,
	  m_axis_tready => tb_s_axis_tready,
	  m_axis_tdata => rheed_m_axis_tdata
    );


	--------- For testbenching ---------

	-- synthesis translate_off
	count_frames: process(s_axis_tuser)
	begin
		if falling_edge(s_axis_tuser(3)) then
			cnt_frame <= cnt_frame + 1;
		end if;
	end process;

	-- Drive downstream tready
	-- tb_s_axis_tready <= "11111";
	iRBG: entity work.lfsr_16bit
	port map (
		clk => clk250,
		reset => reset_rheed,
		Q => lfsr_16bit_out
	);
	tb_s_axis_tready <= lfsr_16bit_out(4 downto 0);

	-- Drive crop-coordiantes
	gen_assign : for i in NUM_CROPS-1 downto 0 generate
		crop_y0_n(i) <= std_logic_vector(to_unsigned(CROP_Y0_N_CONST(i), clog2(IN_ROWS)));
		crop_x0_n(i) <= std_logic_vector(to_unsigned(CROP_X0_N_CONST(i), clog2(IN_COLS)));
	end generate;

	-- Read benchmark file into memory
	load_cn_benchmark: process
        file file_handle_0, file_handle_1, file_handle_2, file_handle_3, file_handle_4       : text;
        variable line_content_0, line_content_1, line_content_2, line_content_3, line_content_4  : line;
        variable temp_vector_0, temp_vector_1, temp_vector_2, temp_vector_3, temp_vector_4   : std_logic_vector(7 downto 0);
        variable row_0, col_0, row_1, col_1, row_2, col_2, row_3, col_3, row_4, col_4      : integer;
    begin
        file_open(file_handle_0, OUT_BENCHMARK_FILE_0, read_mode);
        file_open(file_handle_1, OUT_BENCHMARK_FILE_1, read_mode);
        file_open(file_handle_2, OUT_BENCHMARK_FILE_2, read_mode);
        file_open(file_handle_3, OUT_BENCHMARK_FILE_3, read_mode);
        file_open(file_handle_4, OUT_BENCHMARK_FILE_4, read_mode);

        
        for row in 0 to OUT_ROWS-1 loop

            readline(file_handle_0, line_content_0);
            readline(file_handle_1, line_content_1);
            readline(file_handle_2, line_content_2);
            readline(file_handle_3, line_content_3);
            readline(file_handle_4, line_content_4);

            for col in 0 to OUT_COLS-1 loop
                -- Read hexadecimal value from line
                hread(line_content_0, temp_vector_0);
                hread(line_content_1, temp_vector_1);
                hread(line_content_2, temp_vector_2);
                hread(line_content_3, temp_vector_3);
                hread(line_content_4, temp_vector_4);

                -- Calculate 1D index from 2D coordinates
                out_benchmark_mem(0, row * OUT_COLS + col) <= temp_vector_0;
                out_benchmark_mem(1, row * OUT_COLS + col) <= temp_vector_1;
                out_benchmark_mem(2, row * OUT_COLS + col) <= temp_vector_2;
                out_benchmark_mem(3, row * OUT_COLS + col) <= temp_vector_3;
                out_benchmark_mem(4, row * OUT_COLS + col) <= temp_vector_4;

            end loop;
        end loop;
        
        file_close(file_handle_0);
        file_close(file_handle_1);
        file_close(file_handle_2);
        file_close(file_handle_3);
        file_close(file_handle_4);

        wait;
    end process;

	-- Data capture and verification process

    cn_data_capture: process(clk250)
    begin
        if rising_edge(clk250) then
			-- for crop_idx in 1 downto 0 loop
			for crop_idx in NUM_CROPS-1 downto 0 loop
				if reset_rheed = '1' or idx_out(crop_idx) = OUT_ROWS*OUT_COLS then -- TODO: why not OUT_ROWS*OUT_COLS-1 ?
					idx_out(crop_idx) <= 0;
				else
				
					if rheed_m_axis_tvalid(crop_idx) = '1' and tb_s_axis_tready(crop_idx) = '1' then
						-- Capture DUT output
						out_mem(crop_idx, idx_out(crop_idx)) <= rheed_m_axis_tdata(crop_idx);
						
						-- Verify against benchmark
						-- assert (to_integer(unsigned(out_benchmark_mem(crop_idx, idx_out(crop_idx)))) - to_integer(unsigned(rheed_m_axis_tdata(crop_idx) ) ) = 1)
						assert (to_integer(unsigned(out_benchmark_mem(crop_idx, idx_out(crop_idx)))) - to_integer(unsigned(rheed_m_axis_tdata(crop_idx) ) ) < 3) and (to_integer(unsigned(out_benchmark_mem(crop_idx, idx_out(crop_idx)))) - to_integer(unsigned(rheed_m_axis_tdata(crop_idx) ) ) > -3)
							report "CropNorm mismatch at crop_idx " & integer'image(crop_idx) & ", out_idx " & integer'image(idx_out(crop_idx)) 
								& " (Row=" & integer'image(idx_out(crop_idx)/OUT_COLS) 
								& ", Col=" & integer'image(idx_out(crop_idx) mod OUT_COLS) & ")" 
								& " Expected: " & integer'image(to_integer(unsigned(out_benchmark_mem(crop_idx, idx_out(crop_idx)))))
								& " Received: " & integer'image(to_integer(unsigned(rheed_m_axis_tdata(crop_idx)))) 
								& " Diff = " & integer'image(to_integer(unsigned(out_benchmark_mem(crop_idx, idx_out(crop_idx)))) - to_integer(unsigned(rheed_m_axis_tdata(crop_idx) ) ))
							severity error;

						-- Increment index
						idx_out(crop_idx) <= idx_out(crop_idx) + 1;
					end if;
				end if;
			end loop;

        end if;
	end process;

	save_output: process(cnt_frame)
		file out_file : text;
        variable out_line : line;
        variable file_status : file_open_status;
	begin

		if cnt_frame = NUM_FRAMES then 

			for crop_idx in NUM_CROPS-1 downto 0 loop
            file_open(file_status, 
						out_file, 
						"/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
						& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
						& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) & "x" & integer'image(NUM_CROPS)
						& "/Y1_" & integer'image(CROP_Y0_N_CONST(crop_idx)) &"_X1_" & integer'image(CROP_X0_N_CONST(crop_idx)) 
						& "/HDL_cropnorm_out.txt", 
						write_mode);
            
            if file_status /= open_ok then
                report "Failed to open file for layer " & integer'image(crop_idx)
                severity failure;
            end if;

            for row in 0 to OUT_ROWS-1 loop
                for col in 0 to OUT_ROWS-1 loop
                    -- Write each element followed by a space
                    hwrite(out_line, out_mem(crop_idx, row*OUT_COLS + col));
                    write(out_line, ' ');
                end loop;
                -- Write completed line to file
                writeline(out_file, out_line);
            end loop;
            
            file_close(out_file);
        end loop;

        report "All crop-norm outputs written successfully";
        -- wait;

		end if;

		
	end process;

	-- synthesis translate_on
	
end behav;
