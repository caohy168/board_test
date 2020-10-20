`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/09 12:53:07
// Design Name: 
// Module Name: Radio
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module radio(
    input clk_250m,clk_500m,
    input reset,
    
    output logic m_axis_outputI_tvalid_8[8],
    input  m_axis_outputI_tready_8[8],
    output logic [7:0]m_axis_outputI_tdata_8[8],
    output logic m_axis_outputI_tlast_8[8],
    output logic m_axis_outputQ_tvalid_8[8],
    input  m_axis_outputQ_tready_8[8],
    output logic [7:0]m_axis_outputQ_tdata_8[8],
    output logic m_axis_outputQ_tlast_8[8],
    
    input  s_axis_inputI_tvalid_8[8],
    output logic s_axis_inputI_tready_8[8],
    input  [7:0]s_axis_inputI_tdata_8[8],
    input  s_axis_inputI_tlast_8[8],
    input  s_axis_inputQ_tvalid_8[8],
    output logic s_axis_inputQ_tready_8[8],
    input  [7:0]s_axis_inputQ_tdata_8[8],
    input  s_axis_inputQ_tlast_8[8]
    );

    logic m_axis_outputADI_tready[8];
    logic m_axis_outputADQ_tready[8];
    
    logic m_axis_outputADI_tvalid[8];
    logic m_axis_outputADQ_tvalid[8];
    logic m_axis_outputADI_tlast[8];
    logic m_axis_outputADQ_tlast[8];
    logic[15:0]m_axis_outputADI_tdata[8];
    logic[15:0]m_axis_outputADQ_tdata[8];

//ila_radio ila_radio (
//    .clk(clk_500m),
    
//    .probe0(m_axis_outputADI_tready[0]),
//    .probe1(m_axis_outputADI_tvalid[0]),
//    .probe2(m_axis_outputADI_tlast[0]),
//    .probe3(m_axis_outputADI_tdata[0]),
//    .probe4(m_axis_outputI_tvalid_8[0]),
//    .probe5(m_axis_outputI_tready_8[0]),
//    .probe6(m_axis_outputI_tdata_8[0]),
//    .probe7(m_axis_outputI_tlast_8[0])
//    );

radio_transmit radio_transmit(
    .clk_250m(clk_250m),
    .clk_500m(clk_500m),
    .reset(reset),
    
    .s_axis_inputI_tvalid(s_axis_inputI_tvalid_8),
    .s_axis_inputI_tready(s_axis_inputI_tready_8),
    .s_axis_inputI_tdata(s_axis_inputI_tdata_8),
    .s_axis_inputI_tlast(s_axis_inputI_tlast_8),
    .s_axis_inputQ_tvalid(s_axis_inputQ_tvalid_8),
    .s_axis_inputQ_tready(s_axis_inputQ_tready_8),
    .s_axis_inputQ_tdata(s_axis_inputQ_tdata_8),
    .s_axis_inputQ_tlast(s_axis_inputQ_tlast_8),
    
    .m_axis_outputI_tready(m_axis_outputADI_tready),
    .m_axis_outputQ_tready(m_axis_outputADQ_tready),
    .m_axis_outputI_tvalid(m_axis_outputADI_tvalid),
    .m_axis_outputQ_tvalid(m_axis_outputADQ_tvalid),
    .m_axis_outputI_tlast(m_axis_outputADI_tlast),
    .m_axis_outputQ_tlast(m_axis_outputADQ_tlast),
    .m_axis_outputI_tdata(m_axis_outputADI_tdata),
    .m_axis_outputQ_tdata(m_axis_outputADQ_tdata)
    );
    

radio_receive radio_receive(
    .clk_250m(clk_250m),
    .clk_500m(clk_500m),
    .reset(reset),

    .m_axis_outputI_tvalid(m_axis_outputI_tvalid_8),
    .m_axis_outputI_tready(m_axis_outputI_tready_8),
    .m_axis_outputI_tdata(m_axis_outputI_tdata_8),
    .m_axis_outputI_tlast(m_axis_outputI_tlast_8),
    .m_axis_outputQ_tvalid(m_axis_outputQ_tvalid_8),
    .m_axis_outputQ_tready(m_axis_outputQ_tready_8),
    .m_axis_outputQ_tdata(m_axis_outputQ_tdata_8),
    .m_axis_outputQ_tlast(m_axis_outputQ_tlast_8),
    
    .s_axis_inputI_tready(m_axis_outputADI_tready),
    .s_axis_inputQ_tready(m_axis_outputADQ_tready),
    .s_axis_inputI_tvalid(m_axis_outputADI_tvalid),
    .s_axis_inputQ_tvalid(m_axis_outputADQ_tvalid),
    .s_axis_inputI_tlast(m_axis_outputADI_tlast),
    .s_axis_inputQ_tlast(m_axis_outputADQ_tlast),
    .s_axis_inputI_tdata(m_axis_outputADI_tdata),
    .s_axis_inputQ_tdata(m_axis_outputADQ_tdata));
        
endmodule
