`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/10 12:38:15
// Design Name: Telecommunications processing unit
// Module Name: layer1_transmit
// Project Name: BFB(base frequency band) search group
// Target Devices: xcvu9p
// Tool Versions: vivado 2019.2
// Description: 
// layer1 transnit module of the system
// Dependencies: 
// Matlab simulation
// Revision:V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
parameter layer1_transmit_lane_number = 2;//2--lane2;4--lane4;8--lane8
//`include "parameter_define.vh"
module layer1_transmit(
input clk,reset,

input s_axis_input_tvalid,
output logic s_axis_input_tready,
input [63:0]s_axis_input_tdata,
input s_axis_input_tlast,

output logic m_axis_outputI_tvalid[8],
input  m_axis_outputI_tready[8],
output logic [15:0]m_axis_outputI_tdata[8],
output logic m_axis_outputI_tlast[8],
output logic m_axis_outputQ_tvalid[8],
input  m_axis_outputQ_tready[8],
output logic [15:0]m_axis_outputQ_tdata[8],
output logic m_axis_outputQ_tlast[8],

output logic m_axis_outputI_tvalid_8[8],
input  m_axis_outputI_tready_8[8],
output logic [7:0]m_axis_outputI_tdata_8[8],
output logic m_axis_outputI_tlast_8[8],
output logic m_axis_outputQ_tvalid_8[8],
input  m_axis_outputQ_tready_8[8],
output logic [7:0]m_axis_outputQ_tdata_8[8],
output logic m_axis_outputQ_tlast_8[8]
);

logic mac_block_data_tvalid[8];
logic[7:0]mac_block_data[8];
logic mac_block_data_tlast[8];
logic crc_generator_tready[8];
mac_block mac_block(
.clk(clk),
.reset(reset),

.s_axis_input_tvalid(s_axis_input_tvalid),
.s_axis_input_tready(s_axis_input_tready),
.s_axis_input_tdata(s_axis_input_tdata),
.s_axis_input_tlast(s_axis_input_tlast),

.m_axis_output_tvalid(mac_block_data_tvalid),
.m_axis_output_tready(crc_generator_tready),
.m_axis_output_tdata(mac_block_data),
.m_axis_output_tlast(mac_block_data_tlast)
    );
    
logic [7:0]crc_gen_data[8];
logic crc_gen_data_tvalid[8];
logic crc_gen_data_tlast[8];
logic rs_enc_tready[8];
logic [7:0]rs_enc_data[8];
logic rs_enc_data_tvalid[8];
logic rs_enc_data_tlast[8];
logic interleaver_tready[8];
logic [7:0]interleaver_data[8];
logic interleaver_data_tvalid[8];
logic interleaver_data_tlast[8];
logic scrambler_tready[8];
logic [7:0]scrambler_data[8];
logic scrambler_tvalid[8];
logic scrambler_tlast[8]; 
logic qam_tready[8];
//ila_layer1_transfer ila_layer1_transfer (
//    .clk(clk),
    
//    .probe0 (crc_gen_data[0]      ),
//    .probe1 (crc_gen_data_tvalid[0]    ),
//    .probe2 (crc_gen_data_tlast[0]     ),
//    .probe3 (rs_enc_tready[0]          ),
//    .probe4 (rs_enc_data[0]       ),
//    .probe5 (rs_enc_data_tvalid[0]     ),
//    .probe6 (rs_enc_data_tlast[0]      ),
//    .probe7 (interleaver_tready[0]     ),
//    .probe8 (interleaver_data[0]  ),
//    .probe9 (interleaver_data_tvalid[0]),
//    .probe10(interleaver_data_tlast[0] ),
//    .probe11(scrambler_tready[0]       ),
//    .probe12(scrambler_data[0]    ),
//    .probe13(scrambler_tvalid[0]       ),
//    .probe14(scrambler_tlast[0]        ),
//    .probe15(qam_tready[0]             ));

genvar i;
generate
    for (i = 0; i < layer1_transmit_lane_number; i = i + 1)begin:layer1_transmit_lane
        crc_generator crc_generator(
        .clk(clk),
        .reset(reset),
        
        .s_axis_input_tvalid(mac_block_data_tvalid[i]),
        .s_axis_input_tready(crc_generator_tready[i]),
        .s_axis_input_tdata(mac_block_data[i]),
        .s_axis_input_tlast(mac_block_data_tlast[i]),
        
        .m_axis_output_tvalid(crc_gen_data_tvalid[i]),
        .m_axis_output_tready(rs_enc_tready[i]),
        .m_axis_output_tdata(crc_gen_data[i]),
        .m_axis_output_tlast(crc_gen_data_tlast[i]));
        
        rs_encoder rs_encoder(
              .aclk(clk),
              .aresetn(!reset),
              .s_axis_input_tdata(crc_gen_data[i]),
              .s_axis_input_tvalid(crc_gen_data_tvalid[i]),
              .s_axis_input_tready(rs_enc_tready[i]),
              .s_axis_input_tlast(crc_gen_data_tlast[i]),
              
              .m_axis_output_tdata(rs_enc_data[i]),
              .m_axis_output_tvalid(rs_enc_data_tvalid[i]),
              .m_axis_output_tready(interleaver_tready[i]),
              .m_axis_output_tlast(rs_enc_data_tlast[i])
            );
        
        interleaver interleaver(
            .clk(clk),
            .reset(reset),
        
            .s_axis_input_tvalid(rs_enc_data_tvalid[i]),
            .s_axis_input_tready(interleaver_tready[i]),
            .s_axis_input_tdata(rs_enc_data[i]),
            .s_axis_input_tlast(rs_enc_data_tlast[i]),
        
            .m_axis_output_tvalid(interleaver_data_tvalid[i]),
            .m_axis_output_tready(scrambler_tready[i]),
            .m_axis_output_tdata(interleaver_data[i]),
            .m_axis_output_tlast(interleaver_data_tlast[i])
            );
        
        scrambler scrambler(
            .clk(clk),
            .reset(reset),
            
            .s_axis_input_tvalid(interleaver_data_tvalid[i]),
            .s_axis_input_tready(scrambler_tready[i]),
            .s_axis_input_tdata(interleaver_data[i]),
            .s_axis_input_tlast(interleaver_data_tlast[i]),
            
            .m_axis_output_tvalid(scrambler_tvalid[i]),
            .m_axis_output_tready(qam_tready[i]),
            .m_axis_output_tdata(scrambler_data[i]),
            .m_axis_output_tlast(scrambler_tlast[i]));  
            
        qam qam(
            .clk(clk),
            .reset(reset),
            
            .s_axis_input_tvalid(scrambler_tvalid[i]),
            .s_axis_input_tready(qam_tready[i]),
            .s_axis_input_tdata(scrambler_data[i]),
            .s_axis_input_tlast(scrambler_tlast[i]),
            
            .m_axis_outputI_tvalid(m_axis_outputI_tvalid[i]),
            .m_axis_outputI_tready(m_axis_outputI_tready[i]),
            .m_axis_outputI_tdata(m_axis_outputI_tdata[i]),
            .m_axis_outputI_tlast(m_axis_outputI_tlast[i]),
            .m_axis_outputQ_tvalid(m_axis_outputQ_tvalid[i]),
            .m_axis_outputQ_tready(m_axis_outputQ_tready[i]),
            .m_axis_outputQ_tdata(m_axis_outputQ_tdata[i]),
            .m_axis_outputQ_tlast(m_axis_outputQ_tlast[i]),
            
            .m_axis_outputI_tvalid_8(m_axis_outputI_tvalid_8[i]),
            .m_axis_outputI_tready_8(m_axis_outputI_tready_8[i]),
            .m_axis_outputI_tdata_8(m_axis_outputI_tdata_8[i]),
            .m_axis_outputI_tlast_8(m_axis_outputI_tlast_8[i]),
            .m_axis_outputQ_tvalid_8(m_axis_outputQ_tvalid_8[i]),
            .m_axis_outputQ_tready_8(m_axis_outputQ_tready_8[i]),
            .m_axis_outputQ_tdata_8(m_axis_outputQ_tdata_8[i]),
            .m_axis_outputQ_tlast_8(m_axis_outputQ_tlast_8[i])
            );
end
endgenerate      
//logic [15:0]rs_enc_cnt;
//always@(posedge clk)
//    begin
//        if(rs_enc_data_tvalid)rs_enc_cnt<=rs_enc_cnt+1;
//        else rs_enc_cnt<=0;
//    end 

//logic [7:0]rs_dec_data;
//assign rs_dec_data=(rs_enc_cnt==235)?55:rs_enc_data;
//logic rs_dec_data_tvalid;
//assign rs_dec_data_tvalid=rs_enc_data_tvalid;
//logic rs_dec_data_tlast;
//assign rs_dec_data_tlast=rs_enc_data_tlast;

//rs_decoder rs_decoder(
//    .aclk(clk),
//    .aresetn(!reset),
//    .s_axis_input_tdata(rs_dec_data),
//    .s_axis_input_tvalid(rs_dec_data_tvalid),
//    .s_axis_input_tlast(rs_dec_data_tlast),
//    .s_axis_input_tready(),
//    .m_axis_output_tdata(),
//    .m_axis_output_tvalid(),
//    .m_axis_output_tready(1),
//    .m_axis_output_tlast());
          
endmodule
