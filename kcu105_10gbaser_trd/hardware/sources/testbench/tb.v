//-----------------------------------------------------------------------------
//
// (c) Copyright 2014-2015 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
//
// This disclaimer is not a license and does not grant any rights to the
// materials distributed herewith. Except as otherwise provided in a valid
// license issued to you by Xilinx, and to the maximum extent permitted by
// applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
// FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
// IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
// MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
// and (2) Xilinx shall not be liable (whether in contract or tort, including
// negligence, or under any other theory of liability) for any loss or damage
// of any kind or nature related to, arising under or in connection with these
// materials, including for any direct, or any indirect, special, incidental,
// or consequential loss or damage (including loss of data, profits, goodwill,
// or any type of loss or damage suffered as a result of any action brought by
// a third party) even if such damage or loss was reasonably foreseeable or
// Xilinx had been advised of the possibility of the same.
//
// CRITICAL APPLICATIONS
//
// Xilinx products are not designed or intended to be fail-safe, or for use in
// any application requiring fail-safe performance, such as life-support or
// safety devices or systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any other
// applications that could lead to death, personal injury, or severe property
// or environmental damage (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and liability of any use of
// Xilinx products in Critical Applications, subject only to applicable laws
// and regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
// AT ALL TIMES.
//


`timescale 1 ps / 1 ps

module tb;

reg       reset;
reg       sys_clk;
reg       clk_156;

wire      clk_156_p;
wire      clk_156_n;

wire      sys_clk_p;
wire      sys_clk_n;

wire [1:0]   xphy_txp;
wire [1:0]   xphy_txn;
wire [1:0]   xphy_rxp;
wire [1:0]   xphy_rxn;

integer   i = 0;
integer   j = 0;
integer   k = 0;

reg [31:0] tb_tg_config_ch0 = 0;
reg  [3:0] frame_count_tx_ch0 = 0;
reg  [3:0] frame_count_rx_ch0 = 0;
reg [14:0] frame_length_tx_ch0 = 0;
reg [14:0] frame_length_rx_ch0 = 0;
reg err_tx_ch0 = 0;
reg err_rx_ch0 = 0;

reg [31:0] tb_tg_config_ch1 = 0;
reg [31:0] frame_count_tx_ch1 = 0;
reg [31:0] frame_count_rx_ch1 = 0;
reg [14:0] frame_length_tx_ch1 = 0;
reg [14:0] frame_length_rx_ch1 = 0;
reg err_tx_ch1 = 0;
reg err_rx_ch1 = 0;

reg speed_up = 0;

  kcu105_10gbaser_top top_i(
  
  .refclk_n         (clk_156_n),      //input   
  .refclk_p         (clk_156_p),      //input   
  .reset            (reset),          //input   
  .xphy_txp         (xphy_txp),       //input   
  .xphy_txn         (xphy_txn),       //input   
  .xphy_rxp         (xphy_rxp),       //input   
  .xphy_rxn         (xphy_rxn),       //input   
  .UART_rxd         (1'b0),           //input 
  .UART_txd         (),               //output  
  .leds             ()                //output  
  
  );

assign xphy_rxp[0] = xphy_txp[1];
assign xphy_rxn[0] = xphy_txn[1];
assign xphy_rxp[1] = xphy_txp[0];
assign xphy_rxn[1] = xphy_txn[0];

 initial 
 begin
   clk_156 = 1'b0;
   forever #(6400/2) clk_156 = ~clk_156;
 end

assign clk_156_p = clk_156;
assign clk_156_n = ~clk_156;
  
 initial 
 begin
   sys_clk = 1'b0;
   forever #(5000) sys_clk = ~sys_clk;
 end

assign sys_clk_p = sys_clk;
assign sys_clk_n = ~sys_clk;


initial begin
  $display("[%t] : System Reset Asserted...", $realtime);
  reset = 1'b1;

  for (i = 0; i < 500; i = i + 1) begin
    @(posedge clk_156);
  end

  reset = 1'b0;
  $display("[%t] : System Reset De-asserted...", $realtime);
 
  for (i = 0; i < 50; i = i + 1) begin
     @(posedge clk_156);
  end 
  $display("[%t] : Speed Up Asserted...", $realtime);
   speed_up = 1'b1; 
end

assign tb.top_i.sim_speedup_control_ch0 = speed_up;
assign tb.top_i.sim_speedup_control_ch1 = speed_up;
/*
initial begin
  wait(tb.top_i.xphy_status_ch0 == 8'h01);
  $display("[%t] : CH0 PHY up", $realtime);

  for (i = 0; i < 5000; i = i + 1) begin
    @(posedge clk_156);
  end
  // Continuous Frames 
  // Payload size 64: tg_config [31:15]  = 16'h0040
  // Enable generator: tg_config [1]  = 1'b1
  // Frame length = 18 (header) + 64 (payload) = 82 
  @(posedge clk_156); 
  tb_tg_config_ch0 = 32'h0040_0002;


  // Continuous Frames 
  // Payload size 125: tg_config [31:15]  = 16'h007D
  // Enable generator: tg_config [1]  = 1'b1
  // Frame length = 18 (header) + 125 (payload) = 143 
  // Continuous Frames, Length 125
  wait(frame_count_tx_ch0 == 3);
  @(posedge clk_156); 
  tb_tg_config_ch0 = 32'h007D_0002;

  // Stop transmission
  wait(frame_count_tx_ch0 == 9);
  @(posedge clk_156); 
  tb_tg_config_ch0 = 32'h007D_0000;
  
end

assign tb.top_i.tg_config_ch0 = {16'b0, tb_tg_config_ch0};*/

always @(posedge clk_156) begin 
  if (tb.top_i.tx_statistics_valid_ch0 == 1'b1) begin
      frame_count_tx_ch0 = frame_count_tx_ch0 + 1; 
      frame_length_tx_ch0 =  tb.top_i.tx_statistics_vector_ch0[19:5];
      if (tb.top_i.tx_statistics_vector_ch0[0] == 1'b1)
        $display("[%t] : TX Frame CH0:%d  Frame Length: %d", $realtime, frame_count_tx_ch0, frame_length_tx_ch0);
      if (tb.top_i.tx_statistics_vector_ch0[0] == 1'b0) begin
        $display("[%t] : TX Frame CH0:%d with errors", $realtime, frame_count_tx_ch0);     
        err_tx_ch0 = 1'b1;
      end  
  end

  if (err_tx_ch0 == 1'b1) begin
    $display("[%t] : Simulation FAILED - TX CH0", $realtime);
    $finish(2);
  end   

end 

always @(posedge clk_156) begin 
  if (tb.top_i.rx_statistics_valid_ch0 == 1'b1) begin
      frame_count_rx_ch0 = frame_count_rx_ch0 + 1; 
      frame_length_rx_ch0 =  tb.top_i.rx_statistics_vector_ch0[19:5];
      if (tb.top_i.rx_statistics_vector_ch0[0] == 1'b1)
        $display("[%t] : RX Frame CH0:%d  Frame Length: %d" , $realtime, frame_count_rx_ch0, frame_length_rx_ch0);
      if (tb.top_i.rx_statistics_vector_ch0[0] == 1'b0) begin
        $display("[%t] : RX Frame CH0:%d with errors", $realtime, frame_count_rx_ch0);
        err_rx_ch0 = 1'b1;
      end  
  end
  
  if (err_rx_ch0 == 1'b1) begin
    $display("[%t] : Simulation FAILED - RX CH0", $realtime);
    $finish(2);
  end   
end 

/*
initial begin
  wait(tb.top_i.xphy_status_ch1 == 8'h01);
  $display("[%t] : CH1 PHY up", $realtime);

  for (i = 0; i < 5000; i = i + 1) begin
    @(posedge clk_156);
  end
  // Continuous Frames 
  // Payload size 60: tg_config [31:15]  = 16'h003C
  // Enable generator: tg_config [1]  = 1'b1
  // Frame length = 18 (header) + 60 (payload) = 78 
  @(posedge clk_156); 
  tb_tg_config_ch1 = 32'h003C_0002;


  // Continuous Frames 
  // Payload size 128: tg_config [31:15]  = 16'h0080
  // Enable generator: tg_config [1]  = 1'b1
  // Frame length = 18 (header) + 128 (payload) = 146 
  wait(frame_count_tx_ch1 == 3);
  @(posedge clk_156); 
  tb_tg_config_ch1 = 32'h0080_0002;

  // Stop transmission
  wait(frame_count_tx_ch1 == 9);
  @(posedge clk_156); 
  tb_tg_config_ch1 = 32'h0080_0000;
                                    
end

assign tb.top_i.tg_config_ch1 = {16'b0, tb_tg_config_ch1};*/

always @(posedge clk_156) begin 
  if (tb.top_i.tx_statistics_valid_ch1 == 1'b1) begin
      frame_count_tx_ch1 = frame_count_tx_ch1 + 1; 
      frame_length_tx_ch1 =  tb.top_i.tx_statistics_vector_ch1[19:5];
      if (tb.top_i.tx_statistics_vector_ch1[0] == 1'b1)
        $display("[%t] : TX Frame CH1:%d  Frame Length: %d", $realtime, frame_count_tx_ch1, frame_length_tx_ch1);
      if (tb.top_i.tx_statistics_vector_ch1[0] == 1'b0) begin
        $display("[%t] : TX Frame CH1:%d with errors", $realtime, frame_count_tx_ch1);     
        err_tx_ch1 = 1'b1;
      end  
  end

  if (err_tx_ch1 == 1'b1) begin
    $display("[%t] : Simulation FAILED - TX CH1", $realtime);
    $finish(2);
  end   

end 

always @(posedge clk_156) begin 
  if (tb.top_i.rx_statistics_valid_ch1 == 1'b1) begin
      frame_count_rx_ch1 = frame_count_rx_ch1 + 1; 
      frame_length_rx_ch1 =  tb.top_i.rx_statistics_vector_ch1[19:5];
      if (tb.top_i.rx_statistics_vector_ch1[0] == 1'b1)
        $display("[%t] : RX Frame CH1:%d  Frame Length: %d" , $realtime, frame_count_rx_ch1, frame_length_rx_ch1);
      if (tb.top_i.rx_statistics_vector_ch1[0] == 1'b0) begin
        $display("[%t] : RX Frame CH1:%d with errors", $realtime, frame_count_rx_ch1);
        err_rx_ch1 = 1'b1;
      end  
  end
  
  if (err_rx_ch1 == 1'b1) begin
    $display("[%t] : Simulation FAILED - RX CH1", $realtime);
    $finish(2);
  end   

end 


always @(posedge clk_156) begin 
  if (frame_count_rx_ch0 == 10 && frame_count_rx_ch1 == 10) begin
    $display("[%t] : Simulation PASSED", $realtime);
    $finish(2);
  end   


end 


endmodule 
    
    