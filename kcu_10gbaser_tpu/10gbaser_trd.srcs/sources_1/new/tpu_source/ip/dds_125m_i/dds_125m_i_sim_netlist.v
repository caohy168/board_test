// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:51:23 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/dds_125m_i/dds_125m_i_sim_netlist.v
// Design      : dds_125m_i
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_125m_i,dds_compiler_v6_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_19,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module dds_125m_i
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
  (* C_OUTPUTS_REQUIRED = "1" *) 
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
  dds_125m_i_dds_compiler_v6_0_19 U0
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
(* C_OUTPUTS_REQUIRED = "1" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "8" *) 
(* C_PHASE_ANGLE_WIDTH = "8" *) (* C_PHASE_INCREMENT = "2" *) (* C_PHASE_INCREMENT_VALUE = "0001100110011001,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_19" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds_125m_i_dds_compiler_v6_0_19
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
  (* C_OUTPUTS_REQUIRED = "1" *) 
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
  dds_125m_i_dds_compiler_v6_0_19_viv i_synth
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
fRscyxBlhzKFQ+QupZqXim5TBTNnN+cKCg0HdYjYsI83BZrUHCAJZS0h0gNdauEbqH2i01N50rgd
syU8mxeqwXpXeS+crrAX/w6K3v8QjCBn4UECFixzYDnG50O7DLYtiKLvSvZ13UK5hVl0w04AP8Ds
ucY6AlhiF2QmMbMpIPoIffpixW4PtwBzNLI6YMIYVupiL8sYn/D6S2TBPTQPTZcN7AtQ65JInw6t
yoM0h2cElXt7GasST5crEq1Lj8EPMHXFmDvREDrqtjJ3KDbbl6pEqDdX6ft15umWsPIsetCwCvTP
jcAK5b35EzcVZl2n/moRDM0Z/ENFCJoe8YlsGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EjD90kZSB2iMYsuL25q9xWg7xZOLRyMW0By2H4lw2D0Z5lWuS/1g8b/pzM059LjMI/3KqyyF8YIH
gCH2As83OnWMLzKjexAhkUxxpLc64jiEcBd2IBtbVupjGaUIQU45TTJ44jKknRcPYy71V0/QDqh/
76qa+zmu7wo8++r+F4mWZQ7hEeGK5LCZalhxlwJISIHEcvf1xudmJIWCwCUjJnKe1FLuo4Pe725m
gcbB4Rxqt4L0zqYrwNz3Y4F+AgHg139aSTJjPc9naQCZRTduVQGmXZCghzpGTGF2rubKk6x9HnDi
fWinGLmvXXcfqkgpbWKxqCrJi90zD4ZuGUsR+w==

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
