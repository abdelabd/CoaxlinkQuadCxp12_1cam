-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pix_threshold is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    VideoIn_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    VideoIn_TVALID : IN STD_LOGIC;
    VideoIn_TREADY : OUT STD_LOGIC;
    VideoOut_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    VideoOut_TVALID : OUT STD_LOGIC;
    VideoOut_TREADY : IN STD_LOGIC;
    MetaIn : IN STD_LOGIC_VECTOR (287 downto 0);
    MetaIn_ap_vld : IN STD_LOGIC;
    MetaOut : OUT STD_LOGIC_VECTOR (287 downto 0);
    threshold_value : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of pix_threshold is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "pix_threshold_pix_threshold,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcku035-fbva676-2-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.200000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=860,HLS_SYN_LUT=663,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv288_lc_1 : STD_LOGIC_VECTOR (287 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal MetaIn_preg : STD_LOGIC_VECTOR (287 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal MetaIn_ap_vld_preg : STD_LOGIC := '0';
    signal MetaIn_ap_vld_in_sig : STD_LOGIC;
    signal MetaIn_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_pix_threshold_proc_fu_64_ap_start : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_ap_done : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_ap_idle : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_ap_ready : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_VideoIn_TREADY : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_VideoOut_TDATA : STD_LOGIC_VECTOR (511 downto 0);
    signal grp_pix_threshold_proc_fu_64_VideoOut_TVALID : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_VideoOut_TREADY : STD_LOGIC;
    signal grp_pix_threshold_proc_fu_64_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal MetaOut_preg : STD_LOGIC_VECTOR (287 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal regslice_both_VideoOut_U_apdone_blk : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal regslice_both_VideoIn_U_apdone_blk : STD_LOGIC;
    signal VideoIn_TDATA_int_regslice : STD_LOGIC_VECTOR (511 downto 0);
    signal VideoIn_TVALID_int_regslice : STD_LOGIC;
    signal VideoIn_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_VideoIn_U_ack_in : STD_LOGIC;
    signal VideoOut_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_VideoOut_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pix_threshold_pix_threshold_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        VideoIn_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
        VideoIn_TVALID : IN STD_LOGIC;
        VideoIn_TREADY : OUT STD_LOGIC;
        VideoOut_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
        VideoOut_TVALID : OUT STD_LOGIC;
        VideoOut_TREADY : IN STD_LOGIC;
        threshold_value : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component pix_threshold_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    grp_pix_threshold_proc_fu_64 : component pix_threshold_pix_threshold_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_pix_threshold_proc_fu_64_ap_start,
        ap_done => grp_pix_threshold_proc_fu_64_ap_done,
        ap_idle => grp_pix_threshold_proc_fu_64_ap_idle,
        ap_ready => grp_pix_threshold_proc_fu_64_ap_ready,
        VideoIn_TDATA => VideoIn_TDATA_int_regslice,
        VideoIn_TVALID => VideoIn_TVALID_int_regslice,
        VideoIn_TREADY => grp_pix_threshold_proc_fu_64_VideoIn_TREADY,
        VideoOut_TDATA => grp_pix_threshold_proc_fu_64_VideoOut_TDATA,
        VideoOut_TVALID => grp_pix_threshold_proc_fu_64_VideoOut_TVALID,
        VideoOut_TREADY => grp_pix_threshold_proc_fu_64_VideoOut_TREADY,
        threshold_value => threshold_value);

    regslice_both_VideoIn_U : component pix_threshold_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => VideoIn_TDATA,
        vld_in => VideoIn_TVALID,
        ack_in => regslice_both_VideoIn_U_ack_in,
        data_out => VideoIn_TDATA_int_regslice,
        vld_out => VideoIn_TVALID_int_regslice,
        ack_out => VideoIn_TREADY_int_regslice,
        apdone_blk => regslice_both_VideoIn_U_apdone_blk);

    regslice_both_VideoOut_U : component pix_threshold_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_pix_threshold_proc_fu_64_VideoOut_TDATA,
        vld_in => grp_pix_threshold_proc_fu_64_VideoOut_TVALID,
        ack_in => VideoOut_TREADY_int_regslice,
        data_out => VideoOut_TDATA,
        vld_out => regslice_both_VideoOut_U_vld_out,
        ack_out => VideoOut_TREADY,
        apdone_blk => regslice_both_VideoOut_U_apdone_blk);





    MetaIn_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                MetaIn_ap_vld_preg <= ap_const_logic_0;
            else
                if ((not(((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = MetaIn_ap_vld))) then 
                    MetaIn_ap_vld_preg <= MetaIn_ap_vld;
                elsif (((regslice_both_VideoOut_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    MetaIn_ap_vld_preg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    MetaIn_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                MetaIn_preg <= ap_const_lv288_lc_1;
            else
                if ((not(((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = MetaIn_ap_vld))) then 
                    MetaIn_preg <= MetaIn;
                end if; 
            end if;
        end if;
    end process;


    MetaOut_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                MetaOut_preg <= ap_const_lv288_lc_1;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_logic_1 = MetaIn_ap_vld_in_sig))) then 
                    MetaOut_preg <= MetaIn_preg;
                end if; 
            end if;
        end if;
    end process;


    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_pix_threshold_proc_fu_64_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_pix_threshold_proc_fu_64_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_logic_1 = MetaIn_ap_vld_in_sig))) then 
                    grp_pix_threshold_proc_fu_64_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pix_threshold_proc_fu_64_ap_ready = ap_const_logic_1)) then 
                    grp_pix_threshold_proc_fu_64_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, MetaIn_ap_vld_in_sig, ap_CS_fsm_state2, grp_pix_threshold_proc_fu_64_ap_done, ap_CS_fsm_state3, ap_CS_fsm_state4, regslice_both_VideoOut_U_apdone_blk)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_logic_1 = MetaIn_ap_vld_in_sig))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_pix_threshold_proc_fu_64_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((regslice_both_VideoOut_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    MetaIn_ap_vld_in_sig <= MetaIn_ap_vld_preg;

    MetaIn_blk_n_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            MetaIn_blk_n <= ap_const_logic_0;
        else 
            MetaIn_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    MetaOut_assign_proc : process(MetaIn_preg, MetaIn_ap_vld_in_sig, ap_CS_fsm_state2, MetaOut_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_logic_1 = MetaIn_ap_vld_in_sig))) then 
            MetaOut <= MetaIn_preg;
        else 
            MetaOut <= MetaOut_preg;
        end if; 
    end process;

    VideoIn_TREADY <= regslice_both_VideoIn_U_ack_in;

    VideoIn_TREADY_int_regslice_assign_proc : process(grp_pix_threshold_proc_fu_64_VideoIn_TREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            VideoIn_TREADY_int_regslice <= grp_pix_threshold_proc_fu_64_VideoIn_TREADY;
        else 
            VideoIn_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    VideoOut_TVALID <= regslice_both_VideoOut_U_vld_out;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(MetaIn_ap_vld_in_sig)
    begin
        if ((ap_const_logic_0 = MetaIn_ap_vld_in_sig)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state3_blk_assign_proc : process(grp_pix_threshold_proc_fu_64_ap_done)
    begin
        if ((grp_pix_threshold_proc_fu_64_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state4_blk_assign_proc : process(regslice_both_VideoOut_U_apdone_blk)
    begin
        if ((regslice_both_VideoOut_U_apdone_blk = ap_const_logic_1)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state4, regslice_both_VideoOut_U_apdone_blk)
    begin
        if (((regslice_both_VideoOut_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4, regslice_both_VideoOut_U_apdone_blk)
    begin
        if (((regslice_both_VideoOut_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    grp_pix_threshold_proc_fu_64_VideoOut_TREADY <= (ap_CS_fsm_state3 and VideoOut_TREADY_int_regslice);
    grp_pix_threshold_proc_fu_64_ap_start <= grp_pix_threshold_proc_fu_64_ap_start_reg;
end behav;
