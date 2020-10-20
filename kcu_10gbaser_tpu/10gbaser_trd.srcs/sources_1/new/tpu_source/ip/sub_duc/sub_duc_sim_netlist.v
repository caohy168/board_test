// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:52:30 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/sub_duc/sub_duc_sim_netlist.v
// Design      : sub_duc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sub_duc,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module sub_duc
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
  (* c_add_mode = "1" *) 
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
  sub_duc_c_addsub_v12_0_14 U0
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

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sub_duc_c_addsub_v12_0_14
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
  (* c_add_mode = "1" *) 
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
  sub_duc_c_addsub_v12_0_14_viv xst_addsub
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
f/G9amlSPmL0joMNHR8kFzEwW6etgVHa1Cu9OZDWmUEHFUvyt3RMqHSiuVylLhe1TDe5oo+1bXuI
pAQUPo0+csr6YTdYbOdamOX9wU72VLTgzVSEY2TvArpHYc8eHUc6sNebiVF4pMgOsj1tmAiAgm9y
nABOKaWrhsg8tXTnEVcga90FJEW5IyS7UiDsA+rhFjgxZQBvxqg98g3hOtKWKsPAGFH18riDN3GF
/TSA1yQiNzbx3vrHQrabnxcvSWzNN4a2W1lh7AnY3V8hLP3rOw/kdBfJvql9IQXCTqHsGzw+gMsg
5JzLvDTvt7PJXZRDgRJXZ6ZUHMdArSt/5H8COQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PPR6ZGkPE77fVjBWpe4G5dE+UXA6apxhTul571Xi0pcJGlRvv7whcnjQ8Pp+V9j/XShlEsEL7tWg
bxii5+eCCW62FoR/zDbK4ah89dPJvSCF2XvOoRanCUN8FkBSo0GcvmoJtt3h+oG4CGqSA6RLBMjC
hle05Na/UAZtCERX+XT9LTvqbL4DzIxGWfO8bx2r7dJDkGNajQkNT35OEUogTwiZz0pEfaorSPy1
KM0qsXG4PJC4Akzy8yGB1f9QZRchFpfifclvwb7opUNi0RtsKfG3REIe+Ls1KyxIECL68cUtgq1U
7c7cyooY4Wd4bAvs6oaZQYJTZEVakzOVjcsygw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11744)
`pragma protect data_block
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
1Jc=
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
