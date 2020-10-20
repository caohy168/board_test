// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Jun 15 12:55:48 2020
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/dell/Desktop/board_test/kcu_10gbaser_tpu/10gbaser_trd.srcs/sources_1/ip/tpu_clock_mm/tpu_clock_mm_stub.v
// Design      : tpu_clock_mm
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module tpu_clock_mm(clk_out1, clk_out2, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  output clk_out2;
  input clk_in1_p;
  input clk_in1_n;
endmodule
