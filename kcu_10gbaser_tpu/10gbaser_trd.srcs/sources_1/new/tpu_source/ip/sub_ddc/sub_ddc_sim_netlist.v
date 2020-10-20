// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:52:30 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/sub_ddc/sub_ddc_sim_netlist.v
// Design      : sub_ddc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sub_ddc,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module sub_ddc
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
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
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sub_ddc_c_addsub_v12_0_14 U0
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
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sub_ddc_c_addsub_v12_0_14
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
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
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
  (* c_a_width = "32" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sub_ddc_c_addsub_v12_0_14_viv xst_addsub
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
WB+LDQ5zxhRwGjEw+A5dP4yK2ZxAHCuV+HqGZLJYu3/HayrYAUprTC/9cN3wzIyZLa1qoz7QxKer
HEh2rXqIn9SoBkpT7nRjYRQ+3MIVRv7xhQexsTvbN4WhN3o4wTY8eKkgaVKIrjUNCmV26GTE4fkj
zNDEjG4hxpkkigO2AvqpbnVEjCDq1nlBDwaYsvveduKvNCJEbQLJcT1gHPwAcMsPjGtzj+q45tZb
YWt3bz5wurM2+/rHXAsFl2nx6ZWmREYM3gfEWA5/IiYvDothBs2ynBCZ/t6w37s8VaCXDDRA6L/O
DZIz8BpnMBcMuavbIvwRF+bCR1HFmmxDiU2R6g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KZ4q/Dr690WoLNfZNnL+yHFki9df4nhkqGPF94anhAe94MhqYWcUvSjsd+HhEx8JfAHMf65yABas
ZW2TL4z1N2Cc54YQFizB3o0CQW1rdXUOEFRflo/1vJrjSmAV2Jo2yIiQ4QVaZ8tzwU4p+8Hib8va
rv0vC4/ZYADrAnFZxFeKdgtUQ09Kho39p8AgRKVqIZtmpexFQhY1NJCfMlYLIV6fLIRH7s7jDSpA
gBZCm5NUTEE7604fW/57z6o0qXNyoY1ALj+7+7yS42rP3iIMUxEK5IoOfUd9HF9Vq+u6X6MN/oMQ
N+VjJNii7UG6bKAaGUXWlW2k+Gst6NnhWaXB2w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20848)
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
