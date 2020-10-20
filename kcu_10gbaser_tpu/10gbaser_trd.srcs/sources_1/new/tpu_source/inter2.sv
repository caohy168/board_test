`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:htgd_thz 
// Engineer:caohy    
// 
// Create Date: 05/17/2020 11:06:25 PM
// Design Name: Telecommunications processing unit
// Module Name: inter2
// Project Name: BFB(base frequency band) research group
// Target Devices: xcvu9p
// Tool Versions: vivado 2019.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inter2(
    input aclk,aclk1,reset,
    input s_axis_data_tvalid,
    input s_axis_data_tlast,
    output logic s_axis_data_tready,
    input [7:0]s_axis_data_tdata,
    input m_axis_data_tready,
    output logic m_axis_data_tvalid,
    output logic m_axis_data_tlast,
    output logic [7:0]m_axis_data_tdata);
    
logic tlast_flag=0;
assign s_axis_data_tready=1;
always @(posedge aclk1)begin
if(m_axis_data_tready)begin
    m_axis_data_tvalid=s_axis_data_tvalid;
    m_axis_data_tdata=s_axis_data_tdata;
    if(s_axis_data_tlast)tlast_flag<=1;
    else tlast_flag<=0; 
    if(tlast_flag) m_axis_data_tlast<=s_axis_data_tlast;
    else m_axis_data_tlast<=0;
end
end

    
endmodule
