// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Wed Oct 23 14:10:52 2019
// Host        : DESKTOP-I48MRRI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/kcu105_10gbaser_trd/hardware/vivado/runs/impl_run/10gbaser_trd.srcs/sources_1/ip/ila_axis/ila_axis_stub.v
// Design      : ila_axis
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2017.3" *)
module ila_axis(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[63:0],probe2[7:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[7:0],probe7[0:0],probe8[0:0]" */;
  input clk;
  input [0:0]probe0;
  input [63:0]probe1;
  input [7:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [7:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
endmodule
