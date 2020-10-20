// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 09:59:32 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_USER_SI570_CLOCK_ctr_0 -prefix
//               system_USER_SI570_CLOCK_ctr_0_ system_CLK_125MHZ_ctr_0_stub.v
// Design      : system_CLK_125MHZ_ctr_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "diff_freq_counter,Vivado 2019.2" *)
module system_USER_SI570_CLOCK_ctr_0(FREQ_CNT_O, RST_I, REF_CLK_I, DIFF_CLKIN_P, 
  DIFF_CLKIN_N)
/* synthesis syn_black_box black_box_pad_pin="FREQ_CNT_O[15:0],RST_I,REF_CLK_I,DIFF_CLKIN_P,DIFF_CLKIN_N" */;
  output [15:0]FREQ_CNT_O;
  input RST_I;
  input REF_CLK_I;
  input DIFF_CLKIN_P;
  input DIFF_CLKIN_N;
endmodule
