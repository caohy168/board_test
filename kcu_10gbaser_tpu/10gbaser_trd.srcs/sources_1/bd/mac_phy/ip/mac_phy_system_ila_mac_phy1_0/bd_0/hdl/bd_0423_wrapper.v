//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0423_wrapper.bd
//Design : bd_0423_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0423_wrapper
   (SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tready,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tkeep,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tuser,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tkeep,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tready,
    SLOT_2_AXIS_tuser,
    SLOT_2_AXIS_tvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tkeep,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tuser,
    SLOT_3_AXIS_tvalid,
    clk,
    resetn);
  input [63:0]SLOT_0_AXIS_tdata;
  input [7:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tready;
  input [0:0]SLOT_0_AXIS_tuser;
  input SLOT_0_AXIS_tvalid;
  input [63:0]SLOT_1_AXIS_tdata;
  input [7:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input [0:0]SLOT_1_AXIS_tuser;
  input SLOT_1_AXIS_tvalid;
  input [63:0]SLOT_2_AXIS_tdata;
  input [7:0]SLOT_2_AXIS_tkeep;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tready;
  input [0:0]SLOT_2_AXIS_tuser;
  input SLOT_2_AXIS_tvalid;
  input [63:0]SLOT_3_AXIS_tdata;
  input [7:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input [0:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input clk;
  input resetn;

  wire [63:0]SLOT_0_AXIS_tdata;
  wire [7:0]SLOT_0_AXIS_tkeep;
  wire SLOT_0_AXIS_tlast;
  wire SLOT_0_AXIS_tready;
  wire [0:0]SLOT_0_AXIS_tuser;
  wire SLOT_0_AXIS_tvalid;
  wire [63:0]SLOT_1_AXIS_tdata;
  wire [7:0]SLOT_1_AXIS_tkeep;
  wire SLOT_1_AXIS_tlast;
  wire [0:0]SLOT_1_AXIS_tuser;
  wire SLOT_1_AXIS_tvalid;
  wire [63:0]SLOT_2_AXIS_tdata;
  wire [7:0]SLOT_2_AXIS_tkeep;
  wire SLOT_2_AXIS_tlast;
  wire SLOT_2_AXIS_tready;
  wire [0:0]SLOT_2_AXIS_tuser;
  wire SLOT_2_AXIS_tvalid;
  wire [63:0]SLOT_3_AXIS_tdata;
  wire [7:0]SLOT_3_AXIS_tkeep;
  wire SLOT_3_AXIS_tlast;
  wire [0:0]SLOT_3_AXIS_tuser;
  wire SLOT_3_AXIS_tvalid;
  wire clk;
  wire resetn;

  bd_0423 bd_0423_i
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tkeep(SLOT_1_AXIS_tkeep),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tuser(SLOT_1_AXIS_tuser),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
        .SLOT_2_AXIS_tkeep(SLOT_2_AXIS_tkeep),
        .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
        .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
        .SLOT_2_AXIS_tuser(SLOT_2_AXIS_tuser),
        .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tkeep(SLOT_3_AXIS_tkeep),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tuser(SLOT_3_AXIS_tuser),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
