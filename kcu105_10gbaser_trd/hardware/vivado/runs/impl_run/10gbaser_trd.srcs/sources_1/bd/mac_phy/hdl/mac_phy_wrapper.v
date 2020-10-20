//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Fri May 15 15:44:59 2020
//Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
//Command     : generate_target mac_phy_wrapper.bd
//Design      : mac_phy_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mac_phy_wrapper
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
  input aux_resetn;
  output core_clk156_out;
  output [7:0]core_status_ch0;
  output [7:0]core_status_ch1;
  output [63:0]m_axis_rx_0_tdata;
  output [7:0]m_axis_rx_0_tkeep;
  output m_axis_rx_0_tlast;
  output m_axis_rx_0_tuser;
  output m_axis_rx_0_tvalid;
  output [63:0]m_axis_rx_1_tdata;
  output [7:0]m_axis_rx_1_tkeep;
  output m_axis_rx_1_tlast;
  output m_axis_rx_1_tuser;
  output m_axis_rx_1_tvalid;
  input mb_clk;
  input [4:0]prtad_ch0;
  input [4:0]prtad_ch1;
  input refclk_diff_port_clk_n;
  input refclk_diff_port_clk_p;
  input reset;
  input reset_n;
  output resetdone_ch0;
  output rx_resetdone_ch1;
  output rx_statistics_ch0_valid;
  output [29:0]rx_statistics_ch0_vector;
  output rx_statistics_ch1_valid;
  output [29:0]rx_statistics_ch1_vector;
  input rxn_ch0;
  input rxn_ch1;
  input rxp_ch0;
  input rxp_ch1;
  output [0:0]s_axi_aresetn;
  input [15:0]s_axis_pause_ch0_tdata;
  input s_axis_pause_ch0_tvalid;
  input [15:0]s_axis_pause_ch1_tdata;
  input s_axis_pause_ch1_tvalid;
  input [63:0]s_axis_tx_0_tdata;
  input [7:0]s_axis_tx_0_tkeep;
  input s_axis_tx_0_tlast;
  output s_axis_tx_0_tready;
  input [0:0]s_axis_tx_0_tuser;
  input s_axis_tx_0_tvalid;
  input [63:0]s_axis_tx_1_tdata;
  input [7:0]s_axis_tx_1_tkeep;
  input s_axis_tx_1_tlast;
  output s_axis_tx_1_tready;
  input [0:0]s_axis_tx_1_tuser;
  input s_axis_tx_1_tvalid;
  input sim_speedup_control_ch0;
  input sim_speedup_control_ch1;
  output tx_disable_ch0;
  output tx_disable_ch1;
  output tx_resetdone_ch1;
  output tx_statistics_ch0_valid;
  output [25:0]tx_statistics_ch0_vector;
  output tx_statistics_ch1_valid;
  output [25:0]tx_statistics_ch1_vector;
  output txclk322_ch1;
  output txn_ch0;
  output txn_ch1;
  output txp_ch0;
  output txp_ch1;

  wire aux_resetn;
  wire core_clk156_out;
  wire [7:0]core_status_ch0;
  wire [7:0]core_status_ch1;
  wire [63:0]m_axis_rx_0_tdata;
  wire [7:0]m_axis_rx_0_tkeep;
  wire m_axis_rx_0_tlast;
  wire m_axis_rx_0_tuser;
  wire m_axis_rx_0_tvalid;
  wire [63:0]m_axis_rx_1_tdata;
  wire [7:0]m_axis_rx_1_tkeep;
  wire m_axis_rx_1_tlast;
  wire m_axis_rx_1_tuser;
  wire m_axis_rx_1_tvalid;
  wire mb_clk;
  wire [4:0]prtad_ch0;
  wire [4:0]prtad_ch1;
  wire refclk_diff_port_clk_n;
  wire refclk_diff_port_clk_p;
  wire reset;
  wire reset_n;
  wire resetdone_ch0;
  wire rx_resetdone_ch1;
  wire rx_statistics_ch0_valid;
  wire [29:0]rx_statistics_ch0_vector;
  wire rx_statistics_ch1_valid;
  wire [29:0]rx_statistics_ch1_vector;
  wire rxn_ch0;
  wire rxn_ch1;
  wire rxp_ch0;
  wire rxp_ch1;
  wire [0:0]s_axi_aresetn;
  wire [15:0]s_axis_pause_ch0_tdata;
  wire s_axis_pause_ch0_tvalid;
  wire [15:0]s_axis_pause_ch1_tdata;
  wire s_axis_pause_ch1_tvalid;
  wire [63:0]s_axis_tx_0_tdata;
  wire [7:0]s_axis_tx_0_tkeep;
  wire s_axis_tx_0_tlast;
  wire s_axis_tx_0_tready;
  wire [0:0]s_axis_tx_0_tuser;
  wire s_axis_tx_0_tvalid;
  wire [63:0]s_axis_tx_1_tdata;
  wire [7:0]s_axis_tx_1_tkeep;
  wire s_axis_tx_1_tlast;
  wire s_axis_tx_1_tready;
  wire [0:0]s_axis_tx_1_tuser;
  wire s_axis_tx_1_tvalid;
  wire sim_speedup_control_ch0;
  wire sim_speedup_control_ch1;
  wire tx_disable_ch0;
  wire tx_disable_ch1;
  wire tx_resetdone_ch1;
  wire tx_statistics_ch0_valid;
  wire [25:0]tx_statistics_ch0_vector;
  wire tx_statistics_ch1_valid;
  wire [25:0]tx_statistics_ch1_vector;
  wire txclk322_ch1;
  wire txn_ch0;
  wire txn_ch1;
  wire txp_ch0;
  wire txp_ch1;

  mac_phy mac_phy_i
       (.aux_resetn(aux_resetn),
        .core_clk156_out(core_clk156_out),
        .core_status_ch0(core_status_ch0),
        .core_status_ch1(core_status_ch1),
        .m_axis_rx_0_tdata(m_axis_rx_0_tdata),
        .m_axis_rx_0_tkeep(m_axis_rx_0_tkeep),
        .m_axis_rx_0_tlast(m_axis_rx_0_tlast),
        .m_axis_rx_0_tuser(m_axis_rx_0_tuser),
        .m_axis_rx_0_tvalid(m_axis_rx_0_tvalid),
        .m_axis_rx_1_tdata(m_axis_rx_1_tdata),
        .m_axis_rx_1_tkeep(m_axis_rx_1_tkeep),
        .m_axis_rx_1_tlast(m_axis_rx_1_tlast),
        .m_axis_rx_1_tuser(m_axis_rx_1_tuser),
        .m_axis_rx_1_tvalid(m_axis_rx_1_tvalid),
        .mb_clk(mb_clk),
        .prtad_ch0(prtad_ch0),
        .prtad_ch1(prtad_ch1),
        .refclk_diff_port_clk_n(refclk_diff_port_clk_n),
        .refclk_diff_port_clk_p(refclk_diff_port_clk_p),
        .reset(reset),
        .reset_n(reset_n),
        .resetdone_ch0(resetdone_ch0),
        .rx_resetdone_ch1(rx_resetdone_ch1),
        .rx_statistics_ch0_valid(rx_statistics_ch0_valid),
        .rx_statistics_ch0_vector(rx_statistics_ch0_vector),
        .rx_statistics_ch1_valid(rx_statistics_ch1_valid),
        .rx_statistics_ch1_vector(rx_statistics_ch1_vector),
        .rxn_ch0(rxn_ch0),
        .rxn_ch1(rxn_ch1),
        .rxp_ch0(rxp_ch0),
        .rxp_ch1(rxp_ch1),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axis_pause_ch0_tdata(s_axis_pause_ch0_tdata),
        .s_axis_pause_ch0_tvalid(s_axis_pause_ch0_tvalid),
        .s_axis_pause_ch1_tdata(s_axis_pause_ch1_tdata),
        .s_axis_pause_ch1_tvalid(s_axis_pause_ch1_tvalid),
        .s_axis_tx_0_tdata(s_axis_tx_0_tdata),
        .s_axis_tx_0_tkeep(s_axis_tx_0_tkeep),
        .s_axis_tx_0_tlast(s_axis_tx_0_tlast),
        .s_axis_tx_0_tready(s_axis_tx_0_tready),
        .s_axis_tx_0_tuser(s_axis_tx_0_tuser),
        .s_axis_tx_0_tvalid(s_axis_tx_0_tvalid),
        .s_axis_tx_1_tdata(s_axis_tx_1_tdata),
        .s_axis_tx_1_tkeep(s_axis_tx_1_tkeep),
        .s_axis_tx_1_tlast(s_axis_tx_1_tlast),
        .s_axis_tx_1_tready(s_axis_tx_1_tready),
        .s_axis_tx_1_tuser(s_axis_tx_1_tuser),
        .s_axis_tx_1_tvalid(s_axis_tx_1_tvalid),
        .sim_speedup_control_ch0(sim_speedup_control_ch0),
        .sim_speedup_control_ch1(sim_speedup_control_ch1),
        .tx_disable_ch0(tx_disable_ch0),
        .tx_disable_ch1(tx_disable_ch1),
        .tx_resetdone_ch1(tx_resetdone_ch1),
        .tx_statistics_ch0_valid(tx_statistics_ch0_valid),
        .tx_statistics_ch0_vector(tx_statistics_ch0_vector),
        .tx_statistics_ch1_valid(tx_statistics_ch1_valid),
        .tx_statistics_ch1_vector(tx_statistics_ch1_vector),
        .txclk322_ch1(txclk322_ch1),
        .txn_ch0(txn_ch0),
        .txn_ch1(txn_ch1),
        .txp_ch0(txp_ch0),
        .txp_ch1(txp_ch1));
endmodule
