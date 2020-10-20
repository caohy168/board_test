// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 09:59:32 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_CLK_125MHZ_ctr_0/system_CLK_125MHZ_ctr_0_sim_netlist.v
// Design      : system_CLK_125MHZ_ctr_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_CLK_125MHZ_ctr_0,diff_freq_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "diff_freq_counter,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module system_CLK_125MHZ_ctr_0
   (FREQ_CNT_O,
    RST_I,
    REF_CLK_I,
    DIFF_CLKIN_P,
    DIFF_CLKIN_N);
  output [15:0]FREQ_CNT_O;
  input RST_I;
  input REF_CLK_I;
  input DIFF_CLKIN_P;
  input DIFF_CLKIN_N;

  (* IBUF_LOW_PWR *) wire DIFF_CLKIN_N;
  (* IBUF_LOW_PWR *) wire DIFF_CLKIN_P;
  wire [15:0]FREQ_CNT_O;
  wire REF_CLK_I;
  wire RST_I;

  system_CLK_125MHZ_ctr_0_diff_freq_counter inst
       (.DIFF_CLKIN_N(DIFF_CLKIN_N),
        .DIFF_CLKIN_P(DIFF_CLKIN_P),
        .FREQ_CNT_O(FREQ_CNT_O),
        .REF_CLK_I(REF_CLK_I),
        .RST_I(RST_I));
endmodule

(* ORIG_REF_NAME = "diff_freq_counter" *) 
module system_CLK_125MHZ_ctr_0_diff_freq_counter
   (FREQ_CNT_O,
    DIFF_CLKIN_P,
    DIFF_CLKIN_N,
    REF_CLK_I,
    RST_I);
  output [15:0]FREQ_CNT_O;
  input DIFF_CLKIN_P;
  input DIFF_CLKIN_N;
  input REF_CLK_I;
  input RST_I;

  wire DIFF_CLKIN_N;
  wire DIFF_CLKIN_P;
  wire DIFF_CLKIN_bufg;
  wire DIFF_CLKIN_out;
  wire [15:0]FREQ_CNT_O;
  wire \FREQ_CNT_O[15]_i_1_n_0 ;
  wire REF_CLK_I;
  wire RST_I;
  wire clear;
  wire \hold_clk[3]_i_1_n_0 ;
  wire [3:0]hold_clk_reg;
  wire [3:0]p_0_in;
  wire p_0_in_0;
  wire [15:0]p_0_in__0;
  wire \refclk_cnt[0]_i_3_n_0 ;
  wire [16:0]refclk_cnt_reg;
  wire \refclk_cnt_reg[0]_i_2_n_0 ;
  wire \refclk_cnt_reg[0]_i_2_n_1 ;
  wire \refclk_cnt_reg[0]_i_2_n_10 ;
  wire \refclk_cnt_reg[0]_i_2_n_11 ;
  wire \refclk_cnt_reg[0]_i_2_n_12 ;
  wire \refclk_cnt_reg[0]_i_2_n_13 ;
  wire \refclk_cnt_reg[0]_i_2_n_14 ;
  wire \refclk_cnt_reg[0]_i_2_n_15 ;
  wire \refclk_cnt_reg[0]_i_2_n_2 ;
  wire \refclk_cnt_reg[0]_i_2_n_3 ;
  wire \refclk_cnt_reg[0]_i_2_n_4 ;
  wire \refclk_cnt_reg[0]_i_2_n_5 ;
  wire \refclk_cnt_reg[0]_i_2_n_6 ;
  wire \refclk_cnt_reg[0]_i_2_n_7 ;
  wire \refclk_cnt_reg[0]_i_2_n_8 ;
  wire \refclk_cnt_reg[0]_i_2_n_9 ;
  wire \refclk_cnt_reg[16]_i_1_n_15 ;
  wire \refclk_cnt_reg[8]_i_1_n_0 ;
  wire \refclk_cnt_reg[8]_i_1_n_1 ;
  wire \refclk_cnt_reg[8]_i_1_n_10 ;
  wire \refclk_cnt_reg[8]_i_1_n_11 ;
  wire \refclk_cnt_reg[8]_i_1_n_12 ;
  wire \refclk_cnt_reg[8]_i_1_n_13 ;
  wire \refclk_cnt_reg[8]_i_1_n_14 ;
  wire \refclk_cnt_reg[8]_i_1_n_15 ;
  wire \refclk_cnt_reg[8]_i_1_n_2 ;
  wire \refclk_cnt_reg[8]_i_1_n_3 ;
  wire \refclk_cnt_reg[8]_i_1_n_4 ;
  wire \refclk_cnt_reg[8]_i_1_n_5 ;
  wire \refclk_cnt_reg[8]_i_1_n_6 ;
  wire \refclk_cnt_reg[8]_i_1_n_7 ;
  wire \refclk_cnt_reg[8]_i_1_n_8 ;
  wire \refclk_cnt_reg[8]_i_1_n_9 ;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[3] ;
  wire testclk_cnt0_carry__0_n_2;
  wire testclk_cnt0_carry__0_n_3;
  wire testclk_cnt0_carry__0_n_4;
  wire testclk_cnt0_carry__0_n_5;
  wire testclk_cnt0_carry__0_n_6;
  wire testclk_cnt0_carry__0_n_7;
  wire testclk_cnt0_carry_n_0;
  wire testclk_cnt0_carry_n_1;
  wire testclk_cnt0_carry_n_2;
  wire testclk_cnt0_carry_n_3;
  wire testclk_cnt0_carry_n_4;
  wire testclk_cnt0_carry_n_5;
  wire testclk_cnt0_carry_n_6;
  wire testclk_cnt0_carry_n_7;
  wire \testclk_cnt[15]_i_1_n_0 ;
  wire [15:0]testclk_cnt_reg;
  wire [3:0]testclk_div4;
  wire testclk_div40;
  wire testclk_en;
  wire tstclk_rst_dly1;
  wire tstclk_rst_dly2;
  wire [7:0]\NLW_refclk_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_refclk_cnt_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:6]NLW_testclk_cnt0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_testclk_cnt0_carry__0_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE")) 
    BUFG_inst_DIFF_CLKIN
       (.CE(1'b1),
        .I(DIFF_CLKIN_out),
        .O(DIFF_CLKIN_bufg));
  LUT3 #(
    .INIT(8'h01)) 
    \FREQ_CNT_O[15]_i_1 
       (.I0(testclk_en),
        .I1(\state_reg_n_0_[0] ),
        .I2(p_0_in_0),
        .O(\FREQ_CNT_O[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[0] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[0]),
        .Q(FREQ_CNT_O[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[10] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[10]),
        .Q(FREQ_CNT_O[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[11] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[11]),
        .Q(FREQ_CNT_O[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[12] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[12]),
        .Q(FREQ_CNT_O[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[13] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[13]),
        .Q(FREQ_CNT_O[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[14] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[14]),
        .Q(FREQ_CNT_O[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[15] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[15]),
        .Q(FREQ_CNT_O[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[1] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[1]),
        .Q(FREQ_CNT_O[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[2] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[2]),
        .Q(FREQ_CNT_O[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[3] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[3]),
        .Q(FREQ_CNT_O[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[4] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[4]),
        .Q(FREQ_CNT_O[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[5] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[5]),
        .Q(FREQ_CNT_O[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[6] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[6]),
        .Q(FREQ_CNT_O[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[7] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[7]),
        .Q(FREQ_CNT_O[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[8] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[8]),
        .Q(FREQ_CNT_O[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FREQ_CNT_O_reg[9] 
       (.C(REF_CLK_I),
        .CE(\FREQ_CNT_O[15]_i_1_n_0 ),
        .D(testclk_cnt_reg[9]),
        .Q(FREQ_CNT_O[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_inst_DIFF_CLKIN
       (.I(DIFF_CLKIN_P),
        .IB(DIFF_CLKIN_N),
        .O(DIFF_CLKIN_out));
  LUT1 #(
    .INIT(2'h1)) 
    \hold_clk[0]_i_1 
       (.I0(hold_clk_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hold_clk[1]_i_1 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hold_clk[2]_i_1 
       (.I0(hold_clk_reg[2]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[0]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \hold_clk[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(p_0_in_0),
        .O(\hold_clk[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hold_clk[3]_i_2 
       (.I0(hold_clk_reg[3]),
        .I1(hold_clk_reg[0]),
        .I2(hold_clk_reg[1]),
        .I3(hold_clk_reg[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[0] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(hold_clk_reg[0]),
        .R(\hold_clk[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[1] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(hold_clk_reg[1]),
        .R(\hold_clk[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[2] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(hold_clk_reg[2]),
        .R(\hold_clk[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[3] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(hold_clk_reg[3]),
        .R(\hold_clk[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_cnt[0]_i_1 
       (.I0(testclk_en),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_cnt[0]_i_3 
       (.I0(refclk_cnt_reg[0]),
        .O(\refclk_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[0] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_15 ),
        .Q(refclk_cnt_reg[0]),
        .R(clear));
  CARRY8 \refclk_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\refclk_cnt_reg[0]_i_2_n_0 ,\refclk_cnt_reg[0]_i_2_n_1 ,\refclk_cnt_reg[0]_i_2_n_2 ,\refclk_cnt_reg[0]_i_2_n_3 ,\refclk_cnt_reg[0]_i_2_n_4 ,\refclk_cnt_reg[0]_i_2_n_5 ,\refclk_cnt_reg[0]_i_2_n_6 ,\refclk_cnt_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_cnt_reg[0]_i_2_n_8 ,\refclk_cnt_reg[0]_i_2_n_9 ,\refclk_cnt_reg[0]_i_2_n_10 ,\refclk_cnt_reg[0]_i_2_n_11 ,\refclk_cnt_reg[0]_i_2_n_12 ,\refclk_cnt_reg[0]_i_2_n_13 ,\refclk_cnt_reg[0]_i_2_n_14 ,\refclk_cnt_reg[0]_i_2_n_15 }),
        .S({refclk_cnt_reg[7:1],\refclk_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[10] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_13 ),
        .Q(refclk_cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[11] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_12 ),
        .Q(refclk_cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[12] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_11 ),
        .Q(refclk_cnt_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[13] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_10 ),
        .Q(refclk_cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[14] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_9 ),
        .Q(refclk_cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[15] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_8 ),
        .Q(refclk_cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[16] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[16]_i_1_n_15 ),
        .Q(refclk_cnt_reg[16]),
        .R(clear));
  CARRY8 \refclk_cnt_reg[16]_i_1 
       (.CI(\refclk_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_refclk_cnt_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_refclk_cnt_reg[16]_i_1_O_UNCONNECTED [7:1],\refclk_cnt_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,refclk_cnt_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[1] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_14 ),
        .Q(refclk_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[2] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_13 ),
        .Q(refclk_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[3] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_12 ),
        .Q(refclk_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[4] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_11 ),
        .Q(refclk_cnt_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[5] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_10 ),
        .Q(refclk_cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[6] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_9 ),
        .Q(refclk_cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[7] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[0]_i_2_n_8 ),
        .Q(refclk_cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[8] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_15 ),
        .Q(refclk_cnt_reg[8]),
        .R(clear));
  CARRY8 \refclk_cnt_reg[8]_i_1 
       (.CI(\refclk_cnt_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\refclk_cnt_reg[8]_i_1_n_0 ,\refclk_cnt_reg[8]_i_1_n_1 ,\refclk_cnt_reg[8]_i_1_n_2 ,\refclk_cnt_reg[8]_i_1_n_3 ,\refclk_cnt_reg[8]_i_1_n_4 ,\refclk_cnt_reg[8]_i_1_n_5 ,\refclk_cnt_reg[8]_i_1_n_6 ,\refclk_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_cnt_reg[8]_i_1_n_8 ,\refclk_cnt_reg[8]_i_1_n_9 ,\refclk_cnt_reg[8]_i_1_n_10 ,\refclk_cnt_reg[8]_i_1_n_11 ,\refclk_cnt_reg[8]_i_1_n_12 ,\refclk_cnt_reg[8]_i_1_n_13 ,\refclk_cnt_reg[8]_i_1_n_14 ,\refclk_cnt_reg[8]_i_1_n_15 }),
        .S(refclk_cnt_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[9] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\refclk_cnt_reg[8]_i_1_n_14 ),
        .Q(refclk_cnt_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h50535050)) 
    \state[0]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(testclk_en),
        .I2(\state_reg_n_0_[0] ),
        .I3(p_0_in_0),
        .I4(\state_reg_n_0_[3] ),
        .O(\state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\state[2]_i_5_n_0 ),
        .I4(\state[2]_i_6_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \state[1]_i_2 
       (.I0(testclk_en),
        .I1(hold_clk_reg[3]),
        .I2(hold_clk_reg[0]),
        .I3(hold_clk_reg[1]),
        .I4(hold_clk_reg[2]),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[1]_i_3 
       (.I0(refclk_cnt_reg[13]),
        .I1(refclk_cnt_reg[0]),
        .I2(refclk_cnt_reg[4]),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111F11)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[3]_i_2_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state[2]_i_4_n_0 ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state[2]_i_6_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(testclk_en),
        .I2(p_0_in_0),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(refclk_cnt_reg[4]),
        .I2(refclk_cnt_reg[0]),
        .I3(refclk_cnt_reg[13]),
        .I4(testclk_en),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[2]_i_4 
       (.I0(refclk_cnt_reg[3]),
        .I1(refclk_cnt_reg[1]),
        .I2(refclk_cnt_reg[5]),
        .I3(refclk_cnt_reg[7]),
        .I4(refclk_cnt_reg[11]),
        .I5(refclk_cnt_reg[16]),
        .O(\state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_5 
       (.I0(refclk_cnt_reg[10]),
        .I1(refclk_cnt_reg[9]),
        .I2(refclk_cnt_reg[15]),
        .I3(refclk_cnt_reg[6]),
        .O(\state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state[2]_i_6 
       (.I0(refclk_cnt_reg[12]),
        .I1(refclk_cnt_reg[2]),
        .I2(refclk_cnt_reg[14]),
        .I3(refclk_cnt_reg[8]),
        .O(\state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(p_0_in_0),
        .I2(testclk_en),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[3]_i_2 
       (.I0(hold_clk_reg[3]),
        .I1(hold_clk_reg[0]),
        .I2(hold_clk_reg[1]),
        .I3(hold_clk_reg[2]),
        .O(\state[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(testclk_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(REF_CLK_I),
        .CE(1'b1),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(1'b0));
  CARRY8 testclk_cnt0_carry
       (.CI(testclk_cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({testclk_cnt0_carry_n_0,testclk_cnt0_carry_n_1,testclk_cnt0_carry_n_2,testclk_cnt0_carry_n_3,testclk_cnt0_carry_n_4,testclk_cnt0_carry_n_5,testclk_cnt0_carry_n_6,testclk_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:1]),
        .S(testclk_cnt_reg[8:1]));
  CARRY8 testclk_cnt0_carry__0
       (.CI(testclk_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_testclk_cnt0_carry__0_CO_UNCONNECTED[7:6],testclk_cnt0_carry__0_n_2,testclk_cnt0_carry__0_n_3,testclk_cnt0_carry__0_n_4,testclk_cnt0_carry__0_n_5,testclk_cnt0_carry__0_n_6,testclk_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_testclk_cnt0_carry__0_O_UNCONNECTED[7],p_0_in__0[15:9]}),
        .S({1'b0,testclk_cnt_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \testclk_cnt[0]_i_1 
       (.I0(testclk_cnt_reg[0]),
        .O(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \testclk_cnt[15]_i_1 
       (.I0(testclk_div4[3]),
        .I1(testclk_en),
        .I2(testclk_div4[2]),
        .I3(testclk_div4[1]),
        .I4(testclk_div4[0]),
        .O(\testclk_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[0] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(testclk_cnt_reg[0]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[10] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[10]),
        .Q(testclk_cnt_reg[10]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[11] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[11]),
        .Q(testclk_cnt_reg[11]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[12] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[12]),
        .Q(testclk_cnt_reg[12]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[13] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[13]),
        .Q(testclk_cnt_reg[13]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[14] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[14]),
        .Q(testclk_cnt_reg[14]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[15] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[15]),
        .Q(testclk_cnt_reg[15]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[1] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(testclk_cnt_reg[1]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[2] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(testclk_cnt_reg[2]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[3] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(testclk_cnt_reg[3]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[4] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(testclk_cnt_reg[4]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[5] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(testclk_cnt_reg[5]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[6] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(testclk_cnt_reg[6]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[7] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(testclk_cnt_reg[7]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[8] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(testclk_cnt_reg[8]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[9] 
       (.C(DIFF_CLKIN_bufg),
        .CE(\testclk_cnt[15]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(testclk_cnt_reg[9]),
        .R(testclk_div40));
  LUT2 #(
    .INIT(4'hE)) 
    \testclk_div4[3]_i_1 
       (.I0(tstclk_rst_dly2),
        .I1(RST_I),
        .O(testclk_div40));
  FDSE #(
    .INIT(1'b1)) 
    \testclk_div4_reg[0] 
       (.C(DIFF_CLKIN_bufg),
        .CE(1'b1),
        .D(testclk_div4[3]),
        .Q(testclk_div4[0]),
        .S(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[1] 
       (.C(DIFF_CLKIN_bufg),
        .CE(1'b1),
        .D(testclk_div4[0]),
        .Q(testclk_div4[1]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[2] 
       (.C(DIFF_CLKIN_bufg),
        .CE(1'b1),
        .D(testclk_div4[1]),
        .Q(testclk_div4[2]),
        .R(testclk_div40));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[3] 
       (.C(DIFF_CLKIN_bufg),
        .CE(1'b1),
        .D(testclk_div4[2]),
        .Q(testclk_div4[3]),
        .R(testclk_div40));
  FDRE tstclk_rst_dly1_reg
       (.C(DIFF_CLKIN_bufg),
        .CE(1'b1),
        .D(\state_reg_n_0_[0] ),
        .Q(tstclk_rst_dly1),
        .R(1'b0));
  FDRE tstclk_rst_dly2_reg
       (.C(DIFF_CLKIN_bufg),
        .CE(1'b1),
        .D(tstclk_rst_dly1),
        .Q(tstclk_rst_dly2),
        .R(1'b0));
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
