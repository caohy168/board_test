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


`timescale 1 ps / 1 ps

module tb;

parameter AXIS_TDATA_WIDTH =  64;
parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8;
        
parameter CLK_500M_PERIOD  = 2000;
parameter CLK_125M_PERIOD  = 8000;

wire [1:0]   xphy_txp;
wire [1:0]   xphy_txn;
wire [1:0]   xphy_rxp;
wire [1:0]   xphy_rxn;

assign xphy_rxp[0] = xphy_txp[0];
assign xphy_rxn[0] = xphy_txn[0];
assign xphy_rxp[1] = xphy_txp[1];
assign xphy_rxn[1] = xphy_txn[1];

logic clk_125m,clk_250m,clk_500m;

wire      clk_156_p;
wire      clk_156_n;

wire      sys_clk_p;
wire      sys_clk_n;

reg       reset;
reg       sys_clk;
reg       clk_156;

initial
begin
    clk_250m = 1'b0;
    clk_500m = 1'b0;
    forever
    begin
        #(CLK_500M_PERIOD / 2);
        clk_500m = ~clk_500m;
        #(CLK_500M_PERIOD / 2);
        clk_500m = ~clk_500m;
        clk_250m = ~clk_250m;
    end
end

initial
begin
    clk_125m = 1'b1;
    forever
    begin
        #(CLK_125M_PERIOD / 2);
        clk_125m = ~clk_125m;
        #(CLK_125M_PERIOD / 2);
        clk_125m = ~clk_125m;
    end
end

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

integer   i = 0;
integer   j = 0;
integer   k = 0;

//reg [31:0] tb_tg_config_ch0 = 0;
//reg  [3:0] frame_count_tx_ch0 = 0;
//reg  [3:0] frame_count_rx_ch0 = 0;
//reg [14:0] frame_length_tx_ch0 = 0;
//reg [14:0] frame_length_rx_ch0 = 0;
//reg err_tx_ch0 = 0;
//reg err_rx_ch0 = 0;

//reg [31:0] tb_tg_config_ch1 = 0;
//reg [31:0] frame_count_tx_ch1 = 0;
//reg [31:0] frame_count_rx_ch1 = 0;
//reg [14:0] frame_length_tx_ch1 = 0;
//reg [14:0] frame_length_rx_ch1 = 0;
//reg err_tx_ch1 = 0;
//reg err_rx_ch1 = 0;

reg speed_up = 0;



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

assign tb.kcu10gbaser_tpu_top.kcu105_10gbaser.sim_speedup_control_ch0 = speed_up;
assign tb.kcu10gbaser_tpu_top.kcu105_10gbaser.sim_speedup_control_ch1 = speed_up;

//always @(posedge clk_156) begin 
//  if (frame_count_rx_ch0 == 10 && frame_count_rx_ch1 == 10) begin
//    $display("[%t] : Simulation PASSED", $realtime);
//    $finish(2);
//  end   
//end 

kcu10gbaser_tpu_top kcu10gbaser_tpu_top(

  .CLK_125MHZ_P(clk_125m),
  .CLK_125MHZ_N(~clk_125m),
  
  .refclk_p(clk_156_p),
  .refclk_n(clk_156_n),
  .reset(reset),
  .xphy_txp(xphy_txp),
  .xphy_txn(xphy_txn),
  .xphy_rxp(xphy_rxp),
  .xphy_rxn(xphy_rxn));
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

//always @(posedge clk_156) begin 
//  if (tb.top_i.tx_statistics_valid_ch0 == 1'b1) begin
//      frame_count_tx_ch0 = frame_count_tx_ch0 + 1; 
//      frame_length_tx_ch0 =  tb.top_i.tx_statistics_vector_ch0[19:5];
//      if (tb.top_i.tx_statistics_vector_ch0[0] == 1'b1)
//        $display("[%t] : TX Frame CH0:%d  Frame Length: %d", $realtime, frame_count_tx_ch0, frame_length_tx_ch0);
//      if (tb.top_i.tx_statistics_vector_ch0[0] == 1'b0) begin
//        $display("[%t] : TX Frame CH0:%d with errors", $realtime, frame_count_tx_ch0);     
//        err_tx_ch0 = 1'b1;
//      end  
//  end

//  if (err_tx_ch0 == 1'b1) begin
//    $display("[%t] : Simulation FAILED - TX CH0", $realtime);
//    $finish(2);
//  end   

//end 

//always @(posedge clk_156) begin 
//  if (tb.top_i.rx_statistics_valid_ch0 == 1'b1) begin
//      frame_count_rx_ch0 = frame_count_rx_ch0 + 1; 
//      frame_length_rx_ch0 =  tb.top_i.rx_statistics_vector_ch0[19:5];
//      if (tb.top_i.rx_statistics_vector_ch0[0] == 1'b1)
//        $display("[%t] : RX Frame CH0:%d  Frame Length: %d" , $realtime, frame_count_rx_ch0, frame_length_rx_ch0);
//      if (tb.top_i.rx_statistics_vector_ch0[0] == 1'b0) begin
//        $display("[%t] : RX Frame CH0:%d with errors", $realtime, frame_count_rx_ch0);
//        err_rx_ch0 = 1'b1;
//      end  
//  end
  
//  if (err_rx_ch0 == 1'b1) begin
//    $display("[%t] : Simulation FAILED - RX CH0", $realtime);
//    $finish(2);
//  end   
//end 

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

//always @(posedge clk_156) begin 
//  if (tb.top_i.tx_statistics_valid_ch1 == 1'b1) begin
//      frame_count_tx_ch1 = frame_count_tx_ch1 + 1; 
//      frame_length_tx_ch1 =  tb.top_i.tx_statistics_vector_ch1[19:5];
//      if (tb.top_i.tx_statistics_vector_ch1[0] == 1'b1)
//        $display("[%t] : TX Frame CH1:%d  Frame Length: %d", $realtime, frame_count_tx_ch1, frame_length_tx_ch1);
//      if (tb.top_i.tx_statistics_vector_ch1[0] == 1'b0) begin
//        $display("[%t] : TX Frame CH1:%d with errors", $realtime, frame_count_tx_ch1);     
//        err_tx_ch1 = 1'b1;
//      end  
//  end

//  if (err_tx_ch1 == 1'b1) begin
//    $display("[%t] : Simulation FAILED - TX CH1", $realtime);
//    $finish(2);
//  end   

//end 

//always @(posedge clk_156) begin 
//  if (tb.top_i.rx_statistics_valid_ch1 == 1'b1) begin
//      frame_count_rx_ch1 = frame_count_rx_ch1 + 1; 
//      frame_length_rx_ch1 =  tb.top_i.rx_statistics_vector_ch1[19:5];
//      if (tb.top_i.rx_statistics_vector_ch1[0] == 1'b1)
//        $display("[%t] : RX Frame CH1:%d  Frame Length: %d" , $realtime, frame_count_rx_ch1, frame_length_rx_ch1);
//      if (tb.top_i.rx_statistics_vector_ch1[0] == 1'b0) begin
//        $display("[%t] : RX Frame CH1:%d with errors", $realtime, frame_count_rx_ch1);
//        err_rx_ch1 = 1'b1;
//      end  
//  end
  
//  if (err_rx_ch1 == 1'b1) begin
//    $display("[%t] : Simulation FAILED - RX CH1", $realtime);
//    $finish(2);
//  end   

//end 





endmodule 
    
    