// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 09:59:33 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top system_util_ds_buf_1_0 -prefix
//               system_util_ds_buf_1_0_ system_util_ds_buf_3_0_sim_netlist.v
// Design      : system_util_ds_buf_3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_util_ds_buf_3_0,util_ds_buf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_ds_buf,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module system_util_ds_buf_1_0
   (OBUF_IN,
    OBUF_DS_P,
    OBUF_DS_N);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 OBUF_IN CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME OBUF_IN, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input [16:0]OBUF_IN;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 OBUF_DS_P CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_3_0_OBUF_DS_P, INSERT_VIP 0" *) output [16:0]OBUF_DS_P;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 OBUF_DS_N CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_3_0_OBUF_DS_N, INSERT_VIP 0" *) output [16:0]OBUF_DS_N;

  (* SLEW = "SLOW" *) wire [16:0]OBUF_DS_N;
  (* SLEW = "SLOW" *) wire [16:0]OBUF_DS_P;
  (* SLEW = "SLOW" *) wire [16:0]OBUF_IN;
  wire [16:0]NLW_U0_BUFGCE_O_UNCONNECTED;
  wire [16:0]NLW_U0_BUFG_GT_O_UNCONNECTED;
  wire [16:0]NLW_U0_BUFG_O_UNCONNECTED;
  wire [16:0]NLW_U0_BUFHCE_O_UNCONNECTED;
  wire [16:0]NLW_U0_BUFH_O_UNCONNECTED;
  wire [16:0]NLW_U0_IBUF_DS_ODIV2_UNCONNECTED;
  wire [16:0]NLW_U0_IBUF_OUT_UNCONNECTED;
  wire [16:0]NLW_U0_IOBUF_DS_N_UNCONNECTED;
  wire [16:0]NLW_U0_IOBUF_DS_P_UNCONNECTED;
  wire [16:0]NLW_U0_IOBUF_IO_IO_UNCONNECTED;
  wire [16:0]NLW_U0_IOBUF_IO_O_UNCONNECTED;

  (* C_BUFGCE_DIV = "1" *) 
  (* C_BUFG_GT_SYNC = "0" *) 
  (* C_BUF_TYPE = "OBUFDS" *) 
  (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
  (* C_SIZE = "17" *) 
  system_util_ds_buf_1_0_util_ds_buf U0
       (.BUFGCE_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_O(NLW_U0_BUFGCE_O_UNCONNECTED[16:0]),
        .BUFG_GT_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CEMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CLRMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_DIV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_O(NLW_U0_BUFG_GT_O_UNCONNECTED[16:0]),
        .BUFG_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_O(NLW_U0_BUFG_O_UNCONNECTED[16:0]),
        .BUFHCE_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFHCE_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFHCE_O(NLW_U0_BUFHCE_O_UNCONNECTED[16:0]),
        .BUFH_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFH_O(NLW_U0_BUFH_O_UNCONNECTED[16:0]),
        .IBUF_DS_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_DS_N({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_DS_ODIV2(NLW_U0_IBUF_DS_ODIV2_UNCONNECTED[16:0]),
        .IBUF_DS_P({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_OUT(NLW_U0_IBUF_OUT_UNCONNECTED[16:0]),
        .IOBUF_DS_N(NLW_U0_IOBUF_DS_N_UNCONNECTED[16:0]),
        .IOBUF_DS_P(NLW_U0_IOBUF_DS_P_UNCONNECTED[16:0]),
        .IOBUF_IO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IOBUF_IO_IO(NLW_U0_IOBUF_IO_IO_UNCONNECTED[16:0]),
        .IOBUF_IO_O(NLW_U0_IOBUF_IO_O_UNCONNECTED[16:0]),
        .IOBUF_IO_T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUF_DS_N(OBUF_DS_N),
        .OBUF_DS_P(OBUF_DS_P),
        .OBUF_IN(OBUF_IN));
endmodule

(* C_BUFGCE_DIV = "1" *) (* C_BUFG_GT_SYNC = "0" *) (* C_BUF_TYPE = "OBUFDS" *) 
(* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) (* C_SIZE = "17" *) 
module system_util_ds_buf_1_0_util_ds_buf
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT,
    IBUF_DS_ODIV2,
    IBUF_DS_CEB,
    OBUF_IN,
    OBUF_DS_P,
    OBUF_DS_N,
    IOBUF_DS_P,
    IOBUF_DS_N,
    IOBUF_IO_T,
    IOBUF_IO_I,
    IOBUF_IO_O,
    IOBUF_IO_IO,
    BUFG_I,
    BUFG_O,
    BUFGCE_I,
    BUFGCE_CE,
    BUFGCE_O,
    BUFGCE_CLR,
    BUFH_I,
    BUFH_O,
    BUFHCE_I,
    BUFHCE_CE,
    BUFHCE_O,
    BUFG_GT_I,
    BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    BUFG_GT_O);
  input [16:0]IBUF_DS_P;
  input [16:0]IBUF_DS_N;
  output [16:0]IBUF_OUT;
  output [16:0]IBUF_DS_ODIV2;
  input [16:0]IBUF_DS_CEB;
  input [16:0]OBUF_IN;
  output [16:0]OBUF_DS_P;
  output [16:0]OBUF_DS_N;
  inout [16:0]IOBUF_DS_P;
  inout [16:0]IOBUF_DS_N;
  input [16:0]IOBUF_IO_T;
  input [16:0]IOBUF_IO_I;
  output [16:0]IOBUF_IO_O;
  inout [16:0]IOBUF_IO_IO;
  input [16:0]BUFG_I;
  output [16:0]BUFG_O;
  input [16:0]BUFGCE_I;
  input [16:0]BUFGCE_CE;
  output [16:0]BUFGCE_O;
  input [16:0]BUFGCE_CLR;
  input [16:0]BUFH_I;
  output [16:0]BUFH_O;
  input [16:0]BUFHCE_I;
  input [16:0]BUFHCE_CE;
  output [16:0]BUFHCE_O;
  input [16:0]BUFG_GT_I;
  input [16:0]BUFG_GT_CE;
  input [16:0]BUFG_GT_CEMASK;
  input [16:0]BUFG_GT_CLR;
  input [16:0]BUFG_GT_CLRMASK;
  input [50:0]BUFG_GT_DIV;
  output [16:0]BUFG_GT_O;

  wire \<const0> ;
  wire [16:0]OBUF_DS_N;
  wire [16:0]OBUF_DS_P;
  wire [16:0]OBUF_IN;

  assign BUFGCE_O[16] = IOBUF_DS_P[9];
  assign BUFGCE_O[15] = IOBUF_DS_P[9];
  assign BUFGCE_O[14] = IOBUF_DS_P[9];
  assign BUFGCE_O[13] = IOBUF_DS_P[9];
  assign BUFGCE_O[12] = IOBUF_DS_P[9];
  assign BUFGCE_O[11] = IOBUF_DS_P[9];
  assign BUFGCE_O[10] = IOBUF_DS_P[9];
  assign BUFGCE_O[9] = IOBUF_DS_P[9];
  assign BUFGCE_O[8] = IOBUF_DS_P[9];
  assign BUFGCE_O[7] = IOBUF_DS_P[9];
  assign BUFGCE_O[6] = IOBUF_DS_P[9];
  assign BUFGCE_O[5] = IOBUF_DS_P[9];
  assign BUFGCE_O[4] = IOBUF_DS_P[9];
  assign BUFGCE_O[3] = IOBUF_DS_P[9];
  assign BUFGCE_O[2] = IOBUF_DS_P[9];
  assign BUFGCE_O[1] = IOBUF_DS_P[9];
  assign BUFGCE_O[0] = IOBUF_DS_P[9];
  assign BUFG_GT_O[16] = IOBUF_DS_P[9];
  assign BUFG_GT_O[15] = IOBUF_DS_P[9];
  assign BUFG_GT_O[14] = IOBUF_DS_P[9];
  assign BUFG_GT_O[13] = IOBUF_DS_P[9];
  assign BUFG_GT_O[12] = IOBUF_DS_P[9];
  assign BUFG_GT_O[11] = IOBUF_DS_P[9];
  assign BUFG_GT_O[10] = IOBUF_DS_P[9];
  assign BUFG_GT_O[9] = IOBUF_DS_P[9];
  assign BUFG_GT_O[8] = IOBUF_DS_P[9];
  assign BUFG_GT_O[7] = IOBUF_DS_P[9];
  assign BUFG_GT_O[6] = IOBUF_DS_P[9];
  assign BUFG_GT_O[5] = IOBUF_DS_P[9];
  assign BUFG_GT_O[4] = IOBUF_DS_P[9];
  assign BUFG_GT_O[3] = IOBUF_DS_P[9];
  assign BUFG_GT_O[2] = IOBUF_DS_P[9];
  assign BUFG_GT_O[1] = IOBUF_DS_P[9];
  assign BUFG_GT_O[0] = IOBUF_DS_P[9];
  assign BUFG_O[16] = IOBUF_DS_P[9];
  assign BUFG_O[15] = IOBUF_DS_P[9];
  assign BUFG_O[14] = IOBUF_DS_P[9];
  assign BUFG_O[13] = IOBUF_DS_P[9];
  assign BUFG_O[12] = IOBUF_DS_P[9];
  assign BUFG_O[11] = IOBUF_DS_P[9];
  assign BUFG_O[10] = IOBUF_DS_P[9];
  assign BUFG_O[9] = IOBUF_DS_P[9];
  assign BUFG_O[8] = IOBUF_DS_P[9];
  assign BUFG_O[7] = IOBUF_DS_P[9];
  assign BUFG_O[6] = IOBUF_DS_P[9];
  assign BUFG_O[5] = IOBUF_DS_P[9];
  assign BUFG_O[4] = IOBUF_DS_P[9];
  assign BUFG_O[3] = IOBUF_DS_P[9];
  assign BUFG_O[2] = IOBUF_DS_P[9];
  assign BUFG_O[1] = IOBUF_DS_P[9];
  assign BUFG_O[0] = IOBUF_DS_P[9];
  assign BUFHCE_O[16] = IOBUF_DS_P[9];
  assign BUFHCE_O[15] = IOBUF_DS_P[9];
  assign BUFHCE_O[14] = IOBUF_DS_P[9];
  assign BUFHCE_O[13] = IOBUF_DS_P[9];
  assign BUFHCE_O[12] = IOBUF_DS_P[9];
  assign BUFHCE_O[11] = IOBUF_DS_P[9];
  assign BUFHCE_O[10] = IOBUF_DS_P[9];
  assign BUFHCE_O[9] = IOBUF_DS_P[9];
  assign BUFHCE_O[8] = IOBUF_DS_P[9];
  assign BUFHCE_O[7] = IOBUF_DS_P[9];
  assign BUFHCE_O[6] = IOBUF_DS_P[9];
  assign BUFHCE_O[5] = IOBUF_DS_P[9];
  assign BUFHCE_O[4] = IOBUF_DS_P[9];
  assign BUFHCE_O[3] = IOBUF_DS_P[9];
  assign BUFHCE_O[2] = IOBUF_DS_P[9];
  assign BUFHCE_O[1] = IOBUF_DS_P[9];
  assign BUFHCE_O[0] = IOBUF_DS_P[9];
  assign BUFH_O[16] = IOBUF_DS_P[9];
  assign BUFH_O[15] = IOBUF_DS_P[9];
  assign BUFH_O[14] = IOBUF_DS_P[9];
  assign BUFH_O[13] = IOBUF_DS_P[9];
  assign BUFH_O[12] = IOBUF_DS_P[9];
  assign BUFH_O[11] = IOBUF_DS_P[9];
  assign BUFH_O[10] = IOBUF_DS_P[9];
  assign BUFH_O[9] = IOBUF_DS_P[9];
  assign BUFH_O[8] = IOBUF_DS_P[9];
  assign BUFH_O[7] = IOBUF_DS_P[9];
  assign BUFH_O[6] = IOBUF_DS_P[9];
  assign BUFH_O[5] = IOBUF_DS_P[9];
  assign BUFH_O[4] = IOBUF_DS_P[9];
  assign BUFH_O[3] = IOBUF_DS_P[9];
  assign BUFH_O[2] = IOBUF_DS_P[9];
  assign BUFH_O[1] = IOBUF_DS_P[9];
  assign BUFH_O[0] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[16] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[15] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[14] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[13] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[12] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[11] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[10] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[9] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[8] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[7] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[6] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[5] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[4] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[3] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[2] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[1] = IOBUF_DS_P[9];
  assign IBUF_DS_ODIV2[0] = IOBUF_DS_P[9];
  assign IBUF_OUT[16] = IOBUF_DS_P[9];
  assign IBUF_OUT[15] = IOBUF_DS_P[9];
  assign IBUF_OUT[14] = IOBUF_DS_P[9];
  assign IBUF_OUT[13] = IOBUF_DS_P[9];
  assign IBUF_OUT[12] = IOBUF_DS_P[9];
  assign IBUF_OUT[11] = IOBUF_DS_P[9];
  assign IBUF_OUT[10] = IOBUF_DS_P[9];
  assign IBUF_OUT[9] = IOBUF_DS_P[9];
  assign IBUF_OUT[8] = IOBUF_DS_P[9];
  assign IBUF_OUT[7] = IOBUF_DS_P[9];
  assign IBUF_OUT[6] = IOBUF_DS_P[9];
  assign IBUF_OUT[5] = IOBUF_DS_P[9];
  assign IBUF_OUT[4] = IOBUF_DS_P[9];
  assign IBUF_OUT[3] = IOBUF_DS_P[9];
  assign IBUF_OUT[2] = IOBUF_DS_P[9];
  assign IBUF_OUT[1] = IOBUF_DS_P[9];
  assign IBUF_OUT[0] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[16] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[15] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[14] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[13] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[12] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[11] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[10] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[9] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[8] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[7] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[6] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[5] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[4] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[3] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[2] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[1] = IOBUF_DS_P[9];
  assign IOBUF_IO_O[0] = IOBUF_DS_P[9];
  xVIA IOBUF_DS_N_0via (IOBUF_DS_N[0], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_10via (IOBUF_DS_N[10], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_11via (IOBUF_DS_N[11], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_12via (IOBUF_DS_N[12], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_13via (IOBUF_DS_N[13], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_14via (IOBUF_DS_N[14], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_15via (IOBUF_DS_N[15], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_16via (IOBUF_DS_N[16], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_1via (IOBUF_DS_N[1], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_2via (IOBUF_DS_N[2], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_3via (IOBUF_DS_N[3], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_4via (IOBUF_DS_N[4], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_5via (IOBUF_DS_N[5], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_6via (IOBUF_DS_N[6], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_7via (IOBUF_DS_N[7], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_8via (IOBUF_DS_N[8], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_N_9via (IOBUF_DS_N[9], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_0via (IOBUF_DS_P[0], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_10via (IOBUF_DS_P[10], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_11via (IOBUF_DS_P[11], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_12via (IOBUF_DS_P[12], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_13via (IOBUF_DS_P[13], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_14via (IOBUF_DS_P[14], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_15via (IOBUF_DS_P[15], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_16via (IOBUF_DS_P[16], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_1via (IOBUF_DS_P[1], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_2via (IOBUF_DS_P[2], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_3via (IOBUF_DS_P[3], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_4via (IOBUF_DS_P[4], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_5via (IOBUF_DS_P[5], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_6via (IOBUF_DS_P[6], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_7via (IOBUF_DS_P[7], IOBUF_DS_P[9]);
  xVIA IOBUF_DS_P_8via (IOBUF_DS_P[8], IOBUF_DS_P[9]);
  GND GND
       (.G(IOBUF_DS_P[9]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I 
       (.I(OBUF_IN[0]),
        .O(OBUF_DS_P[0]),
        .OB(OBUF_DS_N[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[10].OBUFDS_I 
       (.I(OBUF_IN[10]),
        .O(OBUF_DS_P[10]),
        .OB(OBUF_DS_N[10]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[11].OBUFDS_I 
       (.I(OBUF_IN[11]),
        .O(OBUF_DS_P[11]),
        .OB(OBUF_DS_N[11]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[12].OBUFDS_I 
       (.I(OBUF_IN[12]),
        .O(OBUF_DS_P[12]),
        .OB(OBUF_DS_N[12]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[13].OBUFDS_I 
       (.I(OBUF_IN[13]),
        .O(OBUF_DS_P[13]),
        .OB(OBUF_DS_N[13]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[14].OBUFDS_I 
       (.I(OBUF_IN[14]),
        .O(OBUF_DS_P[14]),
        .OB(OBUF_DS_N[14]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[15].OBUFDS_I 
       (.I(OBUF_IN[15]),
        .O(OBUF_DS_P[15]),
        .OB(OBUF_DS_N[15]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[16].OBUFDS_I 
       (.I(OBUF_IN[16]),
        .O(OBUF_DS_P[16]),
        .OB(OBUF_DS_N[16]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[1].OBUFDS_I 
       (.I(OBUF_IN[1]),
        .O(OBUF_DS_P[1]),
        .OB(OBUF_DS_N[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[2].OBUFDS_I 
       (.I(OBUF_IN[2]),
        .O(OBUF_DS_P[2]),
        .OB(OBUF_DS_N[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[3].OBUFDS_I 
       (.I(OBUF_IN[3]),
        .O(OBUF_DS_P[3]),
        .OB(OBUF_DS_N[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[4].OBUFDS_I 
       (.I(OBUF_IN[4]),
        .O(OBUF_DS_P[4]),
        .OB(OBUF_DS_N[4]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[5].OBUFDS_I 
       (.I(OBUF_IN[5]),
        .O(OBUF_DS_P[5]),
        .OB(OBUF_DS_N[5]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[6].OBUFDS_I 
       (.I(OBUF_IN[6]),
        .O(OBUF_DS_P[6]),
        .OB(OBUF_DS_N[6]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[7].OBUFDS_I 
       (.I(OBUF_IN[7]),
        .O(OBUF_DS_P[7]),
        .OB(OBUF_DS_N[7]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[8].OBUFDS_I 
       (.I(OBUF_IN[8]),
        .O(OBUF_DS_P[8]),
        .OB(OBUF_DS_N[8]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_OBUFDS.GEN_OBUFDS[9].OBUFDS_I 
       (.I(OBUF_IN[9]),
        .O(OBUF_DS_P[9]),
        .OB(OBUF_DS_N[9]));
endmodule
module xVIA(.a(w),.b(w));
inout w;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
