// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jul  4 19:20:15 2025
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
