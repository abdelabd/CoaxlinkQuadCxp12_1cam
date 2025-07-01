// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Jun 30 18:09:38 2025
// Host        : DESKTOP-Q0UCNGC running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/07_vivado_project/CustomLogic.gen/sources_1/ip/axis_fifo/axis_fifo_sim_netlist.v
// Design      : axis_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku035-fbva676-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axis_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module axis_fifo
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
  axis_fifo_fifo_generator_v13_2_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 69344)
`pragma protect data_block
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
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
