//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Mon May 25 19:13:36 2020
//Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target mac_phy.bd
//Design      : mac_phy
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mac_phy,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mac_phy,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mac_phy.hwdef" *) 
module mac_phy
   (aux_resetn,
    core_clk156_out,
    core_status_ch0,
    core_status_ch1,
    m_axis_rx_0_tdata,
    m_axis_rx_0_tkeep,
    m_axis_rx_0_tlast,
    m_axis_rx_0_tuser,
    m_axis_rx_0_tvalid,
    m_axis_rx_1_tdata,
    m_axis_rx_1_tkeep,
    m_axis_rx_1_tlast,
    m_axis_rx_1_tuser,
    m_axis_rx_1_tvalid,
    mb_clk,
    prtad_ch0,
    prtad_ch1,
    refclk_diff_port_clk_n,
    refclk_diff_port_clk_p,
    reset,
    reset_n,
    resetdone_ch0,
    rx_resetdone_ch1,
    rx_statistics_ch0_valid,
    rx_statistics_ch0_vector,
    rx_statistics_ch1_valid,
    rx_statistics_ch1_vector,
    rxn_ch0,
    rxn_ch1,
    rxp_ch0,
    rxp_ch1,
    s_axi_aresetn,
    s_axis_pause_ch0_tdata,
    s_axis_pause_ch0_tvalid,
    s_axis_pause_ch1_tdata,
    s_axis_pause_ch1_tvalid,
    s_axis_tx_0_tdata,
    s_axis_tx_0_tkeep,
    s_axis_tx_0_tlast,
    s_axis_tx_0_tready,
    s_axis_tx_0_tuser,
    s_axis_tx_0_tvalid,
    s_axis_tx_1_tdata,
    s_axis_tx_1_tkeep,
    s_axis_tx_1_tlast,
    s_axis_tx_1_tready,
    s_axis_tx_1_tuser,
    s_axis_tx_1_tvalid,
    sim_speedup_control_ch0,
    sim_speedup_control_ch1,
    tx_disable_ch0,
    tx_disable_ch1,
    tx_resetdone_ch1,
    tx_statistics_ch0_valid,
    tx_statistics_ch0_vector,
    tx_statistics_ch1_valid,
    tx_statistics_ch1_vector,
    txclk322_ch1,
    txn_ch0,
    txn_ch1,
    txp_ch0,
    txp_ch1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AUX_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AUX_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aux_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CORE_CLK156_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CORE_CLK156_OUT, ASSOCIATED_BUSIF s_axis_pause_ch1:s_axis_pause_ch0, CLK_DOMAIN mac_phy_ten_gig_eth_pcs_pma_ch0_0_coreclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000" *) output core_clk156_out;
  output [7:0]core_status_ch0;
  output [7:0]core_status_ch1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx_0, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [63:0]m_axis_rx_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_0 TKEEP" *) output [7:0]m_axis_rx_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_0 TLAST" *) output m_axis_rx_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_0 TUSER" *) output m_axis_rx_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_0 TVALID" *) output m_axis_rx_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx_1, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [63:0]m_axis_rx_1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_1 TKEEP" *) output [7:0]m_axis_rx_1_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_1 TLAST" *) output m_axis_rx_1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_1 TUSER" *) output m_axis_rx_1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx_1 TVALID" *) output m_axis_rx_1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MB_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MB_CLK, ASSOCIATED_BUSIF M03_AXI_0:M05_AXI_0, CLK_DOMAIN mac_phy_mb_clk, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000" *) input mb_clk;
  input [4:0]prtad_ch0;
  input [4:0]prtad_ch1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 refclk_diff_port CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME refclk_diff_port, CAN_DEBUG false, FREQ_HZ 156250000" *) input refclk_diff_port_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 refclk_diff_port CLK_P" *) input refclk_diff_port_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  input reset_n;
  output resetdone_ch0;
  output rx_resetdone_ch1;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics_ch0 valid" *) output rx_statistics_ch0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics_ch0 vector" *) output [29:0]rx_statistics_ch0_vector;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics_ch1 valid" *) output rx_statistics_ch1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics_ch1 vector" *) output [29:0]rx_statistics_ch1_vector;
  input rxn_ch0;
  input rxn_ch1;
  input rxp_ch0;
  input rxp_ch1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause_ch0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pause_ch0, CLK_DOMAIN mac_phy_ten_gig_eth_pcs_pma_ch0_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]s_axis_pause_ch0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause_ch0 TVALID" *) input s_axis_pause_ch0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause_ch1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pause_ch1, CLK_DOMAIN mac_phy_ten_gig_eth_pcs_pma_ch0_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]s_axis_pause_ch1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause_ch1 TVALID" *) input s_axis_pause_ch1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_0, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [63:0]s_axis_tx_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_0 TKEEP" *) input [7:0]s_axis_tx_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_0 TLAST" *) input s_axis_tx_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_0 TREADY" *) output s_axis_tx_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_0 TUSER" *) input [0:0]s_axis_tx_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_0 TVALID" *) input s_axis_tx_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx_1, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [63:0]s_axis_tx_1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_1 TKEEP" *) input [7:0]s_axis_tx_1_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_1 TLAST" *) input s_axis_tx_1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_1 TREADY" *) output s_axis_tx_1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_1 TUSER" *) input [0:0]s_axis_tx_1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx_1 TVALID" *) input s_axis_tx_1_tvalid;
  input sim_speedup_control_ch0;
  input sim_speedup_control_ch1;
  output tx_disable_ch0;
  output tx_disable_ch1;
  output tx_resetdone_ch1;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics_ch0 valid" *) output tx_statistics_ch0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics_ch0 vector" *) output [25:0]tx_statistics_ch0_vector;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics_ch1 valid" *) output tx_statistics_ch1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics_ch1 vector" *) output [25:0]tx_statistics_ch1_vector;
  output txclk322_ch1;
  output txn_ch0;
  output txn_ch1;
  output txp_ch0;
  output txp_ch1;

  (* DEBUG_IN_BD = "true" *) (* MARK_DEBUG *) wire channel_1_rx_resetdone;
  wire channel_1_tx_disable;
  (* DEBUG_IN_BD = "true" *) (* MARK_DEBUG *) wire channel_1_tx_resetdone;
  wire channel_1_txclk322;
  wire channel_1_txn;
  wire channel_1_txp;
  wire mac_phy_ch0_areset_clk156_out;
  wire mac_phy_ch0_core_clk156_out;
  wire [7:0]mac_phy_ch0_core_status;
  wire mac_phy_ch0_gtrxreset_out;
  wire mac_phy_ch0_gttxreset_out;
  (* CONN_BUS_INFO = "mac_phy_ch0_m_axis_rx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]mac_phy_ch0_m_axis_rx_TDATA;
  (* CONN_BUS_INFO = "mac_phy_ch0_m_axis_rx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]mac_phy_ch0_m_axis_rx_TKEEP;
  (* CONN_BUS_INFO = "mac_phy_ch0_m_axis_rx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire mac_phy_ch0_m_axis_rx_TLAST;
  (* CONN_BUS_INFO = "mac_phy_ch0_m_axis_rx xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire mac_phy_ch0_m_axis_rx_TUSER;
  (* CONN_BUS_INFO = "mac_phy_ch0_m_axis_rx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire mac_phy_ch0_m_axis_rx_TVALID;
  (* DEBUG_IN_BD = "true" *) wire mac_phy_ch0_qpll0lock_out;
  wire mac_phy_ch0_qpll0outclk_out;
  wire mac_phy_ch0_qpll0outrefclk_out;
  wire mac_phy_ch0_reset_counter_done_out;
  (* DEBUG_IN_BD = "true" *) wire mac_phy_ch0_resetdone;
  wire mac_phy_ch0_rx_statistics_valid;
  wire [29:0]mac_phy_ch0_rx_statistics_vector;
  wire mac_phy_ch0_tx_statistics_valid;
  wire [25:0]mac_phy_ch0_tx_statistics_vector;
  wire mac_phy_ch0_txuserrdy_out;
  wire mac_phy_ch0_txusrclk2_out;
  wire mac_phy_ch0_txusrclk_out;
  wire [7:0]mac_phy_ch1_core_status;
  (* CONN_BUS_INFO = "mac_phy_ch1_m_axis_rx xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]mac_phy_ch1_m_axis_rx_TDATA;
  (* CONN_BUS_INFO = "mac_phy_ch1_m_axis_rx xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]mac_phy_ch1_m_axis_rx_TKEEP;
  (* CONN_BUS_INFO = "mac_phy_ch1_m_axis_rx xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire mac_phy_ch1_m_axis_rx_TLAST;
  (* CONN_BUS_INFO = "mac_phy_ch1_m_axis_rx xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire mac_phy_ch1_m_axis_rx_TUSER;
  (* CONN_BUS_INFO = "mac_phy_ch1_m_axis_rx xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire mac_phy_ch1_m_axis_rx_TVALID;
  wire mac_phy_ch1_rx_statistics_valid;
  wire [29:0]mac_phy_ch1_rx_statistics_vector;
  wire mac_phy_ch1_tx_statistics_valid;
  wire [25:0]mac_phy_ch1_tx_statistics_vector;
  wire microblaze_0_Clk;
  wire [4:0]prtad_1;
  wire [4:0]prtad_2;
  wire refclk_diff_port_1_CLK_N;
  wire refclk_diff_port_1_CLK_P;
  wire reset_1;
  wire reset_n_mac_1;
  wire rst_clk_156_156M_peripheral_aresetn;
  wire rxn_1;
  wire rxn_2;
  wire rxp_1;
  wire rxp_2;
  wire [15:0]s_axis_pause_1_1_TDATA;
  wire s_axis_pause_1_1_TVALID;
  wire [15:0]s_axis_pause_1_TDATA;
  wire s_axis_pause_1_TVALID;
  wire [7:0]s_axis_pause_tdata_1;
  wire [0:0]s_axis_pause_tvalid_1;
  (* CONN_BUS_INFO = "s_axis_tx_0_1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]s_axis_tx_0_1_TDATA;
  (* CONN_BUS_INFO = "s_axis_tx_0_1 xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]s_axis_tx_0_1_TKEEP;
  (* CONN_BUS_INFO = "s_axis_tx_0_1 xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire s_axis_tx_0_1_TLAST;
  (* CONN_BUS_INFO = "s_axis_tx_0_1 xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire s_axis_tx_0_1_TREADY;
  (* CONN_BUS_INFO = "s_axis_tx_0_1 xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]s_axis_tx_0_1_TUSER;
  (* CONN_BUS_INFO = "s_axis_tx_0_1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire s_axis_tx_0_1_TVALID;
  (* CONN_BUS_INFO = "s_axis_tx_1_1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [63:0]s_axis_tx_1_1_TDATA;
  (* CONN_BUS_INFO = "s_axis_tx_1_1 xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [7:0]s_axis_tx_1_1_TKEEP;
  (* CONN_BUS_INFO = "s_axis_tx_1_1 xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire s_axis_tx_1_1_TLAST;
  (* CONN_BUS_INFO = "s_axis_tx_1_1 xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire s_axis_tx_1_1_TREADY;
  (* CONN_BUS_INFO = "s_axis_tx_1_1 xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]s_axis_tx_1_1_TUSER;
  (* CONN_BUS_INFO = "s_axis_tx_1_1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire s_axis_tx_1_1_TVALID;
  wire sim_speedup_control_1;
  wire sim_speedup_control_1_1;
  wire ten_gig_eth_pcs_pma_ch0_tx_disable;
  wire ten_gig_eth_pcs_pma_ch0_txn;
  wire ten_gig_eth_pcs_pma_ch0_txp;
  wire [0:0]xlconstant_0_const;
  wire [2:0]xlconstant_3b101_dout;

  assign core_clk156_out = mac_phy_ch0_core_clk156_out;
  assign core_status_ch0[7:0] = mac_phy_ch0_core_status;
  assign core_status_ch1[7:0] = mac_phy_ch1_core_status;
  assign m_axis_rx_0_tdata[63:0] = mac_phy_ch1_m_axis_rx_TDATA;
  assign m_axis_rx_0_tkeep[7:0] = mac_phy_ch1_m_axis_rx_TKEEP;
  assign m_axis_rx_0_tlast = mac_phy_ch1_m_axis_rx_TLAST;
  assign m_axis_rx_0_tuser = mac_phy_ch1_m_axis_rx_TUSER;
  assign m_axis_rx_0_tvalid = mac_phy_ch1_m_axis_rx_TVALID;
  assign m_axis_rx_1_tdata[63:0] = mac_phy_ch0_m_axis_rx_TDATA;
  assign m_axis_rx_1_tkeep[7:0] = mac_phy_ch0_m_axis_rx_TKEEP;
  assign m_axis_rx_1_tlast = mac_phy_ch0_m_axis_rx_TLAST;
  assign m_axis_rx_1_tuser = mac_phy_ch0_m_axis_rx_TUSER;
  assign m_axis_rx_1_tvalid = mac_phy_ch0_m_axis_rx_TVALID;
  assign microblaze_0_Clk = mb_clk;
  assign prtad_1 = prtad_ch0[4:0];
  assign prtad_2 = prtad_ch1[4:0];
  assign refclk_diff_port_1_CLK_N = refclk_diff_port_clk_n;
  assign refclk_diff_port_1_CLK_P = refclk_diff_port_clk_p;
  assign reset_1 = reset;
  assign reset_n_mac_1 = reset_n;
  assign resetdone_ch0 = mac_phy_ch0_resetdone;
  assign rst_clk_156_156M_peripheral_aresetn = aux_resetn;
  assign rx_resetdone_ch1 = channel_1_rx_resetdone;
  assign rx_statistics_ch0_valid = mac_phy_ch1_rx_statistics_valid;
  assign rx_statistics_ch0_vector[29:0] = mac_phy_ch1_rx_statistics_vector;
  assign rx_statistics_ch1_valid = mac_phy_ch0_rx_statistics_valid;
  assign rx_statistics_ch1_vector[29:0] = mac_phy_ch0_rx_statistics_vector;
  assign rxn_1 = rxn_ch0;
  assign rxn_2 = rxn_ch1;
  assign rxp_1 = rxp_ch0;
  assign rxp_2 = rxp_ch1;
  assign s_axi_aresetn[0] = rst_clk_156_156M_peripheral_aresetn;
  assign s_axis_pause_1_1_TDATA = s_axis_pause_ch1_tdata[15:0];
  assign s_axis_pause_1_1_TVALID = s_axis_pause_ch1_tvalid;
  assign s_axis_pause_1_TDATA = s_axis_pause_ch0_tdata[15:0];
  assign s_axis_pause_1_TVALID = s_axis_pause_ch0_tvalid;
  assign s_axis_tx_0_1_TDATA = s_axis_tx_0_tdata[63:0];
  assign s_axis_tx_0_1_TKEEP = s_axis_tx_0_tkeep[7:0];
  assign s_axis_tx_0_1_TLAST = s_axis_tx_0_tlast;
  assign s_axis_tx_0_1_TUSER = s_axis_tx_0_tuser[0];
  assign s_axis_tx_0_1_TVALID = s_axis_tx_0_tvalid;
  assign s_axis_tx_0_tready = s_axis_tx_0_1_TREADY;
  assign s_axis_tx_1_1_TDATA = s_axis_tx_1_tdata[63:0];
  assign s_axis_tx_1_1_TKEEP = s_axis_tx_1_tkeep[7:0];
  assign s_axis_tx_1_1_TLAST = s_axis_tx_1_tlast;
  assign s_axis_tx_1_1_TUSER = s_axis_tx_1_tuser[0];
  assign s_axis_tx_1_1_TVALID = s_axis_tx_1_tvalid;
  assign s_axis_tx_1_tready = s_axis_tx_1_1_TREADY;
  assign sim_speedup_control_1 = sim_speedup_control_ch0;
  assign sim_speedup_control_1_1 = sim_speedup_control_ch1;
  assign tx_disable_ch0 = ten_gig_eth_pcs_pma_ch0_tx_disable;
  assign tx_disable_ch1 = channel_1_tx_disable;
  assign tx_resetdone_ch1 = channel_1_tx_resetdone;
  assign tx_statistics_ch0_valid = mac_phy_ch1_tx_statistics_valid;
  assign tx_statistics_ch0_vector[25:0] = mac_phy_ch1_tx_statistics_vector;
  assign tx_statistics_ch1_valid = mac_phy_ch0_tx_statistics_valid;
  assign tx_statistics_ch1_vector[25:0] = mac_phy_ch0_tx_statistics_vector;
  assign txclk322_ch1 = channel_1_txclk322;
  assign txn_ch0 = ten_gig_eth_pcs_pma_ch0_txn;
  assign txn_ch1 = channel_1_txn;
  assign txp_ch0 = ten_gig_eth_pcs_pma_ch0_txp;
  assign txp_ch1 = channel_1_txp;
  mac_phy_ch0_imp_15CV18U mac_phy_ch0
       (.areset(reset_1),
        .areset_clk156_out(mac_phy_ch0_areset_clk156_out),
        .clk156(mac_phy_ch0_core_clk156_out),
        .core_clk156_out(mac_phy_ch0_core_clk156_out),
        .core_status(mac_phy_ch0_core_status),
        .gtrxreset_out(mac_phy_ch0_gtrxreset_out),
        .gttxreset_out(mac_phy_ch0_gttxreset_out),
        .m_axis_rx_tdata(mac_phy_ch0_m_axis_rx_TDATA),
        .m_axis_rx_tkeep(mac_phy_ch0_m_axis_rx_TKEEP),
        .m_axis_rx_tlast(mac_phy_ch0_m_axis_rx_TLAST),
        .m_axis_rx_tuser(mac_phy_ch0_m_axis_rx_TUSER),
        .m_axis_rx_tvalid(mac_phy_ch0_m_axis_rx_TVALID),
        .prtad(prtad_1),
        .qpll0lock_out(mac_phy_ch0_qpll0lock_out),
        .qpll0outclk_out(mac_phy_ch0_qpll0outclk_out),
        .qpll0outrefclk_out(mac_phy_ch0_qpll0outrefclk_out),
        .refclk_diff_port_clk_n(refclk_diff_port_1_CLK_N),
        .refclk_diff_port_clk_p(refclk_diff_port_1_CLK_P),
        .reset_counter_done_out(mac_phy_ch0_reset_counter_done_out),
        .resetdone(mac_phy_ch0_resetdone),
        .rx_axis_aresetn(reset_n_mac_1),
        .rx_dcm_locked(xlconstant_0_const),
        .rx_statistics_valid(mac_phy_ch0_rx_statistics_valid),
        .rx_statistics_vector(mac_phy_ch0_rx_statistics_vector),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(1'b0),
        .s_axi_aresetn(rst_clk_156_156M_peripheral_aresetn),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_wdata(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_pause_tdata(s_axis_pause_1_TDATA),
        .s_axis_pause_tvalid(s_axis_pause_1_TVALID),
        .s_axis_tx_tdata(s_axis_tx_0_1_TDATA),
        .s_axis_tx_tkeep(s_axis_tx_0_1_TKEEP),
        .s_axis_tx_tlast(s_axis_tx_0_1_TLAST),
        .s_axis_tx_tready(s_axis_tx_0_1_TREADY),
        .s_axis_tx_tuser(s_axis_tx_0_1_TUSER),
        .s_axis_tx_tvalid(s_axis_tx_0_1_TVALID),
        .sim_speedup_control(sim_speedup_control_1),
        .tx_disable(ten_gig_eth_pcs_pma_ch0_tx_disable),
        .tx_fault(s_axis_pause_tvalid_1),
        .tx_ifg_delay(s_axis_pause_tdata_1),
        .tx_statistics_valid(mac_phy_ch0_tx_statistics_valid),
        .tx_statistics_vector(mac_phy_ch0_tx_statistics_vector),
        .txn(ten_gig_eth_pcs_pma_ch0_txn),
        .txp(ten_gig_eth_pcs_pma_ch0_txp),
        .txuserrdy_out(mac_phy_ch0_txuserrdy_out),
        .txusrclk2_out(mac_phy_ch0_txusrclk2_out),
        .txusrclk_out(mac_phy_ch0_txusrclk_out));
  mac_phy_ch1_imp_OVJPU8 mac_phy_ch1
       (.areset(reset_1),
        .areset_clk156(mac_phy_ch0_areset_clk156_out),
        .clk156(mac_phy_ch0_core_clk156_out),
        .core_status(mac_phy_ch1_core_status),
        .dclk(mac_phy_ch0_core_clk156_out),
        .gtrxreset(mac_phy_ch0_gtrxreset_out),
        .gttxreset(mac_phy_ch0_gttxreset_out),
        .m_axis_rx_tdata(mac_phy_ch1_m_axis_rx_TDATA),
        .m_axis_rx_tkeep(mac_phy_ch1_m_axis_rx_TKEEP),
        .m_axis_rx_tlast(mac_phy_ch1_m_axis_rx_TLAST),
        .m_axis_rx_tuser(mac_phy_ch1_m_axis_rx_TUSER),
        .m_axis_rx_tvalid(mac_phy_ch1_m_axis_rx_TVALID),
        .pma_pmd_type(xlconstant_3b101_dout),
        .prtad(prtad_2),
        .qpll0lock(mac_phy_ch0_qpll0lock_out),
        .qpll0outclk(mac_phy_ch0_qpll0outclk_out),
        .qpll0outrefclk(mac_phy_ch0_qpll0outrefclk_out),
        .reset_counter_done(mac_phy_ch0_reset_counter_done_out),
        .rx_axis_aresetn(reset_n_mac_1),
        .rx_dcm_locked(xlconstant_0_const),
        .rx_resetdone(channel_1_rx_resetdone),
        .rx_statistics_valid(mac_phy_ch1_rx_statistics_valid),
        .rx_statistics_vector(mac_phy_ch1_rx_statistics_vector),
        .rxn(rxn_2),
        .rxp(rxp_2),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(1'b0),
        .s_axi_aresetn(rst_clk_156_156M_peripheral_aresetn),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_wdata(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_pause_tdata(s_axis_pause_1_1_TDATA),
        .s_axis_pause_tvalid(s_axis_pause_1_1_TVALID),
        .s_axis_tx_tdata(s_axis_tx_1_1_TDATA),
        .s_axis_tx_tkeep(s_axis_tx_1_1_TKEEP),
        .s_axis_tx_tlast(s_axis_tx_1_1_TLAST),
        .s_axis_tx_tready(s_axis_tx_1_1_TREADY),
        .s_axis_tx_tuser(s_axis_tx_1_1_TUSER),
        .s_axis_tx_tvalid(s_axis_tx_1_1_TVALID),
        .sim_speedup_control(sim_speedup_control_1_1),
        .tx_disable(channel_1_tx_disable),
        .tx_fault(s_axis_pause_tvalid_1),
        .tx_ifg_delay(s_axis_pause_tdata_1),
        .tx_resetdone(channel_1_tx_resetdone),
        .tx_statistics_valid(mac_phy_ch1_tx_statistics_valid),
        .tx_statistics_vector(mac_phy_ch1_tx_statistics_vector),
        .txclk322(channel_1_txclk322),
        .txn(channel_1_txn),
        .txp(channel_1_txp),
        .txuserrdy(mac_phy_ch0_txuserrdy_out),
        .txusrclk(mac_phy_ch0_txusrclk_out),
        .txusrclk2(mac_phy_ch0_txusrclk2_out));
  mac_phy_system_ila_mac_phy1_0 system_ila_mac_phy2
       (.SLOT_0_AXIS_tdata(s_axis_tx_0_1_TDATA),
        .SLOT_0_AXIS_tkeep(s_axis_tx_0_1_TKEEP),
        .SLOT_0_AXIS_tlast(s_axis_tx_0_1_TLAST),
        .SLOT_0_AXIS_tready(s_axis_tx_0_1_TREADY),
        .SLOT_0_AXIS_tuser(s_axis_tx_0_1_TUSER),
        .SLOT_0_AXIS_tvalid(s_axis_tx_0_1_TVALID),
        .SLOT_1_AXIS_tdata(mac_phy_ch0_m_axis_rx_TDATA),
        .SLOT_1_AXIS_tkeep(mac_phy_ch0_m_axis_rx_TKEEP),
        .SLOT_1_AXIS_tlast(mac_phy_ch0_m_axis_rx_TLAST),
        .SLOT_1_AXIS_tuser(mac_phy_ch0_m_axis_rx_TUSER),
        .SLOT_1_AXIS_tvalid(mac_phy_ch0_m_axis_rx_TVALID),
        .SLOT_2_AXIS_tdata(s_axis_tx_1_1_TDATA),
        .SLOT_2_AXIS_tkeep(s_axis_tx_1_1_TKEEP),
        .SLOT_2_AXIS_tlast(s_axis_tx_1_1_TLAST),
        .SLOT_2_AXIS_tready(s_axis_tx_1_1_TREADY),
        .SLOT_2_AXIS_tuser(s_axis_tx_1_1_TUSER),
        .SLOT_2_AXIS_tvalid(s_axis_tx_1_1_TVALID),
        .SLOT_3_AXIS_tdata(mac_phy_ch1_m_axis_rx_TDATA),
        .SLOT_3_AXIS_tkeep(mac_phy_ch1_m_axis_rx_TKEEP),
        .SLOT_3_AXIS_tlast(mac_phy_ch1_m_axis_rx_TLAST),
        .SLOT_3_AXIS_tuser(mac_phy_ch1_m_axis_rx_TUSER),
        .SLOT_3_AXIS_tvalid(mac_phy_ch1_m_axis_rx_TVALID),
        .clk(mac_phy_ch0_core_clk156_out),
        .resetn(reset_n_mac_1));
  mac_phy_xlconstant_1b0_0 xlconstant_1b0
       (.dout(s_axis_pause_tvalid_1));
  mac_phy_xlconstant_1b1_0 xlconstant_1b1
       (.dout(xlconstant_0_const));
  mac_phy_xlconstant_3b101_0 xlconstant_3b101
       (.dout(xlconstant_3b101_dout));
  mac_phy_xlconstant_8b0_0 xlconstant_8b0
       (.dout(s_axis_pause_tdata_1));
endmodule

module mac_phy_ch0_imp_15CV18U
   (areset,
    areset_clk156_out,
    clk156,
    core_clk156_out,
    core_status,
    gtrxreset_out,
    gttxreset_out,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    prtad,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    refclk_diff_port_clk_n,
    refclk_diff_port_clk_p,
    reset_counter_done_out,
    resetdone,
    rx_axis_aresetn,
    rx_dcm_locked,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wvalid,
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    sim_speedup_control,
    tx_disable,
    tx_fault,
    tx_ifg_delay,
    tx_statistics_valid,
    tx_statistics_vector,
    txn,
    txp,
    txuserrdy_out,
    txusrclk2_out,
    txusrclk_out);
  input areset;
  output areset_clk156_out;
  input clk156;
  output core_clk156_out;
  output [7:0]core_status;
  output gtrxreset_out;
  output gttxreset_out;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  input [4:0]prtad;
  output qpll0lock_out;
  output qpll0outclk_out;
  output qpll0outrefclk_out;
  input refclk_diff_port_clk_n;
  input refclk_diff_port_clk_p;
  output reset_counter_done_out;
  output resetdone;
  input rx_axis_aresetn;
  input [0:0]rx_dcm_locked;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  input s_axi_aclk;
  input s_axi_araddr;
  input [0:0]s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  input s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_rdata;
  input s_axi_rready;
  output s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_wdata;
  output s_axi_wready;
  input s_axi_wvalid;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input sim_speedup_control;
  output tx_disable;
  input [0:0]tx_fault;
  input [7:0]tx_ifg_delay;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txn;
  output txp;
  output txuserrdy_out;
  output txusrclk2_out;
  output txusrclk_out;

  wire [15:0]Conn1_TDATA;
  wire Conn1_TVALID;
  wire Conn2_CLK_N;
  wire Conn2_CLK_P;
  wire Conn3_valid;
  wire [25:0]Conn3_vector;
  wire Conn4_valid;
  wire [29:0]Conn4_vector;
  wire [63:0]axis_data_fifo_tx_ch0_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_tx_ch0_M_AXIS_TKEEP;
  wire axis_data_fifo_tx_ch0_M_AXIS_TLAST;
  wire axis_data_fifo_tx_ch0_M_AXIS_TREADY;
  wire [0:0]axis_data_fifo_tx_ch0_M_AXIS_TUSER;
  wire axis_data_fifo_tx_ch0_M_AXIS_TVALID;
  wire [7:0]hdp_patgen_0_tx_ifg_delay;
  wire microblaze_0_Clk;
  wire microblaze_0_axi_periph_M04_AXI_ARADDR;
  wire microblaze_0_axi_periph_M04_AXI_ARREADY;
  wire microblaze_0_axi_periph_M04_AXI_ARVALID;
  wire microblaze_0_axi_periph_M04_AXI_AWADDR;
  wire microblaze_0_axi_periph_M04_AXI_AWREADY;
  wire microblaze_0_axi_periph_M04_AXI_AWVALID;
  wire microblaze_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]microblaze_0_axi_periph_M04_AXI_BRESP;
  wire microblaze_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]microblaze_0_axi_periph_M04_AXI_RDATA;
  wire microblaze_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]microblaze_0_axi_periph_M04_AXI_RRESP;
  wire microblaze_0_axi_periph_M04_AXI_RVALID;
  wire microblaze_0_axi_periph_M04_AXI_WDATA;
  wire microblaze_0_axi_periph_M04_AXI_WREADY;
  wire microblaze_0_axi_periph_M04_AXI_WVALID;
  wire [4:0]prtad_1;
  wire reset_mac;
  wire reset_n_mac_1;
  wire [0:0]rst_clk_156_156M_peripheral_aresetn;
  wire rxn_1;
  wire rxp_1;
  wire s_axi_aclk_1;
  wire [0:0]s_axis_pause_tvalid_1;
  wire sim_speedup_control_1;
  wire [63:0]ten_gig_eth_mac_ch0_m_axis_rx_TDATA;
  wire [7:0]ten_gig_eth_mac_ch0_m_axis_rx_TKEEP;
  wire ten_gig_eth_mac_ch0_m_axis_rx_TLAST;
  wire ten_gig_eth_mac_ch0_m_axis_rx_TUSER;
  wire ten_gig_eth_mac_ch0_m_axis_rx_TVALID;
  wire ten_gig_eth_mac_ch0_mdc;
  wire ten_gig_eth_mac_ch0_mdio_out;
  wire [7:0]ten_gig_eth_mac_ch0_xgmii_xgmac_RXC;
  wire [63:0]ten_gig_eth_mac_ch0_xgmii_xgmac_RXD;
  wire [7:0]ten_gig_eth_mac_ch0_xgmii_xgmac_TXC;
  wire [63:0]ten_gig_eth_mac_ch0_xgmii_xgmac_TXD;
  wire ten_gig_eth_pcs_pma_ch0_areset_clk156_out;
  wire ten_gig_eth_pcs_pma_ch0_core_clk156_out;
  wire [7:0]ten_gig_eth_pcs_pma_ch0_core_status;
  wire [15:0]ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DADDR;
  wire ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DEN;
  wire [15:0]ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DI;
  wire [15:0]ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DO;
  wire ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DRDY;
  wire ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DWE;
  wire ten_gig_eth_pcs_pma_ch0_drp_req;
  wire ten_gig_eth_pcs_pma_ch0_gtrxreset_out;
  wire ten_gig_eth_pcs_pma_ch0_gttxreset_out;
  wire ten_gig_eth_pcs_pma_ch0_mdio_out;
  wire ten_gig_eth_pcs_pma_ch0_qpll0lock_out;
  wire ten_gig_eth_pcs_pma_ch0_qpll0outclk_out;
  wire ten_gig_eth_pcs_pma_ch0_qpll0outrefclk_out;
  wire ten_gig_eth_pcs_pma_ch0_reset_counter_done_out;
  wire ten_gig_eth_pcs_pma_ch0_resetdone;
  wire ten_gig_eth_pcs_pma_ch0_tx_disable;
  wire ten_gig_eth_pcs_pma_ch0_txn;
  wire ten_gig_eth_pcs_pma_ch0_txp;
  wire ten_gig_eth_pcs_pma_ch0_txuserrdy_out;
  wire ten_gig_eth_pcs_pma_ch0_txusrclk2_out;
  wire ten_gig_eth_pcs_pma_ch0_txusrclk_out;
  wire [0:0]xlconstant_0_const;

  assign Conn1_TDATA = s_axis_pause_tdata[15:0];
  assign Conn1_TVALID = s_axis_pause_tvalid;
  assign Conn2_CLK_N = refclk_diff_port_clk_n;
  assign Conn2_CLK_P = refclk_diff_port_clk_p;
  assign areset_clk156_out = ten_gig_eth_pcs_pma_ch0_areset_clk156_out;
  assign axis_data_fifo_tx_ch0_M_AXIS_TDATA = s_axis_tx_tdata[63:0];
  assign axis_data_fifo_tx_ch0_M_AXIS_TKEEP = s_axis_tx_tkeep[7:0];
  assign axis_data_fifo_tx_ch0_M_AXIS_TLAST = s_axis_tx_tlast;
  assign axis_data_fifo_tx_ch0_M_AXIS_TUSER = s_axis_tx_tuser[0];
  assign axis_data_fifo_tx_ch0_M_AXIS_TVALID = s_axis_tx_tvalid;
  assign core_clk156_out = ten_gig_eth_pcs_pma_ch0_core_clk156_out;
  assign core_status[7:0] = ten_gig_eth_pcs_pma_ch0_core_status;
  assign gtrxreset_out = ten_gig_eth_pcs_pma_ch0_gtrxreset_out;
  assign gttxreset_out = ten_gig_eth_pcs_pma_ch0_gttxreset_out;
  assign hdp_patgen_0_tx_ifg_delay = tx_ifg_delay[7:0];
  assign m_axis_rx_tdata[63:0] = ten_gig_eth_mac_ch0_m_axis_rx_TDATA;
  assign m_axis_rx_tkeep[7:0] = ten_gig_eth_mac_ch0_m_axis_rx_TKEEP;
  assign m_axis_rx_tlast = ten_gig_eth_mac_ch0_m_axis_rx_TLAST;
  assign m_axis_rx_tuser = ten_gig_eth_mac_ch0_m_axis_rx_TUSER;
  assign m_axis_rx_tvalid = ten_gig_eth_mac_ch0_m_axis_rx_TVALID;
  assign microblaze_0_Clk = clk156;
  assign microblaze_0_axi_periph_M04_AXI_ARADDR = s_axi_araddr;
  assign microblaze_0_axi_periph_M04_AXI_ARVALID = s_axi_arvalid;
  assign microblaze_0_axi_periph_M04_AXI_AWADDR = s_axi_awaddr;
  assign microblaze_0_axi_periph_M04_AXI_AWVALID = s_axi_awvalid;
  assign microblaze_0_axi_periph_M04_AXI_BREADY = s_axi_bready;
  assign microblaze_0_axi_periph_M04_AXI_RREADY = s_axi_rready;
  assign microblaze_0_axi_periph_M04_AXI_WDATA = s_axi_wdata;
  assign microblaze_0_axi_periph_M04_AXI_WVALID = s_axi_wvalid;
  assign prtad_1 = prtad[4:0];
  assign qpll0lock_out = ten_gig_eth_pcs_pma_ch0_qpll0lock_out;
  assign qpll0outclk_out = ten_gig_eth_pcs_pma_ch0_qpll0outclk_out;
  assign qpll0outrefclk_out = ten_gig_eth_pcs_pma_ch0_qpll0outrefclk_out;
  assign reset_counter_done_out = ten_gig_eth_pcs_pma_ch0_reset_counter_done_out;
  assign reset_mac = areset;
  assign reset_n_mac_1 = rx_axis_aresetn;
  assign resetdone = ten_gig_eth_pcs_pma_ch0_resetdone;
  assign rst_clk_156_156M_peripheral_aresetn = s_axi_aresetn[0];
  assign rx_statistics_valid = Conn4_valid;
  assign rx_statistics_vector[29:0] = Conn4_vector;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_arready = microblaze_0_axi_periph_M04_AXI_ARREADY;
  assign s_axi_awready = microblaze_0_axi_periph_M04_AXI_AWREADY;
  assign s_axi_bresp = microblaze_0_axi_periph_M04_AXI_BRESP[0];
  assign s_axi_bvalid = microblaze_0_axi_periph_M04_AXI_BVALID;
  assign s_axi_rdata = microblaze_0_axi_periph_M04_AXI_RDATA[0];
  assign s_axi_rresp = microblaze_0_axi_periph_M04_AXI_RRESP[0];
  assign s_axi_rvalid = microblaze_0_axi_periph_M04_AXI_RVALID;
  assign s_axi_wready = microblaze_0_axi_periph_M04_AXI_WREADY;
  assign s_axis_pause_tvalid_1 = tx_fault[0];
  assign s_axis_tx_tready = axis_data_fifo_tx_ch0_M_AXIS_TREADY;
  assign sim_speedup_control_1 = sim_speedup_control;
  assign tx_disable = ten_gig_eth_pcs_pma_ch0_tx_disable;
  assign tx_statistics_valid = Conn3_valid;
  assign tx_statistics_vector[25:0] = Conn3_vector;
  assign txn = ten_gig_eth_pcs_pma_ch0_txn;
  assign txp = ten_gig_eth_pcs_pma_ch0_txp;
  assign txuserrdy_out = ten_gig_eth_pcs_pma_ch0_txuserrdy_out;
  assign txusrclk2_out = ten_gig_eth_pcs_pma_ch0_txusrclk2_out;
  assign txusrclk_out = ten_gig_eth_pcs_pma_ch0_txusrclk_out;
  assign xlconstant_0_const = rx_dcm_locked[0];
  mac_phy_ten_gig_eth_mac_ch0_0 ten_gig_eth_mac_ch0
       (.mdc(ten_gig_eth_mac_ch0_mdc),
        .mdio_in(ten_gig_eth_pcs_pma_ch0_mdio_out),
        .mdio_out(ten_gig_eth_mac_ch0_mdio_out),
        .pause_req(Conn1_TVALID),
        .pause_val(Conn1_TDATA),
        .reset(reset_mac),
        .rx_axis_aresetn(reset_n_mac_1),
        .rx_axis_tdata(ten_gig_eth_mac_ch0_m_axis_rx_TDATA),
        .rx_axis_tkeep(ten_gig_eth_mac_ch0_m_axis_rx_TKEEP),
        .rx_axis_tlast(ten_gig_eth_mac_ch0_m_axis_rx_TLAST),
        .rx_axis_tuser(ten_gig_eth_mac_ch0_m_axis_rx_TUSER),
        .rx_axis_tvalid(ten_gig_eth_mac_ch0_m_axis_rx_TVALID),
        .rx_clk0(microblaze_0_Clk),
        .rx_dcm_locked(xlconstant_0_const),
        .rx_statistics_valid(Conn4_valid),
        .rx_statistics_vector(Conn4_vector),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr({microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR,microblaze_0_axi_periph_M04_AXI_ARADDR}),
        .s_axi_aresetn(rst_clk_156_156M_peripheral_aresetn),
        .s_axi_arready(microblaze_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(microblaze_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr({microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR,microblaze_0_axi_periph_M04_AXI_AWADDR}),
        .s_axi_awready(microblaze_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(microblaze_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(microblaze_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(microblaze_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(microblaze_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(microblaze_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(microblaze_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(microblaze_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(microblaze_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata({microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA,microblaze_0_axi_periph_M04_AXI_WDATA}),
        .s_axi_wready(microblaze_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wvalid(microblaze_0_axi_periph_M04_AXI_WVALID),
        .tx_axis_aresetn(reset_n_mac_1),
        .tx_axis_tdata(axis_data_fifo_tx_ch0_M_AXIS_TDATA),
        .tx_axis_tkeep(axis_data_fifo_tx_ch0_M_AXIS_TKEEP),
        .tx_axis_tlast(axis_data_fifo_tx_ch0_M_AXIS_TLAST),
        .tx_axis_tready(axis_data_fifo_tx_ch0_M_AXIS_TREADY),
        .tx_axis_tuser(axis_data_fifo_tx_ch0_M_AXIS_TUSER),
        .tx_axis_tvalid(axis_data_fifo_tx_ch0_M_AXIS_TVALID),
        .tx_clk0(microblaze_0_Clk),
        .tx_dcm_locked(xlconstant_0_const),
        .tx_ifg_delay(hdp_patgen_0_tx_ifg_delay),
        .tx_statistics_valid(Conn3_valid),
        .tx_statistics_vector(Conn3_vector),
        .xgmii_rxc(ten_gig_eth_mac_ch0_xgmii_xgmac_RXC),
        .xgmii_rxd(ten_gig_eth_mac_ch0_xgmii_xgmac_RXD),
        .xgmii_txc(ten_gig_eth_mac_ch0_xgmii_xgmac_TXC),
        .xgmii_txd(ten_gig_eth_mac_ch0_xgmii_xgmac_TXD));
  mac_phy_ten_gig_eth_pcs_pma_ch0_0 ten_gig_eth_pcs_pma_ch0
       (.areset_datapathclk_out(ten_gig_eth_pcs_pma_ch0_areset_clk156_out),
        .core_status(ten_gig_eth_pcs_pma_ch0_core_status),
        .core_to_gt_drpaddr(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DADDR),
        .core_to_gt_drpdi(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DI),
        .core_to_gt_drpdo(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DO),
        .core_to_gt_drpen(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DEN),
        .core_to_gt_drprdy(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DRDY),
        .core_to_gt_drpwe(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DWE),
        .coreclk_out(ten_gig_eth_pcs_pma_ch0_core_clk156_out),
        .dclk(ten_gig_eth_pcs_pma_ch0_core_clk156_out),
        .drp_gnt(ten_gig_eth_pcs_pma_ch0_drp_req),
        .drp_req(ten_gig_eth_pcs_pma_ch0_drp_req),
        .gt_drpaddr(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DADDR),
        .gt_drpdi(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DI),
        .gt_drpdo(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DO),
        .gt_drpen(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DEN),
        .gt_drprdy(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DRDY),
        .gt_drpwe(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_DWE),
        .gtrxreset_out(ten_gig_eth_pcs_pma_ch0_gtrxreset_out),
        .gttxreset_out(ten_gig_eth_pcs_pma_ch0_gttxreset_out),
        .mdc(ten_gig_eth_mac_ch0_mdc),
        .mdio_in(ten_gig_eth_mac_ch0_mdio_out),
        .mdio_out(ten_gig_eth_pcs_pma_ch0_mdio_out),
        .pma_pmd_type({1'b0,1'b0,1'b0}),
        .prtad(prtad_1),
        .qpll0lock_out(ten_gig_eth_pcs_pma_ch0_qpll0lock_out),
        .qpll0outclk_out(ten_gig_eth_pcs_pma_ch0_qpll0outclk_out),
        .qpll0outrefclk_out(ten_gig_eth_pcs_pma_ch0_qpll0outrefclk_out),
        .refclk_n(Conn2_CLK_N),
        .refclk_p(Conn2_CLK_P),
        .reset(reset_mac),
        .reset_counter_done_out(ten_gig_eth_pcs_pma_ch0_reset_counter_done_out),
        .resetdone_out(ten_gig_eth_pcs_pma_ch0_resetdone),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .signal_detect(xlconstant_0_const),
        .sim_speedup_control(sim_speedup_control_1),
        .tx_disable(ten_gig_eth_pcs_pma_ch0_tx_disable),
        .tx_fault(s_axis_pause_tvalid_1),
        .txn(ten_gig_eth_pcs_pma_ch0_txn),
        .txp(ten_gig_eth_pcs_pma_ch0_txp),
        .txuserrdy_out(ten_gig_eth_pcs_pma_ch0_txuserrdy_out),
        .txusrclk2_out(ten_gig_eth_pcs_pma_ch0_txusrclk2_out),
        .txusrclk_out(ten_gig_eth_pcs_pma_ch0_txusrclk_out),
        .xgmii_rxc(ten_gig_eth_mac_ch0_xgmii_xgmac_RXC),
        .xgmii_rxd(ten_gig_eth_mac_ch0_xgmii_xgmac_RXD),
        .xgmii_txc(ten_gig_eth_mac_ch0_xgmii_xgmac_TXC),
        .xgmii_txd(ten_gig_eth_mac_ch0_xgmii_xgmac_TXD));
endmodule

module mac_phy_ch1_imp_OVJPU8
   (areset,
    areset_clk156,
    clk156,
    core_status,
    dclk,
    gtrxreset,
    gttxreset,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    pma_pmd_type,
    prtad,
    qpll0lock,
    qpll0outclk,
    qpll0outrefclk,
    reset_counter_done,
    rx_axis_aresetn,
    rx_dcm_locked,
    rx_resetdone,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    rxrecclk_out,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wvalid,
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    sim_speedup_control,
    tx_disable,
    tx_fault,
    tx_ifg_delay,
    tx_resetdone,
    tx_statistics_valid,
    tx_statistics_vector,
    txclk322,
    txn,
    txp,
    txuserrdy,
    txusrclk,
    txusrclk2);
  input areset;
  input areset_clk156;
  input clk156;
  output [7:0]core_status;
  input dclk;
  input gtrxreset;
  input gttxreset;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  input [2:0]pma_pmd_type;
  input [4:0]prtad;
  input qpll0lock;
  input qpll0outclk;
  input qpll0outrefclk;
  input reset_counter_done;
  input rx_axis_aresetn;
  input [0:0]rx_dcm_locked;
  output rx_resetdone;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  output rxrecclk_out;
  input s_axi_aclk;
  input s_axi_araddr;
  input [0:0]s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  input s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_rdata;
  input s_axi_rready;
  output s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_wdata;
  output s_axi_wready;
  input s_axi_wvalid;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input sim_speedup_control;
  output tx_disable;
  input [0:0]tx_fault;
  input [7:0]tx_ifg_delay;
  output tx_resetdone;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txclk322;
  output txn;
  output txp;
  input txuserrdy;
  input txusrclk;
  input txusrclk2;

  wire [15:0]Conn1_TDATA;
  wire Conn1_TVALID;
  wire Conn2_valid;
  wire [25:0]Conn2_vector;
  wire Conn3_valid;
  wire [29:0]Conn3_vector;
  wire areset_clk156_1;
  wire [63:0]axis_data_fifo_tx_ch0_M_AXIS_1_TDATA;
  wire [7:0]axis_data_fifo_tx_ch0_M_AXIS_1_TKEEP;
  wire axis_data_fifo_tx_ch0_M_AXIS_1_TLAST;
  wire axis_data_fifo_tx_ch0_M_AXIS_1_TREADY;
  wire [0:0]axis_data_fifo_tx_ch0_M_AXIS_1_TUSER;
  wire axis_data_fifo_tx_ch0_M_AXIS_1_TVALID;
  wire [7:0]channel_1_core_status;
  wire channel_1_rx_resetdone;
  wire channel_1_tx_disable;
  wire channel_1_tx_resetdone;
  wire channel_1_txclk322;
  wire channel_1_txn;
  wire channel_1_txp;
  wire dclk_1;
  wire gtrxreset_1;
  wire gttxreset_1;
  wire [7:0]hdp_patgen_0_tx_ifg_delay_1;
  wire microblaze_0_Clk;
  wire [2:0]pma_pmd_type_1;
  wire [4:0]prtad_2;
  wire qpll0lock_1;
  wire qpll0outclk_1;
  wire qpll0outrefclk_1;
  wire reset_counter_done_1;
  wire reset_mac;
  wire reset_n_mac_1;
  wire [0:0]rst_clk_156_156M_peripheral_aresetn;
  wire rxn_2;
  wire rxp_2;
  wire s_axi_aclk_1;
  wire s_axi_mac_1_ARADDR;
  wire s_axi_mac_1_ARREADY;
  wire s_axi_mac_1_ARVALID;
  wire s_axi_mac_1_AWADDR;
  wire s_axi_mac_1_AWREADY;
  wire s_axi_mac_1_AWVALID;
  wire s_axi_mac_1_BREADY;
  wire [1:0]s_axi_mac_1_BRESP;
  wire s_axi_mac_1_BVALID;
  wire [31:0]s_axi_mac_1_RDATA;
  wire s_axi_mac_1_RREADY;
  wire [1:0]s_axi_mac_1_RRESP;
  wire s_axi_mac_1_RVALID;
  wire s_axi_mac_1_WDATA;
  wire s_axi_mac_1_WREADY;
  wire s_axi_mac_1_WVALID;
  wire [0:0]s_axis_pause_tvalid_1;
  wire sim_speedup_control_1;
  wire [63:0]ten_gig_eth_mac_ch0_m_axis_rx_1_TDATA;
  wire [7:0]ten_gig_eth_mac_ch0_m_axis_rx_1_TKEEP;
  wire ten_gig_eth_mac_ch0_m_axis_rx_1_TLAST;
  wire ten_gig_eth_mac_ch0_m_axis_rx_1_TUSER;
  wire ten_gig_eth_mac_ch0_m_axis_rx_1_TVALID;
  wire ten_gig_eth_mac_ch0_mdc_1;
  wire ten_gig_eth_mac_ch0_mdio_out_1;
  wire [7:0]ten_gig_eth_mac_ch0_xgmii_xgmac_1_RXC;
  wire [63:0]ten_gig_eth_mac_ch0_xgmii_xgmac_1_RXD;
  wire [7:0]ten_gig_eth_mac_ch0_xgmii_xgmac_1_TXC;
  wire [63:0]ten_gig_eth_mac_ch0_xgmii_xgmac_1_TXD;
  wire [15:0]ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DADDR;
  wire ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DEN;
  wire [15:0]ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DI;
  wire [15:0]ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DO;
  wire ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DRDY;
  wire ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DWE;
  wire ten_gig_eth_pcs_pma_ch0_drp_req_1;
  wire ten_gig_eth_pcs_pma_ch0_mdio_out_1;
  wire ten_gig_eth_pcs_pma_ch1_rxrecclk_out;
  wire txuserrdy_1;
  wire txusrclk2_1;
  wire txusrclk_1;
  wire [0:0]xlconstant_0_const;

  assign Conn1_TDATA = s_axis_pause_tdata[15:0];
  assign Conn1_TVALID = s_axis_pause_tvalid;
  assign areset_clk156_1 = areset_clk156;
  assign axis_data_fifo_tx_ch0_M_AXIS_1_TDATA = s_axis_tx_tdata[63:0];
  assign axis_data_fifo_tx_ch0_M_AXIS_1_TKEEP = s_axis_tx_tkeep[7:0];
  assign axis_data_fifo_tx_ch0_M_AXIS_1_TLAST = s_axis_tx_tlast;
  assign axis_data_fifo_tx_ch0_M_AXIS_1_TUSER = s_axis_tx_tuser[0];
  assign axis_data_fifo_tx_ch0_M_AXIS_1_TVALID = s_axis_tx_tvalid;
  assign core_status[7:0] = channel_1_core_status;
  assign dclk_1 = dclk;
  assign gtrxreset_1 = gtrxreset;
  assign gttxreset_1 = gttxreset;
  assign hdp_patgen_0_tx_ifg_delay_1 = tx_ifg_delay[7:0];
  assign m_axis_rx_tdata[63:0] = ten_gig_eth_mac_ch0_m_axis_rx_1_TDATA;
  assign m_axis_rx_tkeep[7:0] = ten_gig_eth_mac_ch0_m_axis_rx_1_TKEEP;
  assign m_axis_rx_tlast = ten_gig_eth_mac_ch0_m_axis_rx_1_TLAST;
  assign m_axis_rx_tuser = ten_gig_eth_mac_ch0_m_axis_rx_1_TUSER;
  assign m_axis_rx_tvalid = ten_gig_eth_mac_ch0_m_axis_rx_1_TVALID;
  assign microblaze_0_Clk = clk156;
  assign pma_pmd_type_1 = pma_pmd_type[2:0];
  assign prtad_2 = prtad[4:0];
  assign qpll0lock_1 = qpll0lock;
  assign qpll0outclk_1 = qpll0outclk;
  assign qpll0outrefclk_1 = qpll0outrefclk;
  assign reset_counter_done_1 = reset_counter_done;
  assign reset_mac = areset;
  assign reset_n_mac_1 = rx_axis_aresetn;
  assign rst_clk_156_156M_peripheral_aresetn = s_axi_aresetn[0];
  assign rx_resetdone = channel_1_rx_resetdone;
  assign rx_statistics_valid = Conn3_valid;
  assign rx_statistics_vector[29:0] = Conn3_vector;
  assign rxn_2 = rxn;
  assign rxp_2 = rxp;
  assign rxrecclk_out = ten_gig_eth_pcs_pma_ch1_rxrecclk_out;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_arready = s_axi_mac_1_ARREADY;
  assign s_axi_awready = s_axi_mac_1_AWREADY;
  assign s_axi_bresp = s_axi_mac_1_BRESP[0];
  assign s_axi_bvalid = s_axi_mac_1_BVALID;
  assign s_axi_mac_1_ARADDR = s_axi_araddr;
  assign s_axi_mac_1_ARVALID = s_axi_arvalid;
  assign s_axi_mac_1_AWADDR = s_axi_awaddr;
  assign s_axi_mac_1_AWVALID = s_axi_awvalid;
  assign s_axi_mac_1_BREADY = s_axi_bready;
  assign s_axi_mac_1_RREADY = s_axi_rready;
  assign s_axi_mac_1_WDATA = s_axi_wdata;
  assign s_axi_mac_1_WVALID = s_axi_wvalid;
  assign s_axi_rdata = s_axi_mac_1_RDATA[0];
  assign s_axi_rresp = s_axi_mac_1_RRESP[0];
  assign s_axi_rvalid = s_axi_mac_1_RVALID;
  assign s_axi_wready = s_axi_mac_1_WREADY;
  assign s_axis_pause_tvalid_1 = tx_fault[0];
  assign s_axis_tx_tready = axis_data_fifo_tx_ch0_M_AXIS_1_TREADY;
  assign sim_speedup_control_1 = sim_speedup_control;
  assign tx_disable = channel_1_tx_disable;
  assign tx_resetdone = channel_1_tx_resetdone;
  assign tx_statistics_valid = Conn2_valid;
  assign tx_statistics_vector[25:0] = Conn2_vector;
  assign txclk322 = channel_1_txclk322;
  assign txn = channel_1_txn;
  assign txp = channel_1_txp;
  assign txuserrdy_1 = txuserrdy;
  assign txusrclk2_1 = txusrclk2;
  assign txusrclk_1 = txusrclk;
  assign xlconstant_0_const = rx_dcm_locked[0];
  mac_phy_ten_gig_eth_mac_ch1_0 ten_gig_eth_mac_ch1
       (.mdc(ten_gig_eth_mac_ch0_mdc_1),
        .mdio_in(ten_gig_eth_pcs_pma_ch0_mdio_out_1),
        .mdio_out(ten_gig_eth_mac_ch0_mdio_out_1),
        .pause_req(Conn1_TVALID),
        .pause_val(Conn1_TDATA),
        .reset(reset_mac),
        .rx_axis_aresetn(reset_n_mac_1),
        .rx_axis_tdata(ten_gig_eth_mac_ch0_m_axis_rx_1_TDATA),
        .rx_axis_tkeep(ten_gig_eth_mac_ch0_m_axis_rx_1_TKEEP),
        .rx_axis_tlast(ten_gig_eth_mac_ch0_m_axis_rx_1_TLAST),
        .rx_axis_tuser(ten_gig_eth_mac_ch0_m_axis_rx_1_TUSER),
        .rx_axis_tvalid(ten_gig_eth_mac_ch0_m_axis_rx_1_TVALID),
        .rx_clk0(microblaze_0_Clk),
        .rx_dcm_locked(xlconstant_0_const),
        .rx_statistics_valid(Conn3_valid),
        .rx_statistics_vector(Conn3_vector),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr({s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR,s_axi_mac_1_ARADDR}),
        .s_axi_aresetn(rst_clk_156_156M_peripheral_aresetn),
        .s_axi_arready(s_axi_mac_1_ARREADY),
        .s_axi_arvalid(s_axi_mac_1_ARVALID),
        .s_axi_awaddr({s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR,s_axi_mac_1_AWADDR}),
        .s_axi_awready(s_axi_mac_1_AWREADY),
        .s_axi_awvalid(s_axi_mac_1_AWVALID),
        .s_axi_bready(s_axi_mac_1_BREADY),
        .s_axi_bresp(s_axi_mac_1_BRESP),
        .s_axi_bvalid(s_axi_mac_1_BVALID),
        .s_axi_rdata(s_axi_mac_1_RDATA),
        .s_axi_rready(s_axi_mac_1_RREADY),
        .s_axi_rresp(s_axi_mac_1_RRESP),
        .s_axi_rvalid(s_axi_mac_1_RVALID),
        .s_axi_wdata({s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA,s_axi_mac_1_WDATA}),
        .s_axi_wready(s_axi_mac_1_WREADY),
        .s_axi_wvalid(s_axi_mac_1_WVALID),
        .tx_axis_aresetn(reset_n_mac_1),
        .tx_axis_tdata(axis_data_fifo_tx_ch0_M_AXIS_1_TDATA),
        .tx_axis_tkeep(axis_data_fifo_tx_ch0_M_AXIS_1_TKEEP),
        .tx_axis_tlast(axis_data_fifo_tx_ch0_M_AXIS_1_TLAST),
        .tx_axis_tready(axis_data_fifo_tx_ch0_M_AXIS_1_TREADY),
        .tx_axis_tuser(axis_data_fifo_tx_ch0_M_AXIS_1_TUSER),
        .tx_axis_tvalid(axis_data_fifo_tx_ch0_M_AXIS_1_TVALID),
        .tx_clk0(microblaze_0_Clk),
        .tx_dcm_locked(xlconstant_0_const),
        .tx_ifg_delay(hdp_patgen_0_tx_ifg_delay_1),
        .tx_statistics_valid(Conn2_valid),
        .tx_statistics_vector(Conn2_vector),
        .xgmii_rxc(ten_gig_eth_mac_ch0_xgmii_xgmac_1_RXC),
        .xgmii_rxd(ten_gig_eth_mac_ch0_xgmii_xgmac_1_RXD),
        .xgmii_txc(ten_gig_eth_mac_ch0_xgmii_xgmac_1_TXC),
        .xgmii_txd(ten_gig_eth_mac_ch0_xgmii_xgmac_1_TXD));
  mac_phy_ten_gig_eth_pcs_pma_ch1_0 ten_gig_eth_pcs_pma_ch1
       (.areset(reset_mac),
        .areset_coreclk(areset_clk156_1),
        .core_status(channel_1_core_status),
        .core_to_gt_drpaddr(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DADDR),
        .core_to_gt_drpdi(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DI),
        .core_to_gt_drpdo(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DO),
        .core_to_gt_drpen(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DEN),
        .core_to_gt_drprdy(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DRDY),
        .core_to_gt_drpwe(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DWE),
        .coreclk(microblaze_0_Clk),
        .dclk(dclk_1),
        .drp_gnt(ten_gig_eth_pcs_pma_ch0_drp_req_1),
        .drp_req(ten_gig_eth_pcs_pma_ch0_drp_req_1),
        .gt_drpaddr(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DADDR),
        .gt_drpdi(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DI),
        .gt_drpdo(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DO),
        .gt_drpen(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DEN),
        .gt_drprdy(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DRDY),
        .gt_drpwe(ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1_DWE),
        .gtrxreset(gtrxreset_1),
        .gttxreset(gttxreset_1),
        .mdc(ten_gig_eth_mac_ch0_mdc_1),
        .mdio_in(ten_gig_eth_mac_ch0_mdio_out_1),
        .mdio_out(ten_gig_eth_pcs_pma_ch0_mdio_out_1),
        .pma_pmd_type(pma_pmd_type_1),
        .prtad(prtad_2),
        .qpll0lock(qpll0lock_1),
        .qpll0outclk(qpll0outclk_1),
        .qpll0outrefclk(qpll0outrefclk_1),
        .reset_counter_done(reset_counter_done_1),
        .rx_resetdone(channel_1_rx_resetdone),
        .rxn(rxn_2),
        .rxp(rxp_2),
        .rxrecclk_out(ten_gig_eth_pcs_pma_ch1_rxrecclk_out),
        .signal_detect(xlconstant_0_const),
        .sim_speedup_control(sim_speedup_control_1),
        .tx_disable(channel_1_tx_disable),
        .tx_fault(s_axis_pause_tvalid_1),
        .tx_resetdone(channel_1_tx_resetdone),
        .txn(channel_1_txn),
        .txoutclk(channel_1_txclk322),
        .txp(channel_1_txp),
        .txuserrdy(txuserrdy_1),
        .txusrclk(txusrclk_1),
        .txusrclk2(txusrclk2_1),
        .xgmii_rxc(ten_gig_eth_mac_ch0_xgmii_xgmac_1_RXC),
        .xgmii_rxd(ten_gig_eth_mac_ch0_xgmii_xgmac_1_RXD),
        .xgmii_txc(ten_gig_eth_mac_ch0_xgmii_xgmac_1_TXC),
        .xgmii_txd(ten_gig_eth_mac_ch0_xgmii_xgmac_1_TXD));
endmodule
