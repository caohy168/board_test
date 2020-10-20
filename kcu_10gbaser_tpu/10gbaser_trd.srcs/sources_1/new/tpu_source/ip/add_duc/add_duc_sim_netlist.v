// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:51:18 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/add_duc/add_duc_sim_netlist.v
// Design      : add_duc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_duc,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module add_duc
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_duc_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_duc_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_duc_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
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
MwXxG1kdOdCt9glx/wldecSADrkleA5VpJn4hWtKThagGPWhzJzIoknnpDsjj2dk0mBqUroAzFtT
Gn007aXo9mwlkZXBR4zM9ZojfsqyqbtRYmEWwmUmirIEjsavfXZzoE5AH6P1AimFu3NG0hpFJrdp
PDVGE2ZYV0sXORDGNIWqHWzBv5Pk7Sg2rSCChA9nazngkWHXIPbLO+JlKZ/gumi6EXVqM5aHvUkj
/Nu++rFWPeBXDcy0cJvjvuHtd2bG9Y8gBKcnDAzDYxLzDnQTx6kUWLTugKkOBa6T6OIO70//jTMj
nMWyYvyzlWlCRoDiYMfUQJeu5fKrO+y5sDOg9w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wkuH2PVxExnHdLgWjqaF/XI9iMIcvOUw7ULED/axl/UjK6MQfUoIdlqDPonIRBOox1NcWKuRcoBC
/UZBcDqh2wLqEiJ3OaYifaar+mzeSuEH6ZaOjevZWGNNUhfm3wGdmc+daDPLfDJga7oC+KfViSug
qHgoBguKMeIrRtjJ+yNDa0x/Fv9ivwOwmCWGflHz+9UT85D2NcW41c/l7aSvme+kyroSjh0kpnGy
6VhHYCN2RwYohDm+5GuVJ+VW39qPifop1RRGwZdJ7JvYLvZOZcq3BQankkoLoNW0KiixWxHt6Vqb
IcDVvkNTsZKspnxc/llxpyAjgMr0eMQgokj+fA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11744)
`pragma protect data_block
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
Kc4=
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
