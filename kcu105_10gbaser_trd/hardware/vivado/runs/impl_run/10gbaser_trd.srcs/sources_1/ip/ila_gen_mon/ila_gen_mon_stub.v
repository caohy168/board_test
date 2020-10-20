// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov 14 18:16:11 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/project/kcu105_10gbaser_trd/hardware/vivado/runs/impl_run/10gbaser_trd.srcs/sources_1/ip/ila_gen_mon/ila_gen_mon_stub.v
// Design      : ila_gen_mon
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_gen_mon(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[7:0],probe3[7:0],probe4[63:0],probe5[63:0],probe6[0:0],probe7[0:0],probe8[29:0],probe9[0:0],probe10[25:0],probe11[0:0],probe12[29:0],probe13[0:0],probe14[25:0],probe15[63:0],probe16[63:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [7:0]probe2;
  input [7:0]probe3;
  input [63:0]probe4;
  input [63:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [29:0]probe8;
  input [0:0]probe9;
  input [25:0]probe10;
  input [0:0]probe11;
  input [29:0]probe12;
  input [0:0]probe13;
  input [25:0]probe14;
  input [63:0]probe15;
  input [63:0]probe16;
endmodule
