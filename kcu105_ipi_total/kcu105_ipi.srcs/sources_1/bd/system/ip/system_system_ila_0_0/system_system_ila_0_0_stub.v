// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 10:01:43 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0_stub.v
// Design      : system_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_d5b8,Vivado 2019.2" *)
module system_system_ila_0_0(clk, SLOT_0_BRAM_en, SLOT_0_BRAM_dout, 
  SLOT_0_BRAM_din, SLOT_0_BRAM_we, SLOT_0_BRAM_addr, SLOT_0_BRAM_clk, SLOT_0_BRAM_rst, 
  SLOT_1_BRAM_en, SLOT_1_BRAM_dout, SLOT_1_BRAM_din, SLOT_1_BRAM_we, SLOT_1_BRAM_addr, 
  SLOT_1_BRAM_clk, SLOT_1_BRAM_rst)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_BRAM_en,SLOT_0_BRAM_dout[31:0],SLOT_0_BRAM_din[31:0],SLOT_0_BRAM_we[3:0],SLOT_0_BRAM_addr[12:0],SLOT_0_BRAM_clk,SLOT_0_BRAM_rst,SLOT_1_BRAM_en,SLOT_1_BRAM_dout,SLOT_1_BRAM_din,SLOT_1_BRAM_we,SLOT_1_BRAM_addr,SLOT_1_BRAM_clk,SLOT_1_BRAM_rst" */;
  input clk;
  input SLOT_0_BRAM_en;
  input [31:0]SLOT_0_BRAM_dout;
  input [31:0]SLOT_0_BRAM_din;
  input [3:0]SLOT_0_BRAM_we;
  input [12:0]SLOT_0_BRAM_addr;
  input SLOT_0_BRAM_clk;
  input SLOT_0_BRAM_rst;
  input SLOT_1_BRAM_en;
  input SLOT_1_BRAM_dout;
  input SLOT_1_BRAM_din;
  input SLOT_1_BRAM_we;
  input SLOT_1_BRAM_addr;
  input SLOT_1_BRAM_clk;
  input SLOT_1_BRAM_rst;
endmodule
