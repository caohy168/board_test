// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Mar 20 10:43:05 2020
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dell/Desktop/TPU_pr/tpu/tpu.srcs/sources_1/ip/dds_upfir/dds_upfir_sim_netlist.v
// Design      : dds_upfir
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_upfir,dds_compiler_v6_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_19,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module dds_upfir
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "1101000110110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_upfir_dds_compiler_v6_0_19 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "28" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "16" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "32" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "1101000110110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_19" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_upfir_dds_compiler_v6_0_19
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [0:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [15:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [31:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [27:0]debug_axi_pinc_in;
  output [27:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [27:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire [27:0]\^m_axis_phase_tdata ;
  wire m_axis_phase_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_config_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [30:27]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[27] = \<const0> ;
  assign debug_axi_pinc_in[26] = \<const0> ;
  assign debug_axi_pinc_in[25] = \<const0> ;
  assign debug_axi_pinc_in[24] = \<const0> ;
  assign debug_axi_pinc_in[23] = \<const0> ;
  assign debug_axi_pinc_in[22] = \<const0> ;
  assign debug_axi_pinc_in[21] = \<const0> ;
  assign debug_axi_pinc_in[20] = \<const0> ;
  assign debug_axi_pinc_in[19] = \<const0> ;
  assign debug_axi_pinc_in[18] = \<const0> ;
  assign debug_axi_pinc_in[17] = \<const0> ;
  assign debug_axi_pinc_in[16] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[27] = \<const0> ;
  assign debug_axi_poff_in[26] = \<const0> ;
  assign debug_axi_poff_in[25] = \<const0> ;
  assign debug_axi_poff_in[24] = \<const0> ;
  assign debug_axi_poff_in[23] = \<const0> ;
  assign debug_axi_poff_in[22] = \<const0> ;
  assign debug_axi_poff_in[21] = \<const0> ;
  assign debug_axi_poff_in[20] = \<const0> ;
  assign debug_axi_poff_in[19] = \<const0> ;
  assign debug_axi_poff_in[18] = \<const0> ;
  assign debug_axi_poff_in[17] = \<const0> ;
  assign debug_axi_poff_in[16] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[27] = \<const0> ;
  assign debug_phase[26] = \<const0> ;
  assign debug_phase[25] = \<const0> ;
  assign debug_phase[24] = \<const0> ;
  assign debug_phase[23] = \<const0> ;
  assign debug_phase[22] = \<const0> ;
  assign debug_phase[21] = \<const0> ;
  assign debug_phase[20] = \<const0> ;
  assign debug_phase[19] = \<const0> ;
  assign debug_phase[18] = \<const0> ;
  assign debug_phase[17] = \<const0> ;
  assign debug_phase[16] = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_config_tlast_missing = \<const0> ;
  assign event_s_config_tlast_unexpected = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_data_tvalid = m_axis_phase_tvalid;
  assign m_axis_phase_tdata[31] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[30] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[29] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[28] = \^m_axis_phase_tdata [27];
  assign m_axis_phase_tdata[27:0] = \^m_axis_phase_tdata [27:0];
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "1101000110110111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_upfir_dds_compiler_v6_0_19_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_phase_tvalid),
        .m_axis_phase_tdata({\^m_axis_phase_tdata [27],NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[30:27],\^m_axis_phase_tdata [26:0]}),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_i_synth_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
GChCViBDvBmAdEhOubfL25GMXfGxkXRdRqHGmAYIfuDlTr17bmWtS+GhikUinfgaTyxkmMH8CseP
gnd/2HW10g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MrlvIibpKEfGGLF89ZYa/MxSWreV1ceGqUI6m07gM/kuMQZAYp2a++EIZlP+UjNP51wFBhQ3c3zS
QdkFbBqG6uYLZzwSlk6gLqBqvuZE/svIDiGBQbqYiXvUtpsADkdJijHyEXCWIIfA2OybpwP9q9td
K8W1ihFrAkZes3XwNzA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S/HhZNGAOnVSjBaHp2/iJ+uhoS21MUt/ylKAWbdawBFCF9FkUaRlu5dlJRkeM7EFSLvmm6AdQ7tl
PFLc6nUqRxmcsib+JZVada3nOm2+ZzWt2pBGxOUWy1KlB3WROt2liUGfjrxKGEXvt9xlbj7bdIUb
2m+T4LI1aaXqhlGKjy/KpKUf1QOkJCRs0Ku5aotmezBo5GKTFGyZJ3MYO4GKMIfK9iu8sq6VaYMo
k1HNwS1FdJIkAS9xVgsyFkDCzQWeJzTkIZvZQmiwZL9HosMCrHwO2bB0MMldcTYqO/p/dWEFOMhj
t/a4spWmGP9HmOzdM3HjnWh6sHlnCzfHQSkgTA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Casey7LdMe+nZ1xDjbqn5ljtI3LEVuHmV02n1dKqHlXDDy8DngD/F/sT3eZKKWGTYI9OYA8xmK96
NDm7hPSP0ZbcSw2tiWAvyCZWlna3Dzb0oLOsECWeQTM9trjqnrFG881fwCtgX9vmTRQDy7PCg4mn
qaXt4R91tVE0xabKcbKkG3xbZWQa6qcQ1h11pI3DqCvtBoftQdeMm5iU3cfBpqJqka9rRftnPdqV
2HoyzByDV6pDJ1J8/KIiRxyv5NnLSS2sGS/CBn4pn75rlQww9RJEI6qSkYVBdTDgR6hlIRpCam7s
v6LGO0DaEGEJx4a29MQt1LmwETzoV0LC+Kto1g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Szmb9fARj7tLQ/kYcmela18wgMQOHuePfCjZoqT9rm2JaDsVv6W01aCED76msRM59qYJACEIkk+J
bcP8tgMPR2C/v734MT1slRro6En1Rh7JRymnQdCTkPfY0Gd+bBpKeCUjSHsEnypR3ANNLS7D3Wty
cqDCpd89/zwR4nU3fXm0CrN8SiZCmRUVpBfj7XWaBj7Yk+zSc5O3QSer4ary7oM/p77ZLrcUqPp4
rT+zRAzIxYRIx2Fwr4iC+RlgSveUS6anXWdYJCMvpvkqie/R1LODvRdI2STZ7+asbTdD3e3bEmUa
m0pCwPbzt7/lifwYfvlhF10n0yGIMhRwRY5peg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pL5q36kJfJC6ewp2x/1i7eeZBloaj/U5eYbGB9YTbBMi0l/bcSRiH+sqvmrNgzRd6nhqY8TvdSQx
+I7q+SxwYfHb7B6C5dIE2rOVpaRsOwRr9vEoe80+N3I+sArQRhW9gncruvIXEARrDzBmi6t0LD4T
S/NQ8qA26Znqzg7N6nE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XTdbHsxPlZvkQD0a/DK11HearLdHYvEKXjUg6uCX53UHblSKrvghRsCpGpo2P57LEqbC/O1sQefR
r+zkBI6qS66DFQTDwXUo5OXor8HluwZ2IM5iK90Im25PwSNoCgukNXIjcl+Du88CoEwH6KbHIt+V
ovklGLLjypbhfR0fjBexk6I+uBdRnUwsz1qjiXHfSPs+kiQpxLXUlNH6u9M1V1c+JvBpmMjLDs97
BLeZ0IQn8XeC0vmC/ga5xruNFULQ0L1x/bz7ogrEiNURm8YRyckk3MPZ5Ue2qe9rS6aFR5+BfbZs
aG8dmpJNqTItn6C4p5bVoGz/1SprAiE1UdTIIQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
euuuXgiCv1wOPpltLLnsWcSA5ILR7Z9Z2nZqW2W1SZ0RHMADeZd3r0Fm8aepgwBRrF47ZDKxcwIE
h/ogQEP/9UPuixzatre2Jg1RR3/B+0uPX/mOhoGz/iCwZBV3iHP+HLTWk6V09RT9mIl/txLdSARG
A5pL3qU+bwua/mqlHBBoh7SUZNlhRhXQjlQPAm9Ho6BR3uS0w6hvEFblGSN7YBoptM6X0/yX2m9y
bAvAkdyn+k1BbHMI9k6txj+oPWeymozWZ0b/R4Oe7mFFihDE4Z507yP9ZQFqWM5KfrPfrs0zHbbv
4mZRLDyxiI2J5Da7s1aCvIx8UzQ/XBIUH1eiVQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Om29goBSqW2yEXIApJSbiie/CJVjlEsa/Vhh6B2vdkhkc/kfguTWrtmviDt1sO44m76dQCAaqIMm
3U6rDyBgsoq2Z3VtE2cip/5XyXzP8txr6F18EsmFFVAU4a/ZSYtVb6J5tni+f+AlO9Q3iSDq0lHG
waz55E0aLJBsXdDY/FuGPKfj63vATFCVmJsGMMydr7IxNw5GGAgRle8vIKLWm42H7Fc2/R1pF2bx
e7BWJXEwVDaDvhxTVxUJdJhZ81IlMdWjCHpID2K3GZaWYEDAIRqXk7DEKv/+t/IVOEMufb2Gmmfe
5mplaE1jBCUfmGP85FsL8lWSboqFcIBab50V6Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/rvvOQ5OADUlmlmoAi/ZmOEpPv8W9r8g0JIF4CmZHkdbSoqQIP7IO1eZ5kb4h7j2Qi0ur0KvHJW
CSNpzyTgrvueGa/5gV+ldPDx3pq6lMerW4V3C1Wg+LCZndTtl+FIZ3IRuqdq1l2Gu3JZaeHmCUVo
vutMSKMAOmnn3DmKvrU2pScFSOXXXZqqLz85p+ER4Is4HVS8vka/IjIOrNFSZ82qxxOlyGSZlv+G
nFeB4hg9zfsgAIZ13sixxJqZFkkhXTJdUUp+N5MIMLApVrpwRJpmTNbxySvDROtjAJzsAOpxgxYG
rin5xM9uSaiHn4MHspaRbSaBnusLt2W7nGww4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45632)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
