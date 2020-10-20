// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 10:06:44 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_4bad_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_4bad_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14_viv i_synth
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
TUwG4h5zKATfaOhct8dcv1212DAvBM0bNZ+kMJ0JiZ2qi9/i2PuY5FXny5C8kdD1dE6NHGXRkSTz
Bp7dQIVInvmiJLuLh5pXIPtBj94Thx4iMJrw5Ilr5wok7HyA90oBDRc2+LHqgcy9dPo0ytQ2cq4u
mitViZKprpKO5fN8Kap9cs6U36881CbCx1kXcwOHw1mc9pzg0WaBFwKcAAWjc/e3jiO38rfC/UCR
GWVBHypoSA6E/o5Xo++uMB2KK8IOTda3riJbr9n1BIe1vTQu8OIUmBFcsuXOlVa4ypz3UHKRmbKI
1haE13RehV+Jnhn5Dx+Uhaa5bGttV880stY7Bg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IkIlBRm8HHl6AeJBRkZYABzqRGuy8ASZI+DoIqlKu8XvvY54EcxapL3bAUH27kZs2gSGihzph03V
R2Tfkr9azi9wDbvsmJX+HyonwPH6SoM4iIoJQAEweAUVY2tYtBLYzpGJFZpmrkZdKLypCWQdVrkF
zJxq7IW4qREBbl0RNiD1yRwjopyZvAcULPVtyUUo/F8vc3nZf8xlTssoJ18gtl24H8khS8OzA+3Y
HkwzTCebTPgO8G9+HXskmyfuluqU2Fg4UTGSBEjgVwm/ijyinIEtXfcJ1fK55WzDtOOSxAO3G2qt
fmb6QB+shrPuzhiRg/Efzfzf1ugoqkDnzIMoYw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4592)
`pragma protect data_block
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
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
