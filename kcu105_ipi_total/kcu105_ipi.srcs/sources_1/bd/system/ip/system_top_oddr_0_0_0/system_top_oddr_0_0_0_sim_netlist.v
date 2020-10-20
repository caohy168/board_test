// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 10 09:59:33 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_top_oddr_0_0_0/system_top_oddr_0_0_0_sim_netlist.v
// Design      : system_top_oddr_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_top_oddr_0_0_0,design_1_top_oddr_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "design_1_top_oddr_0_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module system_top_oddr_0_0_0
   (Q,
    CLK,
    D1,
    D2,
    SR);
  output Q;
  input CLK;
  input D1;
  input D2;
  input SR;

  wire CLK;
  wire D1;
  wire D2;
  wire Q;
  wire SR;

  (* X_CORE_INFO = "top_oddr,Vivado 2014.1.0" *) 
  system_top_oddr_0_0_0_design_1_top_oddr_0_0 inst
       (.CLK(CLK),
        .D1(D1),
        .D2(D2),
        .Q(Q),
        .SR(SR));
endmodule

(* ORIG_REF_NAME = "design_1_top_oddr_0_0" *) 
module system_top_oddr_0_0_0_design_1_top_oddr_0_0
   (Q,
    CLK,
    D1,
    D2,
    SR);
  output Q;
  input CLK;
  input D1;
  input D2;
  input SR;

  wire CLK;
  wire D1;
  wire D2;
  wire Q;
  wire SR;

  system_top_oddr_0_0_0_top_oddr inst
       (.CLK(CLK),
        .D1(D1),
        .D2(D2),
        .Q(Q),
        .SR(SR));
endmodule

(* ORIG_REF_NAME = "top_oddr" *) 
module system_top_oddr_0_0_0_top_oddr
   (Q,
    CLK,
    D1,
    D2,
    SR);
  output Q;
  input CLK;
  input D1;
  input D2;
  input SR;

  wire CLK;
  wire D1;
  wire D2;
  wire Q;
  wire SR;
  wire NLW_ODDR_INST_CLK_UNCONNECTED;
  wire NLW_ODDR_INST_T_OUT_UNCONNECTED;
  wire [7:1]NLW_ODDR_INST_D_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "ODDRE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "C:CLKDIV SR:RST Q:OQ D1:D[0] D2:D[4]" *) 
  OSERDESE3 #(
    .INIT(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .ODDR_MODE("TRUE"),
    .OSERDES_T_BYPASS("TRUE")) 
    ODDR_INST
       (.CLK(NLW_ODDR_INST_CLK_UNCONNECTED),
        .CLKDIV(CLK),
        .D({NLW_ODDR_INST_D_UNCONNECTED[7:5],D2,NLW_ODDR_INST_D_UNCONNECTED[3:1],D1}),
        .OQ(Q),
        .RST(SR),
        .T(1'b0),
        .T_OUT(NLW_ODDR_INST_T_OUT_UNCONNECTED));
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
