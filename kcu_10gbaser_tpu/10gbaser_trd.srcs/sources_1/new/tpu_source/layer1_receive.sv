`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/02 12:12:23
// Design Name: 
// Module Name: layer1_receive
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// layer1 receive module of the system
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
parameter layer1_receive_lane_number = 2;//2--lane2;4--lane4;8--lane8
module layer1_receive(
input clk,reset,

output logic m_axis_output_tvalid,
input m_axis_output_tready,
output logic[63:0]m_axis_output_tdata,
output logic m_axis_output_tlast,

input  s_axis_inputI_tvalid[8],
output logic s_axis_inputI_tready[8],
input  [15:0]s_axis_inputI_tdata[8],
input  s_axis_inputI_tlast[8],
input  s_axis_inputQ_tvalid[8],
output logic s_axis_inputQ_tready[8],
input  [15:0]s_axis_inputQ_tdata[8],
input  s_axis_inputQ_tlast[8],

input  s_axis_inputI_tvalid_8[8],
output logic s_axis_inputI_tready_8[8],
input  [7:0]s_axis_inputI_tdata_8[8],
input  s_axis_inputI_tlast_8[8],
input  s_axis_inputQ_tvalid_8[8],
output logic s_axis_inputQ_tready_8[8],
input  [7:0]s_axis_inputQ_tdata_8[8],
input  s_axis_inputQ_tlast_8[8]
    );
logic [7:0]eqam_data[8];
logic eqam_data_tvalid[8];
logic eqam_data_tlast[8];
logic descrambler_tready[8];
logic [7:0]descrambler_data[8];
logic descrambler_data_tvalid[8];
logic descrambler_data_tlast[8];
logic deintrlv_tready[8];
logic [7:0]deintrlv_data[8];
logic deintrlv_data_tvalid[8];
logic deintrlv_data_tlast[8];
logic rs_decoder_tready[8];
logic [7:0]rs_decoder_data[8];
logic rs_decoder_data_tvalid[8];
logic rs_decoder_data_tlast[8];
logic crc_detector_tready[8];  
logic mac_deblock_data_tvalid[8];
logic[7:0]mac_deblock_data[8];
logic mac_deblock_data_tlast[8];
logic mac_deblock_tready[8];
logic event_s_error[8];
logic event_s_right[8];

ila_layer1_receive ila_layer1_receive(
    .clk(clk),
    
    .probe0 (eqam_data[0]               ),
    .probe1 (eqam_data_tvalid[0]        ),
    .probe2 (eqam_data_tlast[0]         ),
    .probe3 (descrambler_tready[0]      ),
    .probe4 (descrambler_data[0]        ),
    .probe5 (descrambler_data_tvalid[0] ),
    .probe6 (descrambler_data_tlast[0]  ),
    .probe7 (deintrlv_tready[0]         ),
    .probe8 (deintrlv_data[0]           ),
    .probe9 (deintrlv_data_tvalid[0]    ),
    .probe10(deintrlv_data_tlast[0]     ),
    .probe11(rs_decoder_tready[0]       ),
    .probe12(rs_decoder_data[0]         ),
    .probe13(rs_decoder_data_tvalid[0]  ),
    .probe14(rs_decoder_data_tlast[0]   ),
    .probe15(crc_detector_tready[0]     ),
    .probe16(mac_deblock_data_tvalid[0] ),
    .probe17(mac_deblock_data[0]        ),
    .probe18(mac_deblock_data_tlast[0]  ),
    .probe19(mac_deblock_tready[0]      ));

genvar i;
generate
    for (i = 0; i < layer1_receive_lane_number; i = i + 1)begin:layer1_receive_lane
eqam eqam(
    .clk(clk),
    .reset(reset),
    
    .s_axis_inputI_tvalid(s_axis_inputI_tvalid[i]),
    .s_axis_inputI_tready(s_axis_inputI_tready[i]),
    .s_axis_inputI_tdata(s_axis_inputI_tdata[i]),
    .s_axis_inputI_tlast(s_axis_inputI_tlast[i]),
    .s_axis_inputQ_tvalid(s_axis_inputQ_tvalid[i]),
    .s_axis_inputQ_tready(s_axis_inputQ_tready[i]),
    .s_axis_inputQ_tdata(s_axis_inputQ_tdata[i]),
    .s_axis_inputQ_tlast(s_axis_inputQ_tlast[i]),
    
    .s_axis_inputI_tvalid_8(s_axis_inputI_tvalid_8[i]),
    .s_axis_inputI_tready_8(s_axis_inputI_tready_8[i]),
    .s_axis_inputI_tdata_8(s_axis_inputI_tdata_8[i]),
    .s_axis_inputI_tlast_8(s_axis_inputI_tlast_8[i]),
    .s_axis_inputQ_tvalid_8(s_axis_inputQ_tvalid_8[i]),
    .s_axis_inputQ_tready_8(s_axis_inputQ_tready_8[i]),
    .s_axis_inputQ_tdata_8(s_axis_inputQ_tdata_8[i]),
    .s_axis_inputQ_tlast_8(s_axis_inputQ_tlast_8[i]),
    
    .m_axis_output_tvalid(eqam_data_tvalid[i]),
    .m_axis_output_tready(descrambler_tready[i]),
    .m_axis_output_tdata(eqam_data[i]),
    .m_axis_output_tlast(eqam_data_tlast[i]));

descrambler descrambler(
    .clk(clk),
    .reset(reset),
    
    .s_axis_input_tvalid(eqam_data_tvalid[i]),
    .s_axis_input_tready(descrambler_tready[i]),
    .s_axis_input_tdata(eqam_data[i]),
    .s_axis_input_tlast(eqam_data_tlast[i]),
    
    .m_axis_output_tvalid(descrambler_data_tvalid[i]),
    .m_axis_output_tready(deintrlv_tready[i]),
    .m_axis_output_tdata(descrambler_data[i]),
    .m_axis_output_tlast(descrambler_data_tlast[i]));

deintrlv deintrlv(
    .clk(clk),
    .reset(reset),
    
    .s_axis_input_tvalid(descrambler_data_tvalid[i]),
    .s_axis_input_tready(deintrlv_tready[i]),
    .s_axis_input_tdata(descrambler_data[i]),
    .s_axis_input_tlast(descrambler_data_tlast[i]),
    
    .m_axis_output_tvalid(deintrlv_data_tvalid[i]),
    .m_axis_output_tready(rs_decoder_tready[i]),
    .m_axis_output_tdata(deintrlv_data[i]),
    .m_axis_output_tlast(deintrlv_data_tlast[i]));
  
 rs_decoder rs_decoder(
    .aclk(clk),
    .aresetn(!reset),
    .s_axis_input_tdata(deintrlv_data[i]),
    .s_axis_input_tvalid(deintrlv_data_tvalid[i]),
    .s_axis_input_tlast(deintrlv_data_tlast[i]),
    .s_axis_input_tready(rs_decoder_tready[i]),
    .m_axis_output_tdata(rs_decoder_data[i]),
    .m_axis_output_tvalid(rs_decoder_data_tvalid[i]),
    .m_axis_output_tready(crc_detector_tready[i]),
    .m_axis_output_tlast(rs_decoder_data_tlast[i]),
    .m_axis_stat_tready(1));
    
 crc_detector crc_detector(
    .clk(clk),
    .reset(reset),
    
    .s_axis_input_tvalid(rs_decoder_data_tvalid[i]),
    .s_axis_input_tready(crc_detector_tready[i]),
    .s_axis_input_tdata(rs_decoder_data[i]),
    .s_axis_input_tlast(rs_decoder_data_tlast[i]),
    
    .m_axis_output_tvalid(mac_deblock_data_tvalid[i]),
    .m_axis_output_tready(mac_deblock_tready[i]),
    .m_axis_output_tdata(mac_deblock_data[i]),
    .m_axis_output_tlast(mac_deblock_data_tlast[i]),
    
    .event_s_error(event_s_error[i]),
    .event_s_right(event_s_right[i]));
end
endgenerate   

mac_deblock mac_deblock(
.clk(clk),
.reset(reset),

.s_axis_input_tvalid(mac_deblock_data_tvalid),
.s_axis_input_tready(mac_deblock_tready),
.s_axis_input_tdata(mac_deblock_data),
.s_axis_input_tlast(mac_deblock_data_tlast),

.m_axis_output_tvalid(m_axis_output_tvalid),
.m_axis_output_tready(m_axis_output_tready),
.m_axis_output_tdata(m_axis_output_tdata),
.m_axis_output_tlast(m_axis_output_tlast),
.event_s_error(event_s_error),
.event_s_right(event_s_right));
  
endmodule
