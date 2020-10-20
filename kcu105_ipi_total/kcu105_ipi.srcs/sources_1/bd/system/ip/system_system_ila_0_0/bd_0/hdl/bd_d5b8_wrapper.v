//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d5b8_wrapper.bd
//Design : bd_d5b8_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_d5b8_wrapper
   (SLOT_0_BRAM_addr,
    SLOT_0_BRAM_clk,
    SLOT_0_BRAM_din,
    SLOT_0_BRAM_dout,
    SLOT_0_BRAM_en,
    SLOT_0_BRAM_rst,
    SLOT_0_BRAM_we,
    SLOT_1_BRAM_addr,
    SLOT_1_BRAM_clk,
    SLOT_1_BRAM_din,
    SLOT_1_BRAM_dout,
    SLOT_1_BRAM_en,
    SLOT_1_BRAM_rst,
    SLOT_1_BRAM_we,
    clk);
  input [12:0]SLOT_0_BRAM_addr;
  input SLOT_0_BRAM_clk;
  input [31:0]SLOT_0_BRAM_din;
  input [31:0]SLOT_0_BRAM_dout;
  input SLOT_0_BRAM_en;
  input SLOT_0_BRAM_rst;
  input [3:0]SLOT_0_BRAM_we;
  input SLOT_1_BRAM_addr;
  input SLOT_1_BRAM_clk;
  input SLOT_1_BRAM_din;
  input SLOT_1_BRAM_dout;
  input SLOT_1_BRAM_en;
  input SLOT_1_BRAM_rst;
  input SLOT_1_BRAM_we;
  input clk;

  wire [12:0]SLOT_0_BRAM_addr;
  wire SLOT_0_BRAM_clk;
  wire [31:0]SLOT_0_BRAM_din;
  wire [31:0]SLOT_0_BRAM_dout;
  wire SLOT_0_BRAM_en;
  wire SLOT_0_BRAM_rst;
  wire [3:0]SLOT_0_BRAM_we;
  wire SLOT_1_BRAM_addr;
  wire SLOT_1_BRAM_clk;
  wire SLOT_1_BRAM_din;
  wire SLOT_1_BRAM_dout;
  wire SLOT_1_BRAM_en;
  wire SLOT_1_BRAM_rst;
  wire SLOT_1_BRAM_we;
  wire clk;

  bd_d5b8 bd_d5b8_i
       (.SLOT_0_BRAM_addr(SLOT_0_BRAM_addr),
        .SLOT_0_BRAM_clk(SLOT_0_BRAM_clk),
        .SLOT_0_BRAM_din(SLOT_0_BRAM_din),
        .SLOT_0_BRAM_dout(SLOT_0_BRAM_dout),
        .SLOT_0_BRAM_en(SLOT_0_BRAM_en),
        .SLOT_0_BRAM_rst(SLOT_0_BRAM_rst),
        .SLOT_0_BRAM_we(SLOT_0_BRAM_we),
        .SLOT_1_BRAM_addr(SLOT_1_BRAM_addr),
        .SLOT_1_BRAM_clk(SLOT_1_BRAM_clk),
        .SLOT_1_BRAM_din(SLOT_1_BRAM_din),
        .SLOT_1_BRAM_dout(SLOT_1_BRAM_dout),
        .SLOT_1_BRAM_en(SLOT_1_BRAM_en),
        .SLOT_1_BRAM_rst(SLOT_1_BRAM_rst),
        .SLOT_1_BRAM_we(SLOT_1_BRAM_we),
        .clk(clk));
endmodule
