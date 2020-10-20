// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:51:24 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/dds_125m_q/dds_125m_q_sim_netlist.v
// Design      : dds_125m_q
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_125m_q,dds_compiler_v6_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_19,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module dds_125m_q
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [15:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]m_axis_phase_tdata;
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
  wire [15:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "16" *) 
  (* C_AMPLITUDE = "1" *) 
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
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "16" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0001100110011001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_125m_q_dds_compiler_v6_0_19 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[15:0]),
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

(* C_ACCUMULATOR_WIDTH = "16" *) (* C_AMPLITUDE = "1" *) (* C_CHANNELS = "1" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "1" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "1" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "0" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "3" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "8" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "16" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "0" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0001100110011001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_19" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_125m_q_dds_compiler_v6_0_19
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
  output [7:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [15:0]m_axis_phase_tdata;
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
  output [15:0]debug_axi_pinc_in;
  output [15:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [15:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire [15:0]m_axis_phase_tdata;
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
  wire [15:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
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
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign s_axis_config_tready = \<const1> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUMULATOR_WIDTH = "16" *) 
  (* C_AMPLITUDE = "1" *) 
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
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "16" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "0001100110011001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
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
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds_125m_q_dds_compiler_v6_0_19_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[15:0]),
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
        .m_axis_phase_tdata(m_axis_phase_tdata),
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
Mm1b1SgDBvY+LW62EU7JRncO+Kk6puizixcai4pSouFUA1JxzJbtG6WWWEE6MHTO/0gvGtPRrlcG
O4KdfOwt0Uf+YZ+NXPetYUAwUCEaBvvOVTCDO+MyZwBuoMd7MEDQPWfHlA6OWWRC0pv7JI0KkNWv
dj6n7eBXfROXoj9X7NW/Snij9TLBAFoXLle8TQdr8vWORhQTQ9ofnjEfRigdmveLG7S14bGP3X1s
28CcbQeHd8BllkEJw9MuCo1QyW4jz/NI9Rwm2kedPYQCti6IWkH/zJUyI0zxUOShxUWOUQG/0pH7
tNwSrR0+rsy+HFT6hMw5Vud5VIEZdfOfTuW4EA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XgDZy1x2JGG36H7DPWGw52yQr7B0pQYafmSy54vNG6adDgQm8GOYkyVX51PEJBQbzdOFXAEakEzP
7fBPSP5VKGIjWkc7CUGCbB5ifnAl5yTFgd9ZscPWPGy76t2eNclhdMJ8AFL7xUXEC3rPmiqMDEu0
UHufFJGtLn9bbYLaDAVBe8Pyw0CHGp8PH+/galToZOQVgesnNrv2PXfvsMTPoSb/A0t5WPiSLCKI
TBQ4DeTU0sbI5cJk5qQ/sVjYJPbwvAk2UGn125OjFumvg8IPD45g2a4/PAdWa2PhXkukB4rTiG7a
fAOXOew7yYMOh6GNteHqOaV61ZePhx6mp24azQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34800)
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
