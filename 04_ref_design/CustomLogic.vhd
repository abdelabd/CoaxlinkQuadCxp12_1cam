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
	-- Constants
	----------------------------------------------------------------------------
	constant IN_ROWS : integer := 100;
	constant IN_COLS : integer := 160;
	constant OUT_ROWS : integer := 48;
	constant OUT_COLS : integer := 48;
	-- Crop-coordinates constant for now
	constant CROP_Y0_CONST : integer := 52;
	constant CROP_X0_CONST : integer := 112;


	----------------------------------------------------------------------------
	-- Types
	----------------------------------------------------------------------------
	type output_array is array (4 downto 0) of std_logic_vector(7 downto 0);

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
	-- Components
	----------------------------------------------------------------------------


	----------------------------------------------------------------------------
	-- Signals
	----------------------------------------------------------------------------

	-- reset
	signal reset_rheed : std_logic;

	-- Slave-side handshake
	signal rheed_s_axis_tready : std_logic; 

	-- Master-side handshake
	signal rheed_m_axis_tvalid : std_logic;
	signal rheed_m_axis_tdata : std_logic_vector(39 downto 0);

	-- Custom downstream tready signal for randomized testbenching
	signal tb_s_axis_tready : std_logic;

	-- Crop-coordinates 
  	signal crop_x0   : std_logic_vector(clog2(IN_COLS)-1 downto 0);
	signal crop_y0   : std_logic_vector(clog2(IN_ROWS)-1 downto 0);

	--------- For testbenching ---------
	-- synthesis translate_off

	-- For random-bit generator (drives downstream tready)
	signal lfsr_16bit_out : std_logic_vector(15 downto 0);

	-- Memory for output and benchmark-output
	signal idx_out : integer := 0;
	signal out_mem          : output_array;
    signal out_benchmark_mem: output_array;
	constant OUT_BENCHMARK_FILE    : string  := "/home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/tb_data_Mono8/" 
											& integer'image(IN_ROWS) & "x" & integer'image(IN_COLS) 
											& "_to_" & integer'image(OUT_ROWS) & "x" & integer'image(OUT_COLS) 
											& "x1/Y1_" & integer'image(CROP_Y0_CONST) &"/X1_" & integer'image(CROP_X0_CONST) 
											& "/QKeras_pred.txt";

	signal out_diff : integer; -- to compare output and benchmark output

	-- synthesis translate_on

	----------------------------------------------------------------------------
	-- Debug
	----------------------------------------------------------------------------
	-- TODO: Clean this up
	-- attribute mark_debug : string;
	-- attribute mark_debug of s_axis_resetn	: signal is "true";
	-- attribute mark_debug of s_axis_tvalid	: signal is "true";
	-- attribute mark_debug of s_axis_tready	: signal is "true";
	-- attribute mark_debug of s_axis_tuser		: signal is "true";

	----------------------------------------------------------------------------
	-- FPGAs for RHEED
	----------------------------------------------------------------------------

	-------------------------------- Parameters --------------------------------

	
	-------------------------------- RHEED_inference wires --------------------------------

	

	-------------------------------- Testbenching wires --------------------------------
	
	

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
    	OUT_COLS        => OUT_COLS
	)
	port map(
      clk => clk250, 
      reset => reset_rheed,

	  ap_start => s_axis_tuser(0),

	  crop_x0 => crop_x0,
	  crop_y0 => crop_y0,
	  
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => rheed_s_axis_tready,
      s_axis_tdata => s_axis_tdata,

	  m_axis_tvalid => rheed_m_axis_tvalid,
	  m_axis_tready => tb_s_axis_tready,
	  m_axis_tdata => rheed_m_axis_tdata
    );


	--------- For testbenching ---------

	-- synthesis translate_off

	-- Drive downstream tready
	-- tb_s_axis_tready <= '1';
	iRBG: entity work.lfsr_16bit
	port map (
		clk => clk250,
		reset => reset_rheed,
		Q => lfsr_16bit_out
	);
	tb_s_axis_tready <= lfsr_16bit_out(0);

	-- Drive crop-coordiantes
	crop_y0 <= std_logic_vector(to_unsigned(CROP_Y0_CONST, clog2(IN_ROWS)));
	crop_x0 <= std_logic_vector(to_unsigned(CROP_X0_CONST, clog2(IN_COLS)));

	-- Read benchmark file into memory
	load_cn_benchmark: process
        file file_handle       : text;
        variable line_content  : line;
        variable temp_vector   : std_logic_vector(7 downto 0);
        variable row, col      : integer;
    begin
        file_open(file_handle, OUT_BENCHMARK_FILE, read_mode);
        readline(file_handle, line_content);
        for row in 4 downto 0 loop
            hread(line_content, temp_vector);
            out_benchmark_mem(row) <= temp_vector;
        end loop;
        
        file_close(file_handle);
        wait;
    end process;

	-- Data capture and verification process
    inference_data_capture: process(clk250)
    begin
        if rising_edge(clk250) then
            if reset_rheed = '1' or idx_out = OUT_ROWS*OUT_COLS then -- TODO: why not OUT_ROWS*OUT_COLS-1 ?
                idx_out <= 0;
				out_diff <= 0;
            else
                if rheed_m_axis_tvalid = '1' and tb_s_axis_tready = '1' then
                    -- Capture DUT output
					out_mem(4) <= rheed_m_axis_tdata(39 downto 32);
					out_mem(3) <= rheed_m_axis_tdata(31 downto 24);
					out_mem(2) <= rheed_m_axis_tdata(23 downto 16);
					out_mem(1) <= rheed_m_axis_tdata(15 downto 8);
					out_mem(0) <= rheed_m_axis_tdata(7 downto 0);

					-- out_diff <= to_integer(unsigned(out_benchmark_mem(idx_out))) - to_integer(unsigned(rheed_m_axis_tdata));
                    
                    -- Verify against benchmark
					-- assert (out_diff = 0)
                    -- -- assert (nr_diff < 3) and (nr_diff > -3)
                    --     report "CropNorm mismatch at index " & integer'image(idx_out) 
                    --            & " (Row=" & integer'image(idx_out/OUT_COLS) 
                    --            & ", Col=" & integer'image(idx_out mod OUT_COLS) & ")" 
                    --            & " Expected: " & integer'image(to_integer(unsigned(out_benchmark_mem(idx_out))))
					-- 		   & " Received: " & integer'image(to_integer(unsigned(rheed_m_axis_tdata))) 
					-- 		   & " Diff = " & integer'image(out_diff)
                    --     severity error;

                    -- Increment index
                    idx_out <= idx_out + 1;
                end if;
            end if;
        end if;
	end process;

	-- synthesis translate_on
	
end behav;
