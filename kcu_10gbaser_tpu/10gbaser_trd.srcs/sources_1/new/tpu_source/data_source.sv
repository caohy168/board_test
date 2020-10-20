`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:htgd_thz
// Engineer:caohy
// 
// Create Date: 05/11/2020 01:08:20 AM
// Design Name:data source
// Module Name: data_source
// Project Name: tpu
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
module data_source(
input clk_250m,clk_500m,reset,

input s_axis_input_tvalid,
output logic s_axis_input_tready,
input [63:0]s_axis_input_tdata,
input s_axis_input_tlast,

output logic m_axis_output_tvalid,
input m_axis_output_tready,
output logic[63:0]m_axis_output_tdata,
output logic m_axis_output_tlast,

output logic m_axis_outputI_tvalid[8],
input  m_axis_outputI_tready[8],
output logic [15:0]m_axis_outputI_tdata[8],
output logic m_axis_outputI_tlast[8],
output logic m_axis_outputQ_tvalid[8],
input  m_axis_outputQ_tready[8],
output logic [15:0]m_axis_outputQ_tdata[8],
output logic m_axis_outputQ_tlast[8],

input  s_axis_inputI_tvalid[8],
output logic s_axis_inputI_tready[8],
input  [15:0]s_axis_inputI_tdata[8],
input  s_axis_inputI_tlast[8],
input  s_axis_inputQ_tvalid[8],
output logic s_axis_inputQ_tready[8],
input  [15:0]s_axis_inputQ_tdata[8],
input  s_axis_inputQ_tlast[8]);

assign m_axis_outputI_tvalid=s_axis_inputI_tvalid;
assign s_axis_inputI_tready=m_axis_outputI_tready;
assign m_axis_outputI_tdata=s_axis_inputI_tdata;
assign m_axis_outputI_tlast=s_axis_inputI_tlast;
assign m_axis_outputQ_tvalid=s_axis_inputQ_tvalid;
assign s_axis_inputQ_tready=m_axis_outputQ_tready;
assign m_axis_outputQ_tdata=s_axis_inputQ_tdata;
assign m_axis_outputQ_tlast=s_axis_inputQ_tlast;
    
assign s_axis_input_tready=1;
logic[15:00]data_source_state; 
logic[15:00]m_i,s_i; 
logic[15:00]package_interval;
always @(posedge clk_250m)begin
    if (reset) begin
      data_source_state=0;
      
      m_axis_output_tdata=0;
      m_axis_output_tvalid=0;
      m_axis_output_tlast=0;
      m_i=0;
      
      package_interval=0;
      
    end
    else begin
      case (data_source_state)
         0:begin//tpu receive ready
            if (m_axis_output_tready)
              data_source_state =1;
            else
              data_source_state =0;end
         1:begin//data source produce
            if (m_i<236)begin
                m_axis_output_tdata=m_axis_output_tdata+'h0101010101010101;
                m_axis_output_tvalid=1;
                m_axis_output_tlast=0;
                m_i=m_i+1;
                if(m_i==236)m_axis_output_tlast=1;
                data_source_state =1;
            end
            else begin
                data_source_state =2;
                
                m_axis_output_tdata=m_axis_output_tdata;
                m_axis_output_tvalid=0;
                m_i=0;
            end end
         2:begin//data source produce over
//            if(s_axis_input_tvalid)data_source_state =3;
            if(package_interval<5000)
                begin
                    package_interval++;
                    data_source_state =2;
                end
            else 
                begin
                    package_interval=0;
                    data_source_state =0;
                end end 
      endcase
      end end
    
endmodule
