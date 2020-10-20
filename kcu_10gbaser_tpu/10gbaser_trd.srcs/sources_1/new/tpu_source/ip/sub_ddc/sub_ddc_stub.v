// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:52:30 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/sub_ddc/sub_ddc_stub.v
// Design      : sub_ddc
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *)
module sub_ddc(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],CLK,S[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input CLK;
  output [31:0]S;
endmodule
