// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed May 20 01:51:19 2020
// Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/add_ddc/add_ddc_sim_netlist.v
// Design      : add_ddc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_ddc,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module add_ddc
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
  (* c_add_mode = "0" *) 
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
  add_ddc_c_addsub_v12_0_14 U0
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
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_ddc_c_addsub_v12_0_14
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
  (* c_add_mode = "0" *) 
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
  add_ddc_c_addsub_v12_0_14_viv xst_addsub
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
RLSVS08VKwzXOf2j2O9JCiKAr7RUZvN2K1CETtYZRlY2GuY971SInugO5+1jvtMqShPoeBbGzCMU
5GE34oE4H8IWOh0HFm4/dY7aZmiDHn1omzcAemrUwIYDK80pck5q2sZ4Pvyz6q0oHYKBqG9CXeFx
ENpMFsiGROI5XZaNcTew49JmwuBjSxfXpJE99xfeLtVTvxsAqlAPEfozvf0Eh065dDXs7GQgRB1S
Rr1Ha2DI1i1gp+9VUfuaJV3JE2eHinbDcOpehOz6pWrI1+oU7V3o5axAFAJZOE87rcDWT1lJXJAI
hNEjcSieXEFHEt8XjZTqB6xwMufVXk9QKWjxSw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cHUM2RcZ9IoIWJ/sS5Yx7MERa5Pyh7A5B2tC7n5FTDoodFp7Wk8bUhVtJNYsgRySIV5YELeo5E1D
ntfguBJl21kel9a+OIucY2Jl4f4WVrAv9Drn1RsYJaGHfNVIL7SBv93sU1OhIfQZghPcjl348mPz
lp7tVO7ojkgUW8WtBsGTT29NYRFksQD+MI4II5GkUv7ftj3q/9SOGJul7SEG2SLG9bT790CCySM5
ZH0vd7fNy+QW+xkaymtBN00LoC1imgRqjH07AKMozcPuOMov8U0RC8ogi3sQQlL7Zn1TSM6erqki
G2uZHDPlMdea56IO5WCxOyCneAT2+qhS6QpWxw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20848)
`pragma protect data_block
/yaLEoOYzj3e4tANr073dXwFSIZN++ggjIVgS8xSWj42fc6kiRYttPKwepTgNXkkOBxjyNenMrg6
xMpRo9GqrEdPcZdc6nLmphPwxEGugQ2PUbAP67G/YjF95ANCNRJkAeDYpiDuT3DJWbxCZqD9EA+u
IZjymJNL7Ht0nanWmK4aVsTQs9Dqva/N6q5wCsIqfPZCUhxBIFew7gbZMFTuibb5YtxFwGLGt0W4
9ExGgrxG9oxvpyw6FgzYz1IlzYkGBQ2C3K/gC/IWTxT0nUXxiC+QIwJmm1DyzfCp02MGgf2v1Nrr
NRJ6k2AIz3N7nAd3VUwMfuKc85ZhkGBIPApPxcpphv3f+gEf03T/fBjWeZZJBE2VHIgwKBIatj+R
kAcOSyFw5UiHULWNUpIgfqVC6iozlfrqC4cyxCKiT/KTpDUW63VQD+l2WLcRNjR/PyIH8xijHlue
BCg93vPtfJFOBpKGeydohh6z5iPfLoKp9zICpHGpzyVpYgZNTFNRkyC6rJLHGlno20s78omTVBAS
jGGqt1kuHvvCRjNg0G1Jpz0pJRCZiSHT6cHRbU6jaf8lf+ozMs3M+NRTWS2Qy1wovaU9TBTsmPrR
hvVfjsC6wJsdDPMLfvxGuy0UPITBN3GpY1y60AnnSNaVIDyF7LXwX9703MpUNV9J8f7AXr/t4N8U
5i9lzMIsp7hLCEgwJF2lHhrk8kqEb4XKQrMY5QLGULBGjCZ6KpJRJdaCIJE/359loEM60tBx0XkG
+gXBpvK9EJZ4k3WaluNrkTJJQx5r2x3l15hOhEj5+tXW8Q3pJUnUHgsW7yy4GLvsGqmNC3GZ7uIO
mAGxiLX0nWQekvB9B/7QjD3Fea2TRAA58J5RDi6Wr2goa79sdH7kOAwIpbH26zxA2j+nHAGJXE0v
BIpSgsJN3IK3Hhon7y7ZwyGDThsLpTeMtQnVNSL+lZRuqPoiH8O5ormjrcxwRs8mR2XtldhvG9U8
BGb5duoxRgqdiBFpI/WU/KYxS26dwyRutmB/yfDT3sEEX7ExJKil+xyovLclukxyjKkpRAJnabA5
lOempl7FyVROiesHzskfsG6qaM16JpUwC+y+/f8+QwUIiO9eNtYNqjx5pvUWMKzSjhMUaRTxtZrw
IQJoaezC3mNseiudmGtGU+SlUpGVZ8EohQ5/Ap1klkU671btm/E4RDKjBObNNnXzKSC3Ufv9gO92
+Aa+roYF0F/UB+e++4asdK586E+k5s1fULLKX6sFnn/fyK2bIir11NqMv2ZkatG/gq50hpoJIqD1
gT5gqpe5Z7QABmZib6y3vLZnCsuq7Se4zxqUJ2NMoMI9PlXto8NyT/Hm/fd9r0QQbs8L1QoBNvd6
7VqGVGhGnARP9d5MRx73yFlRCc9Dxwtik/G5le5/2nwuzqpO/zegdTanzDu6sxsgShysjiO3jUGn
5C78TuabZ80uNK8Mf3/fj13CJOz4ptce6+FEPaWEIJVtYTdDX9oL4x4mCYhyBF/9R3N9qTMs2Aq8
DljYLmZPuKmmTtjoEdyb4Z6dixKiWpYLdIFCqXQKFfvOEn7o8h5F+4K4B1XDcXngOFzzGsy29K9+
DiKjbPAWcNluWaPvDvYBeetES9azXYhLXylYL7rVcESW8xFxgnwYxJhUudYx5nQL3itxccnoHhCf
fJIWJLNHs58nsU9sfl7RU2x1aRzCGFUb8mBH/CCQCD8roSG2JHq23B+jw0/ptDVon97OMMvXuS11
WT1/bx1lSIigytTjG9u69mbJs+/ScifY7K0rcZ8pUvadGqITmC2BbsuNlS+ol9DJsKOJ3peVjv6e
DYepHGJCUz4JwkiGNn2h6SFUtGFrSGEDVx2kJLP0wrk/ucYVmByHi+2yTVkpgA1Y8M/KRCnCTVmZ
DQ5qGi0DJmMDTpd0UT5Cf+huNKpTlscEtG4Qgz1EUnpV5h35zDnoZBJaK1+iAu33eNTwnhwXDb60
zjkriySQ1cINQstkFWxPTRfiiaCPa6uR7BobV+1+n+OwRo73Rqh9DkpuCapy6yJ5Nm5MTxRnNAVD
VcIXlEHWLprmG4SiKM5y5L0X5X5Hl8C4Y7xymHo34ANBz3kPwEhumEOpA553g4imfLX8iI5Ngyne
wBS/B16JlsKoXxJ+ynYEZxCzvgw0V9Le13bsqDs33Pm8wJhdI12H2u0rM3h4v+uRFK2+A6Wx6zP4
tCTqLDhoYU5PT2QQKWYaPSgg2RuH1PRdAi1XhN2hedCRPdbd9ZKlN7/kmRJySHya9l01tuioPGFm
b5bqzzYYiUyYZQpEV3jHwAeDixCV7ULV6rER/Wn0NbNqvwzenxfCPCurQJ4ol8bpCZuMOtiudsMs
OL5F9jn8CCss6zsOVI8DRgIT9OJ4jvLuJliCz8qpCxKKVQ90huyKEnOGxjEc/ayi/MbMG40EU4Vm
z6PvWvxlN0llmtfQUgXCaP9cejtTf80xBnni9cpfRUt3v5ai3vPxF+yH/nlcfJ1wibiVcYAlTJim
+SCv0XAn4IF/gQ8goiHJWHO5eMxH2GdahsjTqB32SZppq4ITo18RONM+R77s7JybdLxabQVBcrAo
zpNhSFp/8VSJD/mkw9p7snB8nI51pjNSaWxcMheSji0aEtytg2X5NhLW8ElY3UZwWtITo5qUdOEn
azESFXUGBWetAaR3CxKRGMthyhymjitlD4gNwxmZ/GyIi2StTwLP42+f1nLdZcW1p94UuNIupWkH
0yIUtKtzciTB+SzVbLCC0q9kgj705WimbjxLxDODAboQpxu0ur5bDafijp/i2A+hkbOPl3VQiQWc
OMAl81674e5EtnTFyySZuD2wYhJnsRI2ILjI7QrKtiLoPWV7ale8bdLAzWfXQvwvwE6dpl1+q+kZ
YQk0awIF/BL37VOQ4PHkEQlAq6KQQ7PDuXv1dsUe/xtzr1G1LZIXkgiTyIJMPXM1NehjCQKgTi4h
U93ckOKCkRtkABNc4NDs0NzeT0JX/dgRgKZHW+g5AtpwugqpwBdsD5IeiuBfxHMRipCJG3p05J5s
J4H2DstZBMKvGlsMoQBjhnt3V9YwSHyDE7pFyUcJg+UFp75djkOtS+3GWgsWT93OmgBPReJOjowh
2yK8NJerthItGxBl+jR4cX2lSA3KRtgSfqUaYXpnaTE8Hm0PJ5jnSwBDXm7Zh/6FTtcbOlzZH4u2
GvOMhhEh2pgRLvjR3krSykNYGZJSEDyc0tblNbWamivjRNTM3LYMd0P16WIUv+sjurcbp/TVY1dO
40S7+BsvYH0DL65BTNGilM24g0m6KHwYtvV72caYqRtWHgKRWAHX/HHySGqxhYyT1kjr2cGpauiO
wzk1KGda+sGSpsQRQXkgEpmdqx3OwVUM4bbepFG8/c2gcbkKamkDHixkFRQslJLWKcynZkDlbxJ7
pWowps5RKQIcZc129iZlf1/5f/3Z3+BFgtMqpbtHkrgODe58PetutTkTOROKniktiBa8fmjP+Llz
3g99XrogCt7FkidTR9LCmS+IwlddnUb3ITbddCUJIqCzGnEOKa0drnKmvwitFAX5CnsjbCKOOkFK
k6phjAdJKc4mSaNZEYvFzVq/SKseBh4pNDvKPnd3CxA1q3u6Gg61naonoTPCugV+inILzYnKDOP9
LugY/vMla4/IC4MzeVelVyvvIVY32YX5mz1rJVnjhj3m3g/QnAnhG20QrZwwgWJmM9SXfY7h7NG2
K8z7cpX6oQQuBYAc5IJSpkvIyzSrtCeVpe1Y4KmJFnAt+QwKmQ3jQN5hSB9y1/JX1B2pgTTsCPNP
K4YgMLjUlyyhBpkEMNLnfVN/uP2iuJzR5cFroJL0vi7Y7DIn0yFXjM5aRNVgaHwbyWyJudET2w4G
h5rxlO2cFASTNpPw5cfL+PfXdBA0rfytiluHMGphjexZWNAHC49AVl1tgIl0dcnTqAqh/ui2tlwv
aV8Uny75xZYNKP1UAFy6RhVQC0J8I4UULC+/oesWPTiAWroJ8+l3NIpvZbOv/TzIS/IUXFYAtjvW
il8UHnbplOzTY7ckSMU+5X5FWZg+ikuCVBkfpl3uiIsTvWsTvp4SmKno44cFpr8Vlg8JKJjHs6b2
OkdE20MhvzwnQIs33wEdCNP3hQry+j24iubGmJuOOEmtNiJv+aLHk5qOmlFGKFA6cHzgkeTd/lkb
N/hS35F35X6bg63398PGkkx/SLkiBnXdFVubZxuh+5zjt5QanCtbHAe8XoD66TUQwb+sd2OHRfYG
YJ4RHp/U+1P9D7HxDcMeKU30s6/qQLCYZ9dNhmgbPL7NAtQMO4zXWSP3aajdd1I69GdzGtwxJ/Hg
Lay8ZFjJKcB0pRMdyEDKrfwxRluIhH37CJgtzlcjg0kCWbEfoj3SbuuzqWUP3qYqkHiIzZrW+NWB
mGc8P/BXBOgoMvpMytFiz8y5Z66BfsxrLifN519G53j592ukjoRbTpWeMPh78n77F5AUlOOiRKJR
KODen5S4M/niUjOtBSmYhv0DSF+dF/LPN2gWRXnJnY2+UC3/jEV42ZWiAoe3TA/UJo+OMCFxK4Iv
ZnmU1AX4oTEnIz5hCsbkTlc1N+vwXAYyLhUNsCDKFw7ojzMIImbbZdFa8n8EeJyOrnX7bD/BW9I+
iBfv0cGK4uC+xG81B6FzAQPW7iS3H35c+ILbvHvvV3Ww1tr7a0iifQN+0Ue1p1qZ0bQE4BECtbgM
c2pUQALkrMnXh22teqCU/LHp7XWAo4ZtrhRXmyxV/hBc0uGqMsSFKQiKk+cg5MwzO0zOOGc4Jl+m
9mQF0nTvurdPMXyOWQANtk8cHi/zPrtEZKBcId7hIwzFvxaSnu3sjYWpaKiXNZIfonQOGUP6gj31
s07mAEjTIUPmCwLBunLSyDKWutFE57OP9o17N9HrI8hBW2hBs/JWEOQSWce3IYETphAXs61H6hd2
W8StwTC5EDoZ+LRo0tjkwuiQfG7UJDj3ISvSNgp/5wcFMDQjkcOuNQCkW5HSNNcacXSqpz300cKI
vFvzRx9hhEY8+tO2YUUhPBRjZDi+UIhuz6L+xDEse7yZQ8t/9mSm0vBaZ49nEhlFuuSPlxZwoqRN
esRgm75pbKHuPAyRopSeCiv2Ug0IGp6n6m/uJ3eDFV4AXndTgr8fqXjp8eXRy0upRSATUdkQzoXV
wXFQefjx3skIitWh5pVczyZxnXZ/iIE2ewUG8gF7C/HXJjL3ropElwwLzKPWhpv1lH6NW0/aVgTS
WVjfilk1f5KY25QepDPb0jj5ekaDgnnQJUYD/y3la7f3HYonc52qUoHty+nqKDaM1H6znIAeetsL
blFjH5JvPYy6YbyEw/uKgtQyoyFengRLn5sezxmDhElLybxY+OyZeV+y/5TQ4EDGoeKsn1zdrX03
LoQsfG53629jOmPYFy9+YLMMP7+0GylkFrbUL4BBR7W5O2Yigk1Ax2fDHgWahGSfOoyxEjgWZNyX
462Mtd6k+LPXNDIx2VIf3+xsxG0NVZAaau03bvRLt6NrUb7fJBP0NTxQ48o3jChTvinkhMUrlSMr
JFPE+n1KjfPMCA2miaFfPOBHX5DI5v34ru4SsYrwR85xglq7YUfbMjMUumjd81cR5LvYDfavvZVf
r3+6wYaXVKI02QCDd37YY2kWZg4fjJYysbjYc1lc9xKBP/25LMLNmUxYgvYrltlQGjjIEXDlj6O/
IFJFlzUPF3PNDjb8elLju14+OfPOBa5Nixq1HfAClNE1RJjsbBXTsNPdvqTnQxcxTz2QceVmSHWr
d01fVoAxHYCnwajDo3relmWsGsX83EEjhBF8OubREUtylXGI1VYl911Ep3cCno7fb3DjNzk9KYUE
TGoGzx8lXrkk4iCCWfYQyc+t6FnaeC2IKBXtuLusLt8/N0gf/ftwDcrC88y3A6/MSRLtKHczozg8
PKSw8Fv/iwpBKPHpU81vQhsI8W5nGTjDrn8ODdd+1bxjOb+MmltozkuMOy8N9sDMjYl0sfKuExaM
B1qq/ljgmUeZSerboK20uqUG2FSv/6oPvegAOmvT8I6mbYiOdF7LsJaGRM60VoPKoDdaj6P6+RAV
TNmpBNTvk5av1XALZidnpUeH5I5jTvzIaM8RgKU2UnqjU7fC6XEhk/wvtjAIKErU3reJ4vmdsTtX
bPQeMzSAVdokWbeV7lrZq+Lc6QLw8tQYpOhDULDIRwxBuk15+8huMoWXcUqZOO7fMa2/LtTlTf/6
rzZME8kffZlR9JpP0YUOzTKrAKfjyuaLCK1xrlTQjt37HmzILIIb2pJdhAYQjEeqvvz2utmNmskc
NzQJCVxF3+M8g3/q74SxINmcuyEArchFVB0zK5gIVeBczQdy8Ms+lTXnrgphlV+WljV4poBlGsjt
KimFHI/TopNRSjQZ/ZZf7qp8jvI3OWvMi43CT3hU06j7iJ1l2BqIJrIsdFdAAzhRdV6mHoD2SHDx
W2G22v3agLdeXDCLWAnxgI8sbf3UaaZssGf9gbbjdUo1weT8Kb380YI0RMfg8RIf5XXYqYiui/xu
vhJvhe5P0F3wn/FD/92NFtkeAHzFfWD90+xV/YMh3aeJ5EFUgjE64jr3rp491gb12QUYt1AVIYpJ
z5NRYl3Q1ywvW0BtTroJ6Jb2LH0hQ1CHxdC3+TWOYmagRQ209HrmN2CA+BPCnOz4ch1EFx44pAFg
ld82UowXjs9t8v5iW9mgLxwMdzzwRjH7/u/UJ5QiMLr2dwALG1l7tcNHaou9FjZ5swCb9lX/MZN5
ruTTGBXesvoWe6MBjSOQFUxSwnnp+qe5Mk58xL91hcQPnE8WiDxbSZH1bxK+eOFg6Pe4vmoYaYiW
DCOlPycGqyeQelR/3m7lN8RxgJGIOkjiWgTZWjpAT0eGz69lUIP75IjknmUOGirgStx/VKskLVT7
CuX/JM7IMAq1ndS+tpADffLq+zv+9sIvoivSjkZQDrx7eYmmvxMBeE6629owVOL/HaSz8dXG5TcE
CI+Ocyx6urD2RdLwNsHfSfhCPltqu8sgorO9txm+nzZFuyVg8dW3Q2QSYPYylKbEq/lQbjEJmKKw
QMtGL+reiTaDC2JhTD+IhrI0YGIJgMZcccqY/p0fFFB09YyxT8s4a20qMbPvr4eVnrqiKZBDr8Gp
vHZu7jOyGku49Z/cgCtDi9ZZ2hafiooUpxpTvFJvJiXI5jbcBk6usb7qX5zR2i+U9GK8bQKjMiZu
tStBu/HrV+o+speWoCX31FoO8iY0wXC1rvb3w9G7xjeJCITxX5dBRfAMe0L9+thObGZEljKnYSUR
yvhekPI/ZtQvy1jcsyZ6ZhdM4oQJ0ONSHK2l1MwRtFxTLxTGvrZVM+uVCWujRuDQShASZIZJ5RS1
0rkKeSUY1ldMsRc+P5F40JOXsYtqb/Rupus8pxaioqBkJGEoF+POC3bPcnv5oW4wd7lgA+V9yv4c
phC5QnG1qwPHnzCWdX2kywnIfy9vXRrincsn3SSIQgBEO5RpSCqL1tPE4MhO21r6Z49MqGrG+CbI
pn6511BYOfxuroTdbFMGM9yU8mwl0WEqvn7mW8V2Xa5bGraPQ1Qa1k4GEvHK2GThsFREiX6D3pPp
pwS5qsmuT9Ayxy9gyDT/EE298XdxjWbtr5p+uL/TdQlGl5sw/OWEksupCxrRqs61+oMQrlzEeu1+
9AapNkRkSDmKKprhix5B8LjWiDFCTo8cf1BHytgpzjEZangELp38wBKgUomgEoP9m2CqHsZx0T9a
kK+A39A+R7S4Lvo9bgx/2zG6CScBn6Up9gJhPflBRr3bx3NmM217eIfr4f+slTq6t762L7FR1J4A
UEyXGBz5HLrrDTxqEnKWZ912BvQVi4nlkGJI1qI5DP1iRpzLj52LKFcCvGQgCofWd9qwqjB+SIlh
APZ7LvqEWxTnJH6kBGJBnGOIojSJ0XCV8lu7rN5q2aLUkK7Gxp/8anvLMMUvPmzGiE2VukmkgReC
RSCSB5WHARQD6zgD9Z2zdacVFDoH84UT/JxT9xm02SCA43uHBoJaN/QRmWtU/C3bMFbOnqlcddeO
QuuXNbwy2Jo1UovlX1j3GwZ3cAfPakugM+jNxBoocDOxnveHiQnjK4o049ctCowCEke7jdHAmDpU
sBK3lIVr4hzIyulciMMM9tvutfx6VE8aTd/0+N49vTlEb++3GT2Jwspe2xBDcfTj4UEprev8u5Ch
OCDdSV6HD7ZnK0n1Osh3lawWP1gyo/VlWDWp3RRqkvuO1E2j0qwIIgGULZwqZDBksE619p+d+G3H
FPtr9J0jwjAInkTpy4qK6dQcuiymfrrDOE6CKgW274INwUGRhuYW3ndibzCKJM3n5qY+reJfqpU/
wDxnIKilQUMuBPmSIeNg2xMSmr9L2XOSg6ANTWKzm5rUT00W5OBGQyokaz6IaT2vHOKsAnCycNFP
pGZvm9Pt+4jb/LxaqzDgGjgCmqIvgi4LFZ6XQUgM8Pe0rtp0H+xJnYXKOPeAJ7PLKjFfpFb4s9S6
eTs+33DDWOITUjReMzpoSbvMfKiy6dJvRSYoTzd/c3t/nVccCSNcLOry/RiS9vt9rtNSOokBqWx5
0Dy2v0AuTXtc7Zxv9Bhb8PsF82QQ+RXx92g4tpZeOcbh+fYUdHnDswZEk4T5uMjp0joyEtK1w6/z
NQ+5KdWBOBUCmpqUVaeNeyXkOYGHQ5Ga+/ftBqtkeJ0itGTcU0YWCbjpYs87vyP6UmxKJSMGlfXM
ZMjn90z1bKQJnQUfE8c31DAH9aUiRgccq9/yl5blj6oymSA3As1K/JBdP5eb+TsOFwVz/PWKEvsN
gzn1Xyy1AnAlplE7+nIVopQifzvjmVkO87pMjdYoldUR4GyTgw6SVOIXPV+DrTxxM7eH+QlwEjHZ
heIp0t6WiVmB0WmMmH0GJ5ETjZuHAbu4Tf8879hxfeHJ7cPcfiualUkpT+CYgJ7meMQ/40Z7Qcf3
lGDazuHdfvbB9dpXilRXXjboojcWgQUqeSOR1FoPDv2R888tyM+MDF+XhwsXREh9NEKTqTvaUeRm
t9FrEOJVw7qsrx85J3f2mrg3vQDjM/j/FrJurCSRJN24UgZxbe0BXyw2jA0Y449t85Q9k3yWVHKD
SUUrEKGd5yPGBdNWWT2lGxu2B4cO+hOzePRbgoGymc8NYo46Lb72BjH5fyxaHrVfxkvJXM50uDy8
MCZ2XDZWb3Pvk8pU0oON0qeiOH3I7wlYUCxs3VN1twYPQfoFbcXX2ve8oM+8K1ifGqQdqnUHy2BX
nKWkBGH8vm+pG/FhG3VmNueuw5NbqNX0hIstYDnRRfuTAlCYOv2h0SXIT0B+ELwafZrTI+MgnleX
+dvRH6Y2LZrBfcYUBUQkxhVIn7s6+H1iXg7Rtr6KARAKdeBWvhE97F74noR8y4IkDbW4ZieAhQnX
vah8+xqtuOueRbI8Qr/ETtX3AmEBl7SeIfCyJ5uCSJ0VSqUjl8SinkdQIOCEymsgA4nzg7e585ib
8Xb3TZ+8Cxn6xyDybMVPDU4meGaRn7etp1LSGyhIMnIFwTJoTM5cBAITgbrE+TsMqm9l19p43FZ1
t3tKecbJk+t8PpU+ZMD12IxVjB1schTaGk6zxKPs0b4IUJBEA8QaJKpB+GZAzSY7mkis+4/BZIBU
Gm2bJItYWJU4OFzdHr+dVy21vvKH24sagGvOQ4FTfqlRBPcmbnjR339h2GUpls1nspWBihvd+E2U
WEpeW+2TYEMqczF/vjRBenfK+jT/aAa9Z28z4e3oISTi7Phnqp4fGlMMm4Dgd+cruOnljEBqiXwq
4On+Pka2/K7u5mRerzqPfRcqP5gOV6+d2R6SiywP2vMhvKvKRXLPwo2pPKFxKLu1J+msUmR6zIQ8
v8lEUZAGzcSRdUSPqagdqMuk7QLzK38ClA5xSQvl8KXpgHpRNAcLIdUXP39QiSa6/caJX/GXXh3M
gNc8YDnZQ3q5rIPqQJE0za19YCNVe2eRv7eD8CMFGfdadlXzEuYb4d0WWAZdyTZQhHWIHYtzB+X7
52rBZbGoZDYNEewL9qm5Uh60HxLr6bvMoztdqhvvU6HfZGbFmd6CA5OnnxWzs5uPUqpESMRZw4TI
TbRqd3xVG7xjkC/9kZF1/mZmaXNJlqDgxsOqIb/wRekK7ESb7dpVXsFsy3b5Xhhq+SD2evHDerRK
3jtyH7LQtNREZsJJIiMZi615A8klhXEX1o1QTMsa2dDIT5G0AgSXD8Xn9rvK3HXGz/trfHuw3zvY
517quhjPyQ4V7a9wfiuW1FBgV7hfv46oUhe3rZ9kCiRklVDwkCguV54UUfWQZg3dC4qicJQT+A7r
GR41hWVLKb+AWpj4ADj6Ok3buIVnPCtpSvI0sVS/v8LXMLwz/J4k7rJLf30XXRi2jCeEf80qA/cx
T1bzr5gwGBMncGdhFqwWiIQj/ElG1T50xI2w3n78uf5Kf7veqZxN/ElhGNM5wYnmd/CYNokJQFpJ
EabyTZaPmsw/n2Hmi7C7TdmUeGr2FU1Al4m7rfcqcuMZDfLW12/cCY9ZDiC+oar38o1JX9/XrI85
1AencbvO4bcZQr2OtJGRVM0WTThW/5G9hxf/L/0N4O1Br5Qo71oAAV8LVI3qSwHKoVaEl5XFzwQG
jAzUaxqPV/dVJ5FnO+3LqDPRky+yiA/upNKD4J2MMKZ5SHB32Z9vE3vqG0AkqJ9K/iCdiScGyXJK
Qs+gYw1Gl1fhGRe76gw0AlBXX0cGKRM+trxn2gLUHT8rYX2qDvG2iAtArHCl8o1FCFcWrqepprq6
2HxBPlDmqAt5AcqNMKQ0HvajW9/fFQT8ImWYgy7xT1w9FjwbusqqJDNqVlDh0IFYrrluPFzO78jx
UVYTaZUJO+MBXd02M8naRqg8pz0J+hqoaW6gzr5rdVJcrwfHs2QQgB05gborWxqfGOh/nqwsu1z5
FzVpyiwVjfEUes1KZuDEAOb+i3SUQ8rWPcZfmI238nKjHB4HDcJNUNY47sct02w2JF3i1YVg2ukF
29j6pK0t4tr6FQT9ycEzR08+weNrGsME437pssV2xIgdJWka0lQhioXyOl+xyAXDWj2EvYaof5ns
pnRw7oijs9s1CCMN9K7VbXJ/xXS40jOF/fIgheyuSa5iEcw4K0lHF65x1rkxwK3BTYoJpVZ1AH2X
V3TKXw9AI8B023dASP4h4PeVvgSFbMljWTT8+f4Q5uaLhz8sls+d9DdtWsLBWfdnMezVafyp2KEm
xsJywTnDqEpDvMaYuGTo0Y7fT7ralQhym3Q9ahlFE+oCI19JRprvgo9Dod+5XXh+G1WNVoLTARVX
cZkhQ40EK3S+wFuBpe+8bnGZCROhn2A1XE9FIhQNFX/fJ0MfD6hLH7JCYsxS5QBFdDMpRfYGo6x1
ed2R+yZrUN2AvGnyNngAYDz8zNVBcUl9qirlHgj9kJeCgzDyrXA3M2dONyANBprTqAXTv8/2Jg12
nUqIASUCEPlKtD5Idy2/InJCfvvV0BRcx7SDcYF/1sesTu9GAY/YX8WqUwKN2vwVY03epbU3jkNf
vlYxRLmKnWyghwktwoWjmTatMtHwYqo1nNnupG7GbpSXOorM1yLKSneI7DrtFeMwVr2RACzKCBfG
gfPeWTQmMEFIMEWCpff5NDW59cmUPXozlNE5N4aPwzvi+PTaSUU1ORTzXU8hHPH/NARfQ2XvgUVu
3TKXqUPP4NK6D75LKaBxFBpF+zsULZpXzfMM37QNqSynmjy8c/ldmqdjAMMgFaQopEkRXTaDRvAW
DIn1s6mzzv1o9dkKY1tc2H2rLu0uUl/LNq24UI3ep/O8WaQ58Miqvj8MlNofleBzwFDiO7SSeWx/
BH0RbZk/b80B7Ws8myExQK8E7ttRtMXKXuwHblsFF/ZUGXMSHS09Wn+S5NxLPmYRPbw/++ONPAUU
ERlnoFMO7kjUHRfyMKB1oYRXmxaCdahP8ylNT8rOnV0zlVWsEOc9+KDnA5B1WB1+nnQfc2QYQLlb
CrdmtCa1G+km0kzD4/oTNHO4Guv2buHNYQv97NQCHHu0UFvANHZrEezZeFAfnVHiRRzo4x/MVA+C
jILi0da5feQ52QQmSq5fa4DMVwxv8ezMrbx9h+nGiU40vBT1RVF/Ik4T8jBccSoIBHgN73Os0NQL
ss7KE85OXsLEwaISOiLxwKtObKUwH+oXaf0FlZp3K1JC87RzYqMr1vVcJVh9/0NwzLyXtXlt87U7
wugyJ3qQWx5D/VKiSTwOgu5RkCad2L8yRX564KmEUVaJBMtbTDCLATdjsP2HQZQtcQX867ytw9pC
hr6oeuoK+XebX+BI2AeqSUu8fq6rceuvSLp+5VDxO3OVEgHw5gfdwslEH90ZUNvGMeNkFUowXEin
YJcsqkvIPepTsvpOtMxYHpnFphgXp2NFq7a+6surcmG3cVccmVF4PeLzYgLZ3974wwCv39u34Juq
HeYgwNRZNfY3hn/5mRhAem84lWaqAfRBBkhN3pWsjWgPSNVA21KvGnsFUwuqQHIhqbJIer9tErZK
GDiX2tL1UWSwwufkLmdcgAzXxjrikPuJIE+bf6Mt4aTs8QiRyE/Dqcz7Rq/GZa8aZJ3guaJm29zl
BzxVASDvEVjtoYSQcHVc5tXRJULfmcj54CgXXQHoFeHLeGJBVx1kMwlAPhO23bN/PkgCwNGpp8If
kzy8VZTAfOfcVL6nXRi64FrG1zQ+RUzHHBdUW3R6by5A+TTnym6R4JCqJCpuggPq/bp+oeacijYR
nvrMQPD1fJ7NwnNo6DYCKu4svDmETIy8nM5iOKjok2VlS46bAraHrZ9cnbM+ANFmpSFt27wIWjPv
xyguwwGL2tXrR+cU/0ecNNgrUulF0fqOUcbLjjWcbF6xvE5C42QixjdMEdQTLegMz2T+U1zdIJiO
461ECLVoHBiNjECc7saIXVogzJ2xjs6132cOKOb892CF+v1O8e7vIfd1FCl1dqLpdBTtQz+PuH4J
WTFkLjpz0dOWxxkjZKEqUx2e4BP/TScdKEE70y0kQCbsGCim7R5o5Q4rw4pv6O7/1CA4OcsFaUJ+
RU0RltDYOdusL6uAsBAEzffsaxEHPJh0oBK6Kw/QiEGeMGr65zhBLjZVGnbc0IgMQZ+udl3Yywms
f5fl4XqGe7zMnY+As61uTDAHhWxoAd8jurixVVnUKf3Y2k6+UvVjGIYqLnuNLwBRRKC/CdunK6v+
udrHw5i5+koMivY46gNW3eZXSXQCk9/neSGJhOcEjoMSYZXytf8uxTVJnj2O5SiDljabdCXps68h
c0//7/O5u3Hdr2pS+TRDH/DTwp8zxUafyVn5D2OcPo7vYE+5qJ15LLy6PRdO7PxjVxU3BF5pVVd8
ZH61HIoT1zZiiMNMfnDCd4tTr67bBMA41hgdDXLAkbRaoee4L0HMiwJNEvhQ8FUSbXtJ7rnEYtO/
Dap9hALfW2iUFE+1DSMGlQ5OuUUrIXpT2dO7QbBTHvO84tqrgeWOzVZ3pUa/+ickukMuyoua5IXb
4xFSwm0SeS1C7p1SJXU8Fp/1QmfRcjOad94A61kEaCeA4mbnzktJfiMHQ1ht0JcUM5ukbuLzoomq
kT/qUHMhJBh0+/2R6hqkJEEDAluzxHZEyKZsuzcuqpEZgOUCaDPenMWjxgRMu3qMZNyeICy+k0X+
Wy/H+6cjmuQMQMLxgvemvmZfGrNoKYRmBkPbt07MrrHzm2+z+f3mDRR4RWsJmDpLQCtKkwyJ+QYq
h5VkWH+mymmeR6yvHKoQuUrav+vB9s7w77zUL92aVUDYfWe5lF0CCVjgWLcf53ZmnE/gzDRcf2Bn
9QeXPpJNPFUdfuVJ/gRKab/KDSEWyXlo9GVvNsPY29xPzELQx2tiGJzK9D4FjIX0M6jhhObNa/Ls
/lQ71dNmAQWuHr89N441Yiu/UbyXCAlLDGswCcIpmTYNj9H95o0sjbzLordeSf4vBk0C2UkCWK7z
wQ07JCSMC7tn5IKLz6HfhgeNGFfIw51tHzi+jSM7A3b+VttCbQsNXDFhkAKW6CUvv5PaqfwBQUQz
lnOfq1qCEti83Ogdn1Rr1u2fsWGu19MhJm7ZhfmK6oCc89tmN1s7kzNj6a+LOZkGG0Eq6IBm4/a7
4qbAJu+A5zxFBxsNWBkADkPF854EmGM1nc2fWCBHi7WEIXas2NM8iTnNIlPp7MR6S26l919f6LBV
eOKv1x3QFlQfw5aR7W+ClHHmk6cm0N2rNqH7eYayByaDy2x8F6KZM26Tb1e3PgviPiLQ2bQ0SCpY
A+C6ZBJlniawoISzKtYsKj87iwxoef+RclCFEl3HEin7cF+ssF28JxR7bqKsyI0ULUKHPAoDvCLw
Jl9VSLqSsNC+Ka9rdOWeogdyu17cUuUF8osnn5s0PWgsAFIYRnUIzcfMmSz74jUm+nYM5V3w2GTd
qI44pvGjHylKrVaSKZYzgycwHeFQYeTIkUfXzrp3RYv/6leUJ6zkFarHVJ/DSLSB2n05IopJzy8b
0MkpsRfY3BZQJGebVO1Zjiz4FXBHWmfoS4Am4WFIqmIlF6IyklxHU1H5/nmc9fUjriuTYFVOtqk4
s2iHDNkdsu0GZ7CapekVYQUxjp8+py6/cc49P1WFoxQnmfQgXwP0xgJYWN8mUmUSPfqeP2MTcuZA
6cLBztTRbVZxtMcD+M9r+Z5fuGnRm/BxZVTbt5mRtILiEBSXFniPM189yradCb63NPth3FLYs4Wz
iAJiZ0rMIn0Eh7Ta/ECb1ZEHUT0pBXSjSaxnKitiXISPqZD+OkOL8oDrA7o0QedwgpWHF6Oq6JRK
BuyDWu+q61uYaPvqkeiAp0jYUmPAgeUqRvIsrN08eYxtos1Sduy7Ai+T2mbyiTfLW8YpgfsPKLIe
DRPQJqOGN/hmab6zN4RfGe9oKuOOozQhmVbcBdDPFD7Sf7E6ojiwV9vjj47hE6BA1skTuqbMsC8h
SW31Wpd2p6jW0bersh/a/Fh54mNHpoQDtNvM/+FrjJQRMDgjqr9UpUnUFruEukC89HKbsHWil89q
XFPvGUVXBhqO2cV/YfWKak4E1nj2wprJeBJGaCdAYmEcLJlsWv1t1oVeEbL74CqfHPsiJnOyEgCo
xKBEI/UQZ1baXNcPlEEwwos0CEEe6eLKL6p7YvW2Ea663JlHT+uhdYG13jpR3ECz59vjV8EGpEGS
/EFL1/33i92rU9+1Aw/de7qOfRJJM+rv71PpNKB4ZAG50mByI06ljNvrnt3CxbgE45PbWxxSeJYi
ZwBet4gHX6tAaz27JO0mE3A2kl/zonRodGer0i51i9JQLFFXmp8LeQMF6aRLG5CKUsTl0zC+1sF+
Iyun+9QvMtvyz+i22tm6A5kJs0a0q+46VFlvsAvSJ7Lo1S/m0Kk8BdUexZ4dlzAF+Kqe2S6tQoO9
HNTvUNkkpb5bX23KLzsMAGiH12Lcw8SEjrlQ6oZTBo4bAEtzT3zOdjqURPuTJPgKKNym1hT8jFNf
zu5DUIcggbdv9bEMV7Cn/2jnI/t2ArAV/8Se5VHUjKDzRY+nTKTuW4/SxaxZ2hBNT4kDB1oe39J8
1j3qA1uHQRH4rPXZNP/PGPzuwLMboJOhvxr66TYtoF2P17+A/01DYf78iiXdOuHqxj6LAYTeVaSA
dlFyFCuOUCeRuJCIanNNEOU2DglCPx6Ly7U/6btKhjgjoqN3za7umv8U4ajuI4NAR7HnlHGrs7wO
vaLW7JmSnKg3EHRyzSBRqwsD7SJ0y2XuPf4E7SNFOK8rFQuLd1GR8mGZCuJbyfZD9vsBnA+qoYcO
CqT+0Y2Bn4G6yvuDjATGpvL29EY7++gG8O0hme/RXUltc3G/8fmus99WL0BG0oSU5kDOqxqFEsjC
aw0tG6LxB7wxPbfkJnY7bo8DDr8g7ZWlGdCjgS4sKKl8DCz1fn/amN4RiTzKfo3GO7QxRCZ3RDY7
zJD7DJjD1hy59k0fDZ+c4FhuR9fBFr0wp/o1vnjpekW9X4TxcVZzZhGTnNiaIsucvuomCAVI6o+J
COg5s/8cvnCJDEE/eY54J1fHgxn15yftGv3HwQ22ABKoex5EeJBAI3EbKyGN0LRj1v9WJoGDsqj1
Tj3gchlQh+HIoR3Iu2tVGK9GqAtfoViKanpQeHrKXir1/OAnUokQx6YCRv8eVgwdp7JpDR48ElDd
Q8IiVjp5HNo4YvQsnDK3F4G39Vm8uZd9NclFmmFBnEqrlr/ZXEE5eeSdvpSzx/mvsmXs2VgduuAu
setVvAB1+oH6/J3x2EbFVAUUPrZcxEZWDP76jI2b39lwCaAajbP60NT07X2BaAg6503pWn12eDo/
iyf+h1e5g0baXyDkqjHZYZJfayxTxEyjJ9RFPfwT3c3GrUE8kp7PKgmjHdM+ydD478xSjTxugdzh
FdsNPepsgmh5HOJXKVooMwkTfMu923OgMvLsHceKyuv+gqVY7eWPs8zD/ntfz1rotB9IpuaI3hA4
yrP/NHWfmnJbkWJUk5O0PbaPTYrUqvDKi5nivEBPZVcnldC1c4PcD+eTy/TVKL4SsZpv94pKki3k
jvGaf/BKAbPiSjj3OZn7xiDYhwi0xtNRxjCbFJ2M9DpuuEswOTKkpOyOb60mmK4NzrWJ2BSjg0/c
JJFWzIDBKZzBhSLhWP8DZMBFpb6mXbgj+QQ7WMxiSBHETc5TL2gXPwF2tvegxA/GhhKTRSWD7Imu
bpUwHkz4EljQNBmn8bZtE/uBAsz/6fsNhbeFfUVZ8nyUimqzCUWAGlsMUOqPe8iljzq2jk2d9/z9
XPc2q6HSGHpOod8DeHZCeaZ0j4tI5GEWv3hnAULokAVs1c0s51ITyIppz9hdxyu3BbEzY7+iNhBH
jyu2VHU8heghZKFA8U0pwM0gXQy/65Ck6+oWH4Zb8LAKySfWQZ3l4X6tKtUcCUh13PNvX5KSvvm/
DHO6uiaVYv4ehVNGwBNU5d3lY7XzbckUMfatVGZOuj4JenZQTTMi6P2P7uA6jPlA+DGxz4vECMS5
HYSEMy5fv2YGQGyNnKpeAfZA9VuHxMd6PppzOtrFEKAmlNaO/W+f1bTvxgK07NpwkDjH/u6Q+nXN
zMFym/Sq2FvXA84KBQ/Pg+FOERwDO687fHOy9WUEt1EbGp3PHBdxlyJHQV+Dgdouju0128++f+gU
+TYIDan8eql+PVqiNz+o917uKwT3zXlKxdF9bWhy5lhryQRndQ0fQ2Ta5nCsKokEmUsvw1xVwN2t
SAExaSi775cUvkIKIde5w/gVmFJk7iiHhvCIxWgyhbplDF/RS6S+eh+D6umu30irH6Rto7MmkPVz
WH4tvYjGyzGrVrJIuA7oEEehOcxRLKbiZ59V8a2gOon3nP7+yHfDMZD7Zg0YvtxmounnTMMDIUzA
0FxpAhRu7h8Zg+reqU7SGTBUHNIrzyT4sf0ur+CSd+Ovs3dfz1msxTVVqKu8sa93PjcpjcQOUzGn
HjWfStpC1UtHBxyfJLAQGLsi5FjD4/IAl+e2f4ld386GW2SpXwGzGL0CQMiKDyxPvJVZdNxfXPwe
SUjQfpHFmmq+0b6fK4ixZbAW4OemAUF7CDFm774mCVDoqmecMy52udh1C/ctZ+mepGOeoaqAkdeY
30ye4W4aPr2YCcPyWuyt0j6ppkW/tTodTphhtndBDBWUkYz/l4E5EbjoEvlzaBAA/ocMsBB/ywR8
SRTlPEmZJtj9MsvAKPk2CAS//RqfDZ2dnV8yWLyyopXwFvDegil0Pm6r629xdFoQ6VnPCbKLIgrM
TiG0WmzYTM3KM06064lwdyctPUI6keMO1pmMvGeW873R47rQ+GLRMbZIc3UC4lymFyqQ483AtZqA
Qygv75IwRgy/ywJwi2A0zbINh2kV3B7k1I7/sFYfmVdCkattw9oQx2e8aae0IVPtd1ZBDYasw51S
C+OQzGuKTsG+lKu4WEhGRKBdQ3LppsV4wNtVY/+3Dcgw3Zoa2B7zb07nL5abWbEAWCTZg+jSMTVM
NWRkqpzEUVlTB29jb4Rw6SmyLOlJRZkXDnwpvnC/u5WlILxDyR8H1lvDdvO6P9NQeAST8jNpN631
bbnPwqe4c1PMdPP8MRBEoGs8iv2oQHzsDbXgeJgmX4Ad6zhMtlTOMxXBPVBNsEcTpMTTxiGnijno
7hgg/7aqbUXdskDenaT0PwI/h9w0+HFi316kSH0P5BLKdIdlm4hgqjEv6CvvyzCLwwpOuE9o1kPo
ycYqJ970O9JhaoZm0TrfZXj2IxUqJA0jd0otOUGuV1Rw5IWdfR6gtqZsJncTs7KmZFvwYah9PnDo
z5Q/QMH4XDhOPPPgeYMyxkhcswpEShQNIS83oC8t5ZxLpNBnujmhamOUTzB5ntRvfvcxprqGYE2w
OeFHHCQ/GqAEkUwQxpVvMV0HOUo3MQUKxepKaC1asSKOLX2krxyFAthoCJs/U1A+sdjdjfUiLtWp
HRxIUr5NZnDE0sNmffM8o5JVByk04PaMNjO12TlXjVAPelSjn8uecy5EOXr8dzBFokaSMdvg4JQs
B/R3cwTC1CtXCp/A6guZmP2hmsqzdWccrKk4/00RBmZTQLdLA5e+bo5yrDZhTAa2+14xFjCJM3xR
LJxTyERvDSnCV86y9gtf8htsHv/xLcqAULGra+CA6KeYTT1CmoONBTMrVQ/2YlaMLW2uIraqb52s
WigrJvmL+hiH4J4DlEdnhw6714gyWfJnCqXLo2Qhv9C7/onqyY9KOJNSFFWHoG5oJyWkLL46Y2jE
T5Q7etBT9xxBtdAyMUCQmkwgKhjj0RZNoekUGLoRDV16vMU0L8MHPyQ7A4sLUQH9GnSKXXMOYTt+
ZtcsRw0lkGo18Qf82L2P8dQ6I8mRLdS+bdeYLG837T4ax4MAYCYmmti8TqjdGfUMlcuSOpJFEffR
1q1SYKcT6f3m/E/4/OM8Cgglayy7NARR3HIGou+cjVzegcAUGMyMRl6GRsk0QhLQ+uqyzx/LRztm
hvlJq4yJSHD3PqDfhO09dX80FD8cYVFXJjDQZLrR2KgVKQJ0UiGCe0MdH9mMaMEE//fdgjY+Vr4j
yKGX9S8D1rfuPXoFyI3ecSKkneGAgaY0juDngkO9KgFJ4uOlJif9plOq4S9FaI8TyLYcbtiO0fxj
vlE6H8fAJ5dHtOCYzWlwiCj4azvLe2ewoG4tjw5lPS1ceBzNUyYW0mOHmmKcI1iYHQYRQhzF+4OY
eWa+hhAt/u88WL4yYTwp1HUxYA303CytlIPek8UY++ZyksV2v3+Sb3yjFb7BwC5RT8GNBEm3x1yK
Rfj03/2bf10cfrtk+HVKdjvEh2EXSdZsfyz3MoONtAuwV39VSmi4iaYFOXJGWIZqGKzezwGLjfnX
ASETsC/7rYV9eFo2IG8qYiYUeP6oLRSWOazPgn3kRqNAk5ZQ9alvcDzxwzD4oDCNIF0RJouoaORs
A/su1geH6FaEK/f1bY2JcYDZJe2qZ+2sZmVzoWvBUD9ZOtRbY2iu0QXTwQisXj/NI3CLko0e17Uu
XQNh3QLR44RFJgNNttnBg05WxWEaxCkW3Qvdw3ibjhEB91PwAlM1aS16rkT0Jofhav/mScf8NwUn
f0TK1XdoaX7Ay4qwL04jnJgXGi5a9scDKiihd3R7KAIDipRoJbZlyKw2QtVKqSUOVzaqi22zEQtZ
qkzX5wpT10QPDRfutJbNmmye5pki173d/Kw+tnuuDI18e0mrzbfjLLpUmBGhw4IzEiKxzZNywNwV
eNQksZnq0skQleQqtSeR7fWQ2JxbsF4FoOaWwDoDnwpNbR9pNpsEYGgX8ocNSdP1EzdlrqaCXQVE
+jId5xRmN3LYKTHuoY9YO7u4OZMHWAy8hnrsEzM2lq3RwSuN1/8nUsAZQr5JcXq1X8B8v5LL0HRh
wx5O5uqwhYAU7iU9AXfS2k/kGIs7NZSJ6slD4Y7mEMRpPup93D+nk1btdnujiXja87ai2tiNsXId
qV+ijhp1/4P9vdghs6mxUR80W9xN/a+wgx2GGscTm7vtq17riY3G0td97gNC0+lWmmNgQgq39oOp
VOVp/2ktQNLAMwoePRf6nytR3FSN2Mpl5+h+7jW1rkDPzjQ97i6Vg55tN6aeXRXR8Gdn3J7GzkSB
5PQaJcOdNIh6QNIgdjwePJKkktcZ+b4y+ZDUyTWhJq6IzEFeGzSe4Uq22sHcUjSK5ebZAR8KxFi/
Z9ciNZnRnAGNJVDVxGjRwBDQfy0YCOEewlkL0popz2+JdI8sONLlhkTpTp3BHGpMkJBXkmCrwsCh
Oi20Pie6MZPkQ3zdUCUChaIbYIB5wzQZQpMVyivAU6clw0r/Y3mQk4vKZBDPe7oNHtcYJNW1GXB3
mtj22YDokPEAespINs6iLN4wVZfIJPprYAKgtrnDKkt+rTdyvqrmsp2wdrJ5cus+pH5UKdH85Sy2
FNDK/fzxZLwf2or9GyIbRTl79K1cT/RxS7UCsaRRTz+LZPQY6O7PiVZvAOh7f9hJ27br/Dgil5qM
I0nT/+aV658XoKoTRSIajYcrBVAt+9ks8W1SbOPtDImDCcbS7fLQi/cXqVDL8CTGbLpXVsRo+nLs
xTZmQWCcnKuwILyPpvdPeAiSdDP/oZCpMBnSemXvrYzIhjy4xQ0QSEZoZQSlYdb/jA4YTTIaTLdf
pxE1XJezCs0ywV/6qaiSOSRn0xSHafool0A0hoWPZSwaPrI90h9snPu0CeBFJqIrIpNR/EXtQtr/
ixLHk3qoRGrLwUm1FSbg+MnBJ8Q0Udte1c32pEThT3lq9Mvxwru3NSOW/e6/iaQFiDmDVPsubxLJ
UrmhyG+qlMCp0dRKNRjZObg/VglIX09AMZTWZ3GJ+pwCZ0+KbfeOo7W9CWBSYH4TX8MPLN934SCx
Ia53zcUWl4QWjxh0zb2E+RdfLq6tdmk096chfof0luEXe3L7Zekq7kx9flDUUJXgoeD2QLhA3kIJ
QOJzqD4P9k+y9kK/XGyHGZg5aRLDLhWqwxO8CPUQz2Juev5j9uLpPkLkjuikCwKUVBCeeHFgK5/v
krDpi5oLUGKrDMwZnnW4jS3E1BeEoBHqVHnjQ45gOFQHoegiseKA556dz9hEsd7vC2EbVJ0zWCTC
/HnhFol0ArlnRKHDUwXa9F84bX9yjOCZ8OMBMqhExEwxgO1bhKSdaMwYnikByo/ZEJ1yePTyZ65z
wfuF3zESS1u94Xfathl2h+AXA7hD02JWWKRUyVyW99wVLTtQ7xSu8HTXlH0JpdglZ8Mk0Q1kVX5v
ACpvv+VxW4jZxHdLhrP8bp+8locwTB4z7+0qGzRnh2oFf5zoG2b6sGiSaqCD5J/5eLEpQZ3exKux
vY4RrK51EYGsLqwJG3VEzxGp5tsBRhBpSstSsCTBDwHhS6RfgF+Eg+jbJdLMH8iTSfmbnTfVaiT4
MUp9AwVjInN9BM9wgTZ7J5u0vMl0wclb8UDTyW/WEEeQufCrdPmGsZAkCY65MzAABuft9ebARa+N
L4R8g52m65lT5CrOGwHS+7uAZ46bDx3k76o+gUkz+mOrZvPWMOmux276TU4SiZti/MVeu9z2JVrd
Ks0lqFuqMDCaKfUL4C4hpBxNMmw5ExDgdk8e4lcREfVtYwS1U4oSFgA1V/asYhdhJOgdCxu1CQbW
bayIBYu/qB2Xhd0NKd/8yTNc+MwbPp4rFZ1lwUjSM0oSnTTO2/7aAtKGQNiOpBYfp6Ss7atfj9+p
LVjEyPrIwfZzFbVG2aBYv4oZGXKGE6Q1F9lrO7aK4Om6N3LHWASAuVxUw+Hm3oSloInLz901G7ET
wxZhGHdz85QLlVPjnFtAyfm2pjLFP1j2Fcaok0OEF3cvEL6BGVpCc3QvGiWQXzA8sEKjZ8j5Lvie
wRY1q/E9whSJv9J7KKNBwNohv5h1MJ8BbexKsRO4yyV+draFJ5cRxmoooFOAIAAsaX8TNCt6tT8o
QWx4pB7cBQhNM0BtOtzDr+mjBzq3sca9NI1FCsIgkpRFRYv3ChnjprWbHV82qKbcDlV+jZKoRW7/
ufl2x59SNIIrQ4INWelUAbsW7SSoy5okmZMljuSkp4B8ZO0BsstTzy3gHQoW7SzFft3mSdkQwvqd
3vtY/bcFKnXanbwFEMXWJM5sprweMyl/yLCCMsIYtLyANVpUwn9efa8CjrQ6ZVCWQsI2TrwioZhr
znZMPKzJW3ukB/UCMn+u+yIR7NaKT3z6UAf9RFubIxH2RN1rkmXc9lF2sEcVQ+7GP4COpLGJt8sJ
TwE+lQf3PRytu86TXe34DsuxrCytzal2UJP+qa7+0ahwecDOar1sHN2n7P+sczbVtbMv49UomY+A
vu5aHK67DUqAzKFunbYAbcD/PAeq7WpSQEM1vtQ4h8n5j5UAAjHiaUXcnpO+IF/FmZp+gQOnMIjV
0SCAfwQ9avEY+/9fAvh1mF7fO2PmbxJ0VJ9XwlGNgxgf2oijExH4ZKD/Ep2jXcV5g0um4awp5dOn
7NswRYzajueGvompui2ciQPcVTfPYUION2aEA5rJbtm5rgBh3aeV0rZ8zwil7Gy4OVPBwC8uOjT1
YMHQ9YiUAmiHu7sLdBRFnghQJIhxe8l6vX9nDYAlaZ3KnlSyw1sCgQOhc0PiIluo0IyQWA+DiD/M
y9CQArunJXym7/BSP8E8giqd+rysT9OnYCJdiV3vIQJYINpdM4dJ+bOnH1VRkhYdkqSmjoNGS98j
F5KSXXSHlN8mSYSDSr0M5AF8aDDai5ZrQ+jR7Eszjl4lsKaAbxANjJ2aXzd+BtUgMOb5w0pWCd/3
V1wmq4JVwFZN8a/oDFrAh1ZBt5dYQth4AbM3sD7lEIgCpAhntt52B2yYcX5jViETCoDn/QDy8mY0
UPmbSpEtOn6+4PC8Kn6BBAC4KwGIHOvyXnPD+m7O4yJJCd8vPABcVBoNU+6jQyRfnevLO4AscZLR
jHMBzbHEnBOEld5Q4Mn74V6in1HnaS36jZYoYbaxkuCGx0YFJErWQjwyvHI4KcCWH5Lf3VzEOqeE
ann38XvRQ5iLUgE6E+XfPx0FOpCz5Ek49NzJhFU/xKc104OLwbp/UvFMQlIkHFxBBrqIMVZMJXWi
dfXTdq2nBExTZNBvjo6zNurB/zUc3dsUW2/XfMiYJb5K+Rc2isu7aLyU/h9C1bCvtgtbe5QGQkiY
EN5gmAsbMUe1mqq9kMj4A/elcGH5PaHNkHDO9Lo808erL8mvruiHPzQFDbReS0up7FEki2AZ9D38
IUJq1brmfTF6aXf6cySbwaYEKOzBI7eJFV2Bs6eYXnH0Pe0xWyuJ61jHnY3OxQLHiNLo9HnLgUNe
IawT1E/I4QraDP7lvzJ3NqkdSQeOkX97ydMYLgXgEA4UapOPs7t6Rgjvh7TBlEfguOxoTV9Cd6og
8S1T5bfOoE1YViAreW2jHDMfnzdY+Q/ApVDIQ9+D3yP8vIWiU4XENJTGv3Qk8IZkttoJlW6jAYI+
GjmcVkTs39zOd7s4glXbLPMIgjzs7vkeiIevOgN/hUpJuvoCfuwCGNL9ENDpg/qO8ODbQQzVUBGy
S8lSG9OCEeo0eecXqsKUAKIMt8s+6+318ox9qGfQmOeb05BAlyXa+qgHyIlp/PtWtI08vrcAA1uJ
HEJEixHqCn3UxRLdV61C8IfSsYlCGpN5HkLalq2WrTxPUQjtBCnzL8tInY8fwZVWpMEjkLNalmQR
R2WQaqnQxZUycZ+qNoKtK9wO8x/DEq7kHvc1LGiKESa7DiW4u5+flJRyy+yR/JmuFEe+zVmK2c5f
VdveQU/VB2EdFp/Vls/jBeLpJMRh8eEqZjrp24eE+U/wimkkWgMzTNhtm5fpcdpfEQ94ywm2QvqC
5wbM5KGlSk2Go3ejelD8+K9LneWhyQC6/z68Jv/xc+meFlUStR/iBAOStWdA9FhW3Q7LtzYIB9Ei
FEzqPUlVI1UGtdOOTnfnAocvhEpy5iDzSYyqGJWJ8zWydJ98NG0Vq18lSf5kun3g/V1AaSJivQSI
0YOSaaVlDR4OoOdmnLGFU84Z/ZvFVkoKLwtkZJ4JqmpgCQPIwYJa7U6D4GRvT5ODN3TZMWtYf7BF
XXOCgR92N0+59MEe5jXUCkEXY2L9ZEDGSIV73vhqX3UPUnyteXnWznZqs/YeOkVTIriIRCgDVk+r
GhV2iEmIQFu2efe7oF3MoQHm1toKXC50/lBep4m91MZQRIP5FDfytYUmVdD9fR5kZs7L+3krbN9f
lfYOua0dBnvszP5HlJwwP+X2qvRJct3mWun0opyyE9Q7bD5sZuErlLckpTFAZxVqpp+mpxZoDbt3
389+50CqAIPwbIIaoxom9zno7FeACspAsTZYTVjLxj7hWGnaNYy5kRDhgVdYuiXS7KHzaYf/TCak
Oa7bK8Urqi+IZos/wcbPYfhdq9Gyq2KPE+dCcZqYMfakWhnJem6nsraVfoZcrhMod0Dh5ZxoQvho
BV6pwTTuMnKSY76YrhxqvXSYS2LHJ8kwqNs3+FfJ8vfm9v2wNXTPaL57ZMzGt+fsUFXs+92o1Ew6
l1s5Gr2HTDU0bN9wzg1iHgfRQrMwcjcV9wKo8PZJLVBMh51bE/Qe0jE1aTOspVByjl+G/IomYNxB
3Dh6ofsMyB+C9X+w0vnh7TEZxU5yQirGmQhV+SfmZN79KH8Sv34zdZXtx8aCoU19iO9V0XeVPyQY
HgtBu2OPfbRYlupyQKYAY80L9VzcVbY7qsCHkkjSHKe9ErQDwLcYfJIkS1B5hmNvZTttJUZ5d1Xc
8j7KHEVR7Rx2hwqOxFF6NWSCLlK3OkMJNU9wjpBO6RrT6kN346KuH8g7+QuTshKBHyMJbmBuSEu5
2saHdwQ3j2uhD9omUwAYpCMgFcsnFVGOEIC02gZs2lBIl9gFDO7LmnudvuG6x8ngO38NGc1zYjED
QqfAbv5sVEZnAQhqgHKG6MbQ8hBBQe0482UNyl67PpB/vO/bjL/5Afw3vYEs+VkqW3CfnVW4ph1l
BQZuUcK4s3UKM7r0O37lnGgCR61RgiQ5IfAOgZh05zEY+ZBzHJ9XFm+x8uVh5AR1Y25Z4yGEDAij
dl90CTAZcIut37UWR06gIYXgED7o/CcIdBL+r2JDZWshnnlwmYlD/+LLPGYdQ5NGhNmr5HbFYEx3
oN9VNgbO8ugjBQg95DHnb7sCof2lHPIrpiUFGtaMR65drcdXhERcFclbNJZK8sjiOUN2r+XvnTF6
42qtmKsD0S7rFnVx5V1SWag3maY8l92jtX9nm6FaNtO9+UBhdLg9H9z8Tn1oPX09hbUxGOd4PPQ4
e5n/l+w1ZXYvwZKH7NYKkG2bv2EbEU/G8bbgT9down0szPXK0m+DooQe6XL+9Q6ieSweGTZFtMqS
bG11pGIKYEaWW+4D2ss8+NG4GKEgO2OYiz4Kb4jTy9feuQf1KPwOWctwK0YUxES8Qr2rBI9ZMRkh
NhrQvNATS+65PZna8bFdIOb3vt9pFymqqGFjrZ2oL6qHeHDS4C4FQ49PfXchzMY58L9zBE/VKD6f
YAeSeD4fQYjhGMHHJN7vtTg7JO5y0+qXfdaW3x4i4mUfUkocLMO00Ne9NArs3cH5YUlQRYZEKcnR
5d6GIJAc0pyF44w7KOyPOyrTXpil14Ejt5xrppGSnhrANVF6fzFJ38mQKZRhiH/ntURk/oziGup2
9adeyiKdGeywXwW2Dd6CRORmZakNF5oWDuUKymKCk+KhLPZwgx5dkOIFaFsOSpvhv708SAcggIAh
c5pfEnI5QaCAT3eTuRvErawYJ4HS4DcP8WQq5sLxjfN/SWznn5PyEiZx1CLd+eOkUYXXIez6O6+d
xgQQZzZw+uq6/KTMvJ0fy2wMO3CtWlIKIl0tUi1EGw2YVzXEJAeTqML0d/9FmUjv2gzNIYrEZRok
MFjM2n8E+iaWqvY42mC6NeEDN2PXaf/hkEt9jpHvy8Q6/Mh3zkghTCtvhBq+Cuut51B0TaQ160Zn
Q23Iv3FbKr68xI+Px8WkBWTk1TWB8cugTljQ+zPosVA8W0WkDu4htAOrdvs/MYa3ol22JIn2/vTJ
YwGn2xrTYceGvWlOtJxkBieMR6VDsOipMBhe/cX242gy38QA5NrFaD17mUzMpP5aLzwnOw6T2+ib
ULAqloRNsikbpjppLF7DH75O2ZV+sRpV8fD+ObPst7m/gExwlBSDt3Yy83Y5yA1Hw7ypbsHsikyw
SZPZxuglKIl8xm9gum8kTHN96kQsstiY205TrjzyM7xNG9IKO+N0OjvdA6TGrz+6LeP7m5cLigBg
2sJiNMr86YmMHlIYKnpCKVHrl4VQGVz6zShgPnz//5aceDrGHfcuowWpR0WubetRTsBGO/PbWNMl
Ts7vkh+aEHiXRx9T/aH51a+rPfz3kUASJHwkN7Y1nr5GvsnVXETFsLlaQsbuHhW4RyBUI18Myx/z
wpt+KDCQUaYRyd74ctBvD1ztEYprVDZC8yKZ1uDSJFY33eFD/Exz+9xQ6pbeR0e8rb56Shz7lHlC
WY+yJQWXBa66HDoMPTfp2WqElwooJhMkoC08aOzk7bhJgQDAJKEe12Cuzlq/eJaeOQvNAn0t5Pnd
5A33DcQ9rHXIIVC2gLr5f2Q/vRIlOTp+wZvIJHk7AqrqxgpfiYLW9soV9GIbABX93MCY4N4/DvMh
QM8Bi6C9TggrqxpoOT9/G7BWggUoVRYjuOa/s9aJy+kBJF+AdlnJM6n8eA88u04Cug1ZhG5mMEyT
EarsGB9RnQ9ajsf2k46+CwV5YaHvx0dsfvBuEIxoqrkrX4anbu8gSFT8cdPaeEsUU4BnwfdApCEa
2uKZzAhTBfd6Y/3niDCDzQs9v03XIsuRb+xlyiXM4VkG5yJfir6aqlrryDzg5a9oIXmGVoC3nNAE
V1di3k8v7dYhMDt3GN6kuw5DRBb2sHtPpGe/iutV4Kv6S+giFJT/8ZHFiJAeUVvv73hJ4cb+r80z
nLvZ93ANqw49F0Q+dstyKMdMropRHOKvO4/GHb5VATnBn5NsSAdXFZ35G5AwpRyRckv6MSz/Mmzc
5vqWeZ36+y1H5D2I38eeyPHOHGgDo5OJsgZHnL6Taw1lICDCpYASBTHr6fjOY29faUOMJjFvrhaN
XgDBAoO3k7Z/gcgHxILdBtCGt58PAFhuIEz2lzr+d7GTMc/qtI/xfOtqjRF0Bz7v1qGlYmVmNaAB
574hBE6MU8WGO03irjTDQca36cypfMU1t6AsddRtqs+5M1HSVGVAPwfIYtmBvRXzmbDzt2pam6c3
QiuUYYMj4Vl8sALMO0PFaF8+ycJpjSLdyF7YwZy6DCJ4mOeH9wsV74XaItJ2PhjWX+TvLXlgj4+g
rs24ES2NggOS7ZE0lueq6ezG9gYpfAUjx8IlUtyefl6jFghTXEOZxnVlBdZAIkfWrsx2b+SqqGYq
5moJ+ovVnteqkdzQLzT1zMGOOPxw27pIiZjKrb+eXAe4OD/cI54ZV6s8D4OZTx3SkMWku65XMxzY
x7KKzjQxpyT86wTi8EI0NMaE/24VNplxrT5fOdlRWIQXFVVWcqm0++zBAsv2DMZyTS5ccyF+yo9v
FvdzLTerj6zGhk/EQ/uI0TiqPPd0PSLSVx014HhrX+0RpTE3+bzWVlkHUpm9ZgmaUYXodOClGijs
yxIkbRaukOo/6kNRT2yq37raEVkVxi1MZtSAyx5tsJplndJn8PFdKLgG6zCuJp1VNzPvQ0N3KSK/
FZKJ/21YNBG2g0NlFiB2pnSQcaROS9GC1mPJ9ZoY8ULru79qS0k6PZYO1Q==
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
