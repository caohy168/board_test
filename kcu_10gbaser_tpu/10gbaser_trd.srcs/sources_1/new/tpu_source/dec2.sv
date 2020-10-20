`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2020 11:59:49 PM
// Design Name: 
// Module Name: dec2
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

module dec2(
    input aclk,aclk1,reset,
    input s_axis_data_tvalid,
    input s_axis_data_tlast,
    output logic s_axis_data_tready,
    input [7:0]s_axis_data_tdata,
    input m_axis_data_tready,
    output logic m_axis_data_tvalid,
    output logic m_axis_data_tlast,
    output logic [7:0]m_axis_data_tdata);
    
assign s_axis_data_tready=1;
logic[15:00]tlast_counter=0;
always @(posedge aclk)begin
if(m_axis_data_tready)begin
    m_axis_data_tvalid=s_axis_data_tvalid;
    m_axis_data_tdata=s_axis_data_tdata;
    if(s_axis_data_tvalid)tlast_counter<=tlast_counter+1;
    else tlast_counter<=0;
    if(tlast_counter==339) m_axis_data_tlast<=1;
    else m_axis_data_tlast<=0;
end
end
    
endmodule
