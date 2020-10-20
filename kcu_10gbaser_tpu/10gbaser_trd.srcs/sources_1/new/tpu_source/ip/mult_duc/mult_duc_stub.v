// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:51:20 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/mult_duc/mult_duc_stub.v
// Design      : mult_duc
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *)
module mult_duc(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[7:0],B[7:0],P[15:0]" */;
  input CLK;
  input [7:0]A;
  input [7:0]B;
  output [15:0]P;
endmodule
