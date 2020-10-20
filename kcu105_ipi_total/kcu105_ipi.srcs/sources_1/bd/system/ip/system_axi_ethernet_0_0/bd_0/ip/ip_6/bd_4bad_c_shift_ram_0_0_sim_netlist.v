// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 10:06:45 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_6/bd_4bad_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_4bad_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_4bad_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_4bad_c_shift_ram_0_0_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
jKLNR6CFLXNaFIX4EgFderMxPnKvpk4F9e4rB0Z3eM53MFOGJNJgkVTyQHI3/mIWOAReZVwoVOMa
CdAhgWGvBg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S9g8iGOMco4oFYFI4TkAP1q7tC6YdaKcKnkZE7b8B1VOvr1zofUKAItPH7rdgXy1xJT5veYU9CMB
1a6xkY/7hrMk2un8LzBXxNY3CU5Bicpo5xvFJFwxXUw2rsZfzzw96pA+9XCQOKRH4TLd3b9RF6St
0jOdYl4JHV8zrfKdmxY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T9dmjYx2RI0RbX6wqo4nWU0ad1An+UnLDs5SJii98PTuke7wRIDUcgwzVXGZhnqgRDMGrxGdV3bv
2TG3EcxZKQwTVnAC6QQoZX/EtMHghnA62m/5NpXmoLwh5qm/MLJ1GcevcOyCUPonSVz0GOgxnvwj
ooQgeh9D1jd4jba778m7tqjzyqrMu2wlx/9bVUabKnRucVtEhLrCSutcfwtKRjcjEslE32+ANJJO
LU1E9xHWQKY0Ykt2thHoAW/gEGE3TgPPSeS1uMgC9gpn3KeR1GWNFmz/5i6v7Pure2Hjx7n/xHnI
reb33XFnLAOOS5csVRvU6rhvZeRoqLN9Ju5zBw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z4MAcGwOirs8ueHe0/LAJt93fwBMCERy9UlyN0pxTk9Tu06Hakd4P9cZvnfzA7zREYXMIBu2NDPA
+322PzRY4McOROTi9fUMbDa3sq4QlE99HePrmhLC9MCN16iXhbU+HBEFNxdCuVK/qDkcEHSOzIkz
ISv7GfjVXM9ytGOZjadyXWLpl+dtetGHtMec8w91cjipLXbo2ywr8DccFy2Q+uIfn9whyWTv3WTK
w8NeftqkhVPZqMJIv942kdyaigmw+FAOB+eg4fWaELYnDgvofFaanVzUBmReOY7/b3LQoUhotNip
TF4puoXTeoGR0ir2Fw1i4DrX8pQhZYrHf0g2Fw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RhMVl/dQLgd6Em3cvXWswCuyQybcYHVY6fBYkTB+0qwPgxUd1H6xUy5MSLur1rc0+xMO7DV0gkc9
m7J2qnyE4PeY648BXoQQvdkIDs3cDfJUIMzBSJRhAzANt/GvnCfPAPUqQ+RK/y3xKJwLsMukWXHR
t1HX/5OpB6TQZHZYE4vz2lTGPGbVIW3QDoyrjz61tA/jsHUVGJvZ47VdBmfldxPqiY+Vh9e3dl75
JmttiC9La0yOzL+SocwWzDn/QZbcRHMsTtLWlhxlY2wXUCss3GHmb0o9kugY6zDzV+5nG9yCW628
du+GA9eci/G4jwl4JXZ6p/WPZm5Kh58Sk5SgqQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z6wIEFjRiUpcYIEu93tUzSRYb0cut/OLoYvuGPmJyBKSi2zPwapeByA928Z27t6xeV5W3znd08OP
jgjBqsSWHmyKGPK5eXde25Rc7IZneNvK+sw4HV/jPYtO1qybQvKRnWu8hrBhMhyAA1aL1U4QhZ0j
OVNZp1DTIxg4hiigHOc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M6YZEFH9Zpi1+cHBSrOstRid3w06pA53vGHrYgHzFGeKeyyHqjgt7TSqiheP5aW8KTNRQvg6odJR
cQXh8v30NMYu/jZmXni3nFsFUTUEXNB/ePMil1PPUrf9TNxaYXBqeX3zB6GdK72zXdmYAQQJsXm3
TD92LB1fEOaj3R0/tHYpufRdGd9ixd+Chdi8l5QOJjm+yeF3y5TfCTs0lUF+EsV39HM15hn/yqbA
gT+ibQT1xr8NpGHcWrdEkzmjH4Sn+dW0cT9kU4XilATPF50SYk2ecvCzISKLFkmNR9pfut/nGA+t
DPxZ51VLTruJmPjK9LFCbh2X38O5lo+z5+P8tA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KfvJFdvhmWTKbQ5Jxri/BeSIQO81bjo+x9EfkeRcMGW0X6ByjZDkAzxfNMlSiensyevMJMtYPImZ
QLedqWGrPYexifiq6cCXFqk8Ltq9l5wruSZyV43D0ysRcxj4KEmXC/8PpzjDp5HlvFJFOJ+D3g6t
NM7RYRIRIXaF8CskZw0jsmkaV1T83Anz/mZ/uZ2VBOchUsPeuvhUsVWM+cLnpjlbkKWXTtBltE9K
o4i/EdrpFyh9UMZS+xmXkJ+At1Ky5wvIPoNFGMpkkGQACazCdVYLc9yp6bpOYlB/gizgo2+PRrAM
svam1uLoF4FsN5wTcCULaxZrksdIcF+IAZUtMA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aIOhNoIuHmd/5CrgkYZZs0Ygl7sj/0OE2rS5DDr+KJCCaYiYqLR0HIYG6E6dlQ6b7soA5v1dX0rV
mlF1wP1CHwB8VaTL8j15mpEqdAtyeSOlL6gajWRcCaWzj52hQ1wHePiq9kCMinHF4O2v9OwZ37zg
DPvoKgW+dQdqnP64EaZnKjfxagVcGLau+egMWFQ0rSNdYV9iRYP6vJzYdijQz2C2HxW6GPZGuhcz
w6wyBU6HPwJ2yN4obryVIgjwIySBrUCk8JaBltyFaL2SDzS45X+STvw5HI49rjPxJDAzea1KVKYm
TLhgbNZtoyHl1GIPGdOMEGiOReBl2q9X9fcuKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4tY5xMOHc1luZ4eSf3Gk2LgQN7+1Ci7uGcBU3yKJYHnO+wRMF1aQ1lO3WLkpiqczN4oO1ITMJmJX
UmlfySzC+PYdLbuEKISWMyEAUep+F0ZAWSs5eiL2w6nqh70op1p1U7ybM3ViWTOTh8LOI1tAuNs7
2asyJ+wkls0vLHXNXpKLHFLDNpNKubaJal2P8Z5U5c5fRS1pwS7JwirGmaZd9JzS64/2ClnFWdNZ
SjbVA3/0eS/Ckbizb46+sbFWw0fHAIYjXsosUOBTsHeB0WUvoECwN6u+kOxVHGgHdeKgVeUA3WlE
siWyan4VPqHdLsANlW1e9BD3nkvCE6aaKoRo6A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
o/RiU4dGj4M7EIot5IxDkjhZH6KQuLw=
`pragma protect end_protected
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
