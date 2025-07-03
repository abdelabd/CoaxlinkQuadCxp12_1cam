// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jul  3 16:00:13 2025
// Host        : DESKTOP-Q0UCNGC running 64-bit Ubuntu 24.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aelabd/RHEED/CoaxlinkQuadCxp12_1cam/07_vivado_project/CustomLogic.gen/sources_1/ip/axis_fifo_2/axis_fifo_sim_netlist.v
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
