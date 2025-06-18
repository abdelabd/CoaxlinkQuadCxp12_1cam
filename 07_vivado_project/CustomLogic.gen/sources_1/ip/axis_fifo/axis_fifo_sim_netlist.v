// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Jun 17 19:11:07 2025
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
