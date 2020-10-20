`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 05/19/2020 10:08:06 PM
// Design Name: Telecommunications processing unit
// Module Name: tpu_top
// Project Name: BFB(base frequency band) research group
// Target Devices: xcvu9p
// Tool Versions: vivado 2019.2
// Description:tpu+data_source 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tpu_top(
input clk_250m,clk_500m,reset
    );
    
logic m_axis_output_tvalid;
logic m_axis_output_tready;
logic [63:0]m_axis_output_tdata;
logic m_axis_output_tlast;

logic s_axis_output_tvalid;
logic s_axis_output_tready;
logic [63:0]s_axis_output_tdata;
logic s_axis_output_tlast;
    
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
    
data_source data_source(
    .clk_250m(clk_250m),
    .clk_500m(clk_500m),
    .reset(reset),

    .s_axis_input_tvalid(s_axis_output_tvalid),
    .s_axis_input_tready(s_axis_output_tready),
    .s_axis_input_tdata(s_axis_output_tdata),
    .s_axis_input_tlast(s_axis_output_tlast),

    .m_axis_output_tvalid(m_axis_output_tvalid),
    .m_axis_output_tready(m_axis_output_tready),
    .m_axis_output_tdata(m_axis_output_tdata),
    .m_axis_output_tlast(m_axis_output_tlast),
    
    .m_axis_outputI_tvalid(s_axis_inputI_tvalid),
    .m_axis_outputI_tready(s_axis_inputI_tready),
    .m_axis_outputI_tdata(s_axis_inputI_tdata),
    .m_axis_outputI_tlast(s_axis_inputI_tlast),
    .m_axis_outputQ_tvalid(s_axis_inputQ_tvalid),
    .m_axis_outputQ_tready(s_axis_inputQ_tready),
    .m_axis_outputQ_tdata(s_axis_inputQ_tdata),
    .m_axis_outputQ_tlast(s_axis_inputQ_tlast),

    .s_axis_inputI_tvalid(m_axis_outputI_tvalid),
    .s_axis_inputI_tready(m_axis_outputI_tready),
    .s_axis_inputI_tdata(m_axis_outputI_tdata),
    .s_axis_inputI_tlast(m_axis_outputI_tlast),
    .s_axis_inputQ_tvalid(m_axis_outputQ_tvalid),
    .s_axis_inputQ_tready(m_axis_outputQ_tready),
    .s_axis_inputQ_tdata(m_axis_outputQ_tdata),
    .s_axis_inputQ_tlast(m_axis_outputQ_tlast));
endmodule
