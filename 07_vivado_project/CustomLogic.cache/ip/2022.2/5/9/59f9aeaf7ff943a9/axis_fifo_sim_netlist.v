// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Jun 17 18:51:35 2025
// Host        : DESKTOP-Q0UCNGC running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axis_fifo_sim_netlist.v
// Design      : axis_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku035-fbva676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axis_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tuser);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) input [3:0]s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output [3:0]m_axis_tuser;

  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire [3:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [12:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [12:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [12:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "4" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "4" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "4" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "12" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "5" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "5" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "5" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "4094" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "4095" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "4096" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "12" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[12:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[12:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[12:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(s_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uS/dIpDTldS7400uyLsI6bJxO+WmZJrKXsU8qB+wpyI+d4PWZVO6Cm0qMQFNUZb63p6zCI5fvnQy
SxjaSP1nCte/oQZc55w1rQbTqy54T9kryRoH26nDjSBVZvJ8hffw7NONwiKrqeB6I7HJKX5RKw73
wIJxNNH7BCiCEtRLIxc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L7q2sHnC0pU7uHs8shPm9nAcqyU+hUFnNkd6BPHl+ureEVBUvubWhEbLRLiFFJveufcmAfAXTzae
tWbKcVVt/zKzWEtv0onUXoSEgyS4+QaTAFeCPHR2bbnlP0aCCG2SYmC1dv16cFoAk/NLitClNXAv
h+UBGzod+suWv55DaNHeHtSZ/YLZxHdn/R47atTiQM+A1TWQkpa3faF/L9ANZISSe/OR6mPfQ/Zk
4AptHNmW/pWpd3JL4e06iK9P6ZLLRqSMR9mu6AFIeWYBVz+KkxgSIWgQO7/AHBUFjlIiMFhyQR5Y
UC1fo4CPZX7fMdUPwQiC+eZ7UtxMAUzovIzwEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KZhqqPnSEvcItoYRHrFT/Wt2IEXHe7pq5lmAOfYqAaaoY8mpIG3Kd8B/C4s9kNUbktSOX78NnnrJ
brxcu/1EAlI9itnDH8ahxble+2Nt/Lj3dQ1/wbDy3HOKlwBVuOvVDArOpgho+BAnoLUZXrpsw8EI
FSIPKmsETVzLzZDw6m0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZbb0PsQl1vn7dY/rZzI8ZGsAP5Ad4C/d2cBXS49yTbQqKMTY7r1YHlrjBGteY6wrhKVmM92u/3/
/UJWPyNVqwcsrRAHhR/Lp3Mg87NIhYzETdNAOpnc7rWC9ieIeEiyPM734sI7QtAMVrZxXoUXnCjp
fjQhaMqv+HsuEWpFhDail+v8Ftwmr5xP1JSpqPfxLz5a6+q8/lTxRGeWZokM7vP2YFKg7L7Yoowh
gOm5w3JhR2fXZsksWxfQk7885JzsI4yZOrU8dY667YWWhkjZE/SKo2TMksiasL22T6CpyUbMwQm2
DJ+cMJbr9/8csBEifIsopc4V9zFbSU9eoxlqZA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Adid/GOKDljgmM7UpkmD6EVL+5rt6bnWK9P8RIZiI3EkLW96rM6eCs7jkLeKnEW/WPGRhlZrGw8p
C7Ni27oibJKJT5xUBJDymbO+yheaaTI0GaeDMIzks860gYA3qdvTPxTBotaOg6MIpnYd070NhTod
Qq5XNnxLuF7/s5rAZANJHyRQKwu4gVBfs5SU2FSjF546M5FvN7BX6G7B76ALW6vKqGyKxwoHkc52
Bm8/jGTxJ6zbwn2v31NEfjO6nM5m6yYwY0476QLXWI6+7/ILkSvDVTt7B9HpcaRg3n3T4AEQDMyX
8bBPgm0qFbWZue0dlr9ljYOl0dgwaO8G9uYe9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tq2b3cw7fnIOEbRUxnQIgAjXwRE3aRwj2IBVmS0S998fvCLPMUtm5MVXAqk0TwuEzKG3br/oRham
Oe5KAx6FauTTVpRhLH5RY3832M9OVTSW/bNq12/dXnJyOfYS76FQtd9HNFrSkVPMONGMD0ZQXRic
Yr0MaeflUHQmU6QUCt5OJkbG4F8qJLMWJsg03K7dNzDfkvev3QVf72bmHTm4SF6/cs94NXQl/NPr
CzQorTZ5BgCzVAui7mM0eu3mu6OPkecNQ3Ih+1zsJuGkAHWC7aFgh7ii6xEj1upD365TzJUF1ZCe
0jZj/Ub1m5OgZMbjbLYn/Fh5nqi+fAmL7jDAHQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+EkimFGNL3D/SKyjUVYhIZzRbEoTqlnv2kHD0e4rYYCt/O4IYecNmch6HRfd2U/WSZPkAoJ+xa7
GKQSo51PL81HSvqURo2CxltObyTYiklnzGtbdWUMpOSCjDe8LpQjUNwhSksWjZjUQypyYXS4hbCR
VJy96ow8zi5m1XMzoLaVMDYoJYLtOVh7eaL7InaIL5gXJIHWkhoKYh9bR/O5HE6YTsgZl+Ofmx/3
0mQ/bL5ZKSY6gBEUD8f5+SoMIjfXrGkjMj1+fEAIv0fO/wKyJQMKnDOgWMvcUw56dOJ7FWkbNvbC
kzquuXhk5LuzZfXWmhyDSyMGBWK1wN7iyMKMUg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
LQ4hjhkD/G9XJd+gVR5WF2vSll/p8/psR+nHjJ5/DHrtiRqVWFVc7B7T9XZuJBmTqrQV4iSBYWDo
zNaVdq26mGk6TTNo11Dcici0hEwC2Bg66k9kr1if+0iZo3VtB/ZuEOj2w7euhFo3ja1OovnDXxf0
8t4WMUK68mfUiMuKgVcbOFhm3Jdnbnz4u7SggH2/rkfOS8jbon9q9n0EXlK23tz2NzDLCS8B7ERx
dYvwqwBiySKoP1/EcfSwFNIWpr6p7kbRo7iM/JbP6UwBbkDHgE8HGS+3lTXIUXsmGmsx6EDSr/gY
i7lHwZTmDuhuIEJaf6gTJgtqMSxVyDVsrnba5umKgV8z5OOWUkM3FjVWIXOG7Ef2iKFCzBPmp2Lk
8XbrXk/bb9H/jr4UR3hgdbizISTysLTJd4n5uyeDhDgkxAc+1FudacmuZyBlA/VTR1f0i9+cOgLI
kdqbo1u5hQwnMphluBKjdTA3nZ8VnpDbdq5R7hIF61tIrUfdjwQw02je

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JzhYMwmYowESMI19XNb+BEFcZw3IXZpwZO3gzrVg2CdSjbAR3tiIVbPHI5Rgu59SH7H8abU59Atd
+nrPiG37rmU6CD+cMV2mU8SHfCDLYsnrbd9YLZ1GEfqTovR0NZHQTHj+7c5dP7nqm30C/kg1adqd
DOV7F128PbmM5U45xRxOJKUgS/Waz0gvmYKKJejkiyFPOgGbN5f844mtysoOckLrAU/BzRs8SB9G
zzisK/a8hM5af8/opZ64TGhH44Npzy8kcP+gI+k+U0oF0SOqW7CjadKaJhr2oDkTScVVCbBqFEjc
2gH862vcCfZu5Cd0Sp2ALgoqVxA+91lAIHJp3Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ooNS+XjsaWLRgvcrNWVpR3ihKtIJNT1oT4D5ivD5mCfw+4/SAyx9P4cmdvOotLNPE1eqvx1Smd9Q
LDImL/GqS7Cq3KEUtEBbvQAOp+0SjiW74cC6nyOqCA8NQcn5JM+vUzGSsORPnM5qP96axGmyEvSi
p3uL9Gmx+3S3KUJuAzfuqZwJD7gdcA0Zv3hPRl+xhx8qFtkPCfT5uj7wpFVaaJ8tTl1SDd2uRUIx
rgVgV+oERCg71oEVN7PqPK1y7pFVgSW9uhP1wuvO/EsbyrLYZV6HtBn3tJDcxhTsQWrrou3F1kFQ
cFnl9tcL1wXJo/F3wvsbYM1W0UPHv69XAsEUhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d8YRbu+fllaHlNDedyRNDRtn9CBoVbO9fZCdhKpy0yf9dL6A08sFZuWVtVGljxF/L9volGB0IRjl
KbH2N/JBQA+tZWuh75kK5pjveAAKLVACS8A+Jmt/mrxzlolPWsruJ8o1Owrjq5tGWspdqmeDGS7U
/Ww7cN0C9ExUj4cjRDcKaqDS9MGwRtx4LfcQbQbRDZBk+cyRaWCchvmhjoum4uTizvqMq2u4oSym
t2zyKFjAuMO4zC2LbPbODeumm+FhlOKAHRyEBKA+VQeLB4apkMYparuD5AFWAuVvdWEbGq/L4cJ7
pEGz+6Hqi68CfF/4tMNiyHveP1lxnyAaiW6Kjg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 69568)
`pragma protect data_block
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
BF4dzhFUF942wukkJcW114z25dfnj3bbFo40nQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
