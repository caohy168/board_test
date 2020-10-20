// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 10:06:49 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_axi_ethernet_0_0/bd_0/ip/ip_7/bd_4bad_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_4bad_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module bd_4bad_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_4bad_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VbdFRPZrqognm6HTQe1bD7+oTpoYkKua6/i8jSS5I6uDUGxrSRJPXkvpD2Cqms+dhvcRPwx+8NAC
BG4uqAkDPqHyOFlFZWnffLUwVaWMZMnwu1jPE8jK1bnwKvGdI6XcL4mbXQt7+CT2tTEos1LMquif
3XOTVCd6JyUfaABFzTqjUD/ffWqM1yOx92NDjN1j1938KPgtVvdYL4cGmtkA6xbvlUDwL74WdtCU
bFf6HGobPTUCAQlXQJaaPa5NtffbYLef2Hjx/qsGR99LT+aUmWe4rAFMYz1k7UN6WUY2QE/fDpTW
lD7Y2YPLrwhlugntTzVATLNKdqkaFpuOGdvoYA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
laZIJkz6N8+9GmFGa9CF7bnCmw7m9ByDeKQbxTrpMsgjuuUCgraVpWboBYclCMxxzXPMRWZk+M7j
dAnFqd3BhwAu18QmB9cwQfw9kxFQ3hGx+1XVLWnEWYIOJO7zq1LLDpj68x0S/do/WLu/4d6/f+WY
kxw/i07fwB5Me5wgVICMLAYNFc1DAFJ5CBGDyl+E9JLV6gij2GTDOkr3GxMvKQzOFKJ8pOAM6h9/
c6HZJ8wRvXQnavbkdgqr+Tvp20f/SYfgXyNyDYbp6Aka3ROmH4mNEaO+fLQZMEKA81H75PKnaYOI
rcTSNDTxbv51/iDhlFvWOkeVJsBw2CPZWzhzyw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11744)
`pragma protect data_block
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
od4=
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
