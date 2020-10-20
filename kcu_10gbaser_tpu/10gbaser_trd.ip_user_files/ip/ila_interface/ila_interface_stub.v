// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov 21 17:53:23 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ila_interface -prefix
//               ila_interface_ ila_gen_mon_axis_stub.v
// Design      : ila_gen_mon_axis
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_interface(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19, probe20, probe21, probe22, probe23)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[63:0],probe1[7:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[63:0],probe7[7:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[63:0],probe13[7:0],probe14[0:0],probe15[0:0],probe16[0:0],probe17[0:0],probe18[63:0],probe19[7:0],probe20[0:0],probe21[0:0],probe22[0:0],probe23[0:0]" */;
  input clk;
  input [63:0]probe0;
  input [7:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [63:0]probe6;
  input [7:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [63:0]probe12;
  input [7:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [0:0]probe17;
  input [63:0]probe18;
  input [7:0]probe19;
  input [0:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [0:0]probe23;
endmodule
