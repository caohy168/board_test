`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/10 12:38:15
// Design Name: Telecommunications processing unit
// Module Name: tpu
// Project Name: BFB(base frequency band) research group
// Target Devices: xcvu9p
// Tool Versions: vivado 2019.2
// Description: 
// 
// Dependencies: 
// base on matlab simulation
// Revision:V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module kcu10gbaser_tpu_top#(
        parameter AXIS_TDATA_WIDTH =  64,
        parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8
    )(
  input             CLK_125MHZ_P,CLK_125MHZ_N,

  input             refclk_p,
  input             refclk_n,
  input             reset,
  output [1:0]      xphy_txp,
  output [1:0]      xphy_txn,
  input  [1:0]      xphy_rxp,
  input  [1:0]      xphy_rxn);
    
logic clk_250m,clk_500m;   

tpu_clock_mm tpu_clock_mm 
 (
  // Clock out ports
  .clk_out1(clk_250m),
  .clk_out2(clk_500m),
 // Clock in ports
  .clk_in1_p(CLK_125MHZ_P),
  .clk_in1_n(CLK_125MHZ_N)
 ); 

logic [AXIS_TDATA_WIDTH-1:0] rx_axis_tdata;
logic [AXIS_TKEEP_WIDTH-1:0] rx_axis_tkeep;
logic                        rx_axis_tvalid;
logic                        rx_axis_tlast;
logic                        rx_axis_tuser;
logic                        rx_axis_tready;

logic [AXIS_TDATA_WIDTH-1:0] tx_axis_tdata;
logic [AXIS_TKEEP_WIDTH-1:0] tx_axis_tkeep;
logic                        tx_axis_tvalid;
logic                        tx_axis_tlast;
logic                        tx_axis_tuser;
logic                        tx_axis_tready;


logic m_axis_output_tvalid;
logic m_axis_output_tready;
logic [63:0]m_axis_output_tdata;
logic m_axis_output_tlast;

logic s_axis_output_tready;
logic s_axis_output_tvalid;
logic [63:0]s_axis_output_tdata;
logic s_axis_output_tlast;

  kcu105_10gbaser kcu105_10gbaser(
  
  .refclk_n         (refclk_n),      //input   
  .refclk_p         (refclk_p),      //input   
  .reset            (reset),          //input   
  .xphy_txp         (xphy_txp),       //input   
  .xphy_txn         (xphy_txn),       //input   
  .xphy_rxp         (xphy_rxp),       //input   
  .xphy_rxn         (xphy_rxn),       //input   
  
  .bb_rx_axis_aclk0  (clk_250m      ),
  .bb_rx_axis_tdata0 (rx_axis_tdata ),
  .bb_rx_axis_tkeep0 (rx_axis_tkeep ),
  .bb_rx_axis_tvalid0(rx_axis_tvalid),
  .bb_rx_axis_tlast0 (rx_axis_tlast ),
  .bb_rx_axis_tuser0 (rx_axis_tuser ),
  .bb_rx_axis_tready0(rx_axis_tready),
  
  .bb_back_rx_axis_aclk0  (clk_250m      ),
  .bb_back_rx_axis_tdata0 (tx_axis_tdata ),
  .bb_back_rx_axis_tkeep0 (tx_axis_tkeep ),
  .bb_back_rx_axis_tvalid0(tx_axis_tvalid),
  .bb_back_rx_axis_tlast0 (tx_axis_tlast ),
  .bb_back_rx_axis_tuser0 (tx_axis_tuser ),
  .bb_back_rx_axis_tready0(tx_axis_tready),
  
  .leds()                //output  
  
  );
  
//  (* DONT_TOUCH = "true" *) 
//  ila_interface ila_interface (
//    .clk(clk_250m),
    
//    .probe0 (bb_rx_axis_tdata0 ),
//    .probe1 (bb_rx_axis_tkeep0 ),
//    .probe2 (bb_rx_axis_tvalid0),
//    .probe3 (bb_rx_axis_tlast0 ),
//    .probe4 (bb_rx_axis_tuser0 ),
//    .probe5 (bb_rx_axis_tready0),
//    .probe6 (bb_tx_axis_tdata0 ),
//    .probe7 (bb_tx_axis_tkeep0 ),
//    .probe8 (bb_tx_axis_tvalid0),
//    .probe9 (bb_tx_axis_tlast0 ),
//    .probe10(bb_tx_axis_tuser0 ),
//    .probe11(bb_tx_axis_tready0),
//    .probe12(bb_rx_axis_tdata1  ),
//    .probe13(bb_rx_axis_tkeep1  ),
//    .probe14(bb_rx_axis_tvalid1 ),
//    .probe15(bb_rx_axis_tlast1  ),
//    .probe16(bb_rx_axis_tuser1  ),
//    .probe17(bb_rx_axis_tready1 ),
//    .probe18(bb_tx_axis_tdata1  ),
//    .probe19(bb_tx_axis_tkeep1  ),
//    .probe20(bb_tx_axis_tvalid1 ),
//    .probe21(bb_tx_axis_tlast1  ),
//    .probe22(bb_tx_axis_tuser1  ),
//    .probe23(bb_tx_axis_tready1 )
//    );
  
  data_transfer data_transfer (

    .aclk(clk_250m),
    .reset(reset),  
    
    .rx_axis_tdata_right (rx_axis_tdata ),
    .rx_axis_tkeep_right (rx_axis_tkeep ),
    .rx_axis_tvalid_right(rx_axis_tvalid),
    .rx_axis_tlast_right (rx_axis_tlast ),
    .rx_axis_tuser_right (rx_axis_tuser ),
    .rx_axis_tready_right(rx_axis_tready),
    
    .tx_axis_tdata_right(m_axis_output_tdata),
    .tx_axis_tkeep_right(),
    .tx_axis_tvalid_right(m_axis_output_tvalid),
    .tx_axis_tlast_right(m_axis_output_tlast),
    .tx_axis_tuser_right(),
    .tx_axis_tready_right(m_axis_output_tready),
    
    .rx_axis_tdata_left(s_axis_output_tdata),
    .rx_axis_tkeep_left(),
    .rx_axis_tvalid_left(s_axis_output_tvalid),
    .rx_axis_tlast_left(s_axis_output_tlast),
    .rx_axis_tuser_left(),
    .rx_axis_tready_left(s_axis_output_tready),
  
    .tx_axis_tdata_left (tx_axis_tdata),
    .tx_axis_tkeep_left (tx_axis_tkeep),
    .tx_axis_tvalid_left(tx_axis_tvalid),
    .tx_axis_tlast_left (tx_axis_tlast),
    .tx_axis_tuser_left (tx_axis_tuser),
    .tx_axis_tready_left(tx_axis_tready)); 

logic m_axis_outputI_tvalid[8];
logic m_axis_outputI_tready[8];
logic [15:0]m_axis_outputI_tdata[8];
logic m_axis_outputI_tlast[8];
logic m_axis_outputQ_tvalid[8];
logic m_axis_outputQ_tready[8];
logic [15:0]m_axis_outputQ_tdata[8];
logic m_axis_outputQ_tlast[8];

logic s_axis_inputI_tvalid[8];
logic s_axis_inputI_tready[8];
logic [15:0]s_axis_inputI_tdata[8];
logic s_axis_inputI_tlast[8];
logic s_axis_inputQ_tvalid[8];
logic s_axis_inputQ_tready[8];
logic [15:0]s_axis_inputQ_tdata[8];
logic s_axis_inputQ_tlast[8];
genvar i;
generate
    for (i = 0; i < 8; i = i + 1)begin:outputI_tready
    assign m_axis_outputI_tready[i]=1;
end
endgenerate     

tpu tpu(
    .clk_250m(clk_250m),
    .clk_500m(clk_500m),
    .reset(reset),
    
    .s_axis_input_tvalid(m_axis_output_tvalid),
    .s_axis_input_tready(m_axis_output_tready),
    .s_axis_input_tdata(m_axis_output_tdata),
    .s_axis_input_tlast(m_axis_output_tlast),

    .m_axis_output_tvalid(s_axis_output_tvalid),
    .m_axis_output_tready(s_axis_output_tready),
    .m_axis_output_tdata(s_axis_output_tdata),
    .m_axis_output_tlast(s_axis_output_tlast),
    
    .m_axis_outputIf_tvalid(m_axis_outputI_tvalid),
    .m_axis_outputIf_tready(m_axis_outputI_tready),
    .m_axis_outputIf_tdata(m_axis_outputI_tdata),
    .m_axis_outputIf_tlast(m_axis_outputI_tlast),
    .m_axis_outputQf_tvalid(m_axis_outputQ_tvalid),
    .m_axis_outputQf_tready(m_axis_outputQ_tready),
    .m_axis_outputQf_tdata(m_axis_outputQ_tdata),
    .m_axis_outputQf_tlast(m_axis_outputQ_tlast),
    
    .s_axis_inputI_tvalid(s_axis_inputI_tvalid),
    .s_axis_inputI_tready(s_axis_inputI_tready),
    .s_axis_inputI_tdata(s_axis_inputI_tdata),
    .s_axis_inputI_tlast(s_axis_inputI_tlast),
    .s_axis_inputQ_tvalid(s_axis_inputQ_tvalid),
    .s_axis_inputQ_tready(s_axis_inputQ_tready),
    .s_axis_inputQ_tdata(s_axis_inputQ_tdata),
    .s_axis_inputQ_tlast(s_axis_inputQ_tlast));
    
endmodule
