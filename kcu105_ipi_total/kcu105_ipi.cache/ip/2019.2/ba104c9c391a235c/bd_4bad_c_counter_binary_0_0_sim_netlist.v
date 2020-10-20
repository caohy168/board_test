// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 10:06:48 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_4bad_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_4bad_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_4bad_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
jJHfTZXBynko0BBVP81eNjmcxoIQsq39p25USTGC2Eh31NgKVWOWdp1EYDW8MmM5d34MCHdE3snC
3Nw5upOI4seH3djRogXT+aAoxGfrX0FvObpgGSrZa0jL1mmEyb+hgopJxI1ukaGekLk6Gsgb7dsw
DDhHCqWtiTT1Uub540KFp1i3Ashj/6SJqI0XymBTrIEHFkc3zLbYMgvBXHwujnyu4tdW84ADz4HE
XyVaU9lUyEWNtZMWtX+YQwB9w0H3J7Wj5oNnBQteSteCP9kAK+G/RDXPAGME4meQy6GGN6mmA5Cf
/W28NdQ6IwESfoPNM+3qqk1XxAoxtom+fHUNDQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BEwoO9FyseE7na8w1jgOAw/IXlwWuWWjPS0ZgPsKmLCUP7zNMJngSfGEg4ERGnVAWwnIsyZPeQ0d
c6tmzkjZ4e9o45Kf+GXgvGUHcoZaPrCSxHybVXaxsoFSdNBVaCkHTlbGpBUWyZTYtZNJNCx6xSBs
WQ+8PX/+/PEdwAhARWvM7Lb+fZttuxQUvxYRIj5A+AZax9YNV+QGMJn6ECFBurLUPGEd7TEtjo/Y
TqiUYAsPj8/YnMYY51rFZL/7lupFAFEz7qtdsspLyjxABhinDUIL0wLMV0ScsWDySZDpFIrUEaOr
/bM7atYzsvfP/pZQipLFfWJH9a61B+CIahqGgQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11568)
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
