// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Jun 17 18:51:35 2025
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
vA8RzocB08e1fvs5ejPpSZMIYzYo8lCZWkF8kEx+90vjhwUUPpeLxQZDFCW2onuMWUf2lriP1u6N
wAraGy/DOznjTtj3m7wTfu2I1UsydAeSTgD37f5L6tLuRp3FXVNWxxcEYpXOWy6RQ5DskQ9Gcb+Y
CxXky2OnNDxnPtjonY6aoKS/lZOXloKMFVkoCEJEfdXMHbfkZOM8fNyJfYczhKU4iQbbBqPrDcE0
KJk4J9O8nN5fCUIkw1APDwYdCE4xNI8Cx7boux2IjUYYnNQrm13DaFMX4epcNrbalWvUy5sO3Zvq
ASmff3lyDLeEv56PNr+zHt7EfgCE3KYbW606OVquL5gIuEFtHlrZf9dw8Kp5ecUY91SFgyALkAeg
x7Qx1V+mhHYrZruda8PtygSJ/MT/TwwkMVAIAA+6V4nbOr19Ov8vDi+WdtYn/aZ9eRuzGSZSsBGu
Z428vTScAOVEcTTDGyAeZl6FrewH3KTFY9GlEl6i4r44kZYwKwPr4Ku3OjXYD52jYsBnlNVBo3kt
vckTXiy149EYCosql9kIFNvP2yjQ3arNtarqkxD7tSczZrQzMs8V4z1nsTroTXRYQlzEgic9mr8+
a9MjTfenL+Eg///E+7URXxrNMYB5fX44e2BIw8udY+599aLlGeZZnIlfbCPhpOppkF2zCzShvxhe
FhP/8tKL/386zpTJpEjcSHxV7YpgqEZzFjVo3xdjCDJuFs6wlyyX6BX1sKk+xwNWtypZlh6Jgz9d
n6RdyQMVXNDpMPdZPLlc+AjWlob5zAjwEVxB6RGhBkBX2NQfl5Qv23i9VLrGJGAlRFQkgyKCZPb7
StZ8uTDl+RyrGwvdmTy7ij1LcUnCXPMe9YZVQU/GuPCdfIuiOikRIukwK/CtoMESAtqqr7IaE44c
t4pG++gO/dPRtincxR7yevU9knJt8QnNkvbuHxNktBcN7c1q2o3wtogNfJQ2kGPQvwd3KWx1R/i/
ibxn0UvIF4MC/D0eP5Jc8SxeEoom3kM/5Q1rvHME3+B3Mrn+8B+kJ/gqj3UyDYp3szIP+FH6FoWm
Ris0RbvPVwJRIw3QTunAMmD+90AkZZICtEZcIj4suBuTrUXq+f487C1nTOSUFY9++DMVptXIxkIT
tEyKjJH2mUPcoHQg12aG4/nUWBuJc+RvbysrQqZggoeMegPcW/lSj4Wcl+VI76vVOIBpPeb+1OtN
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
