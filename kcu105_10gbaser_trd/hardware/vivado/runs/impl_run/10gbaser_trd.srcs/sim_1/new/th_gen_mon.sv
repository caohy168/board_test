`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/21 09:04:44
// Design Name: 
// Module Name: th_gen_mon
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


module th_gen_mon(

    );
parameter        AXIS_TDATA_WIDTH    =  64;
parameter [47:0] XIL_MAC_ID_THIS     =  48'h111100000000; // 00:00:00:00:11:11
parameter [47:0] XIL_MAC_ID_OTHER    =  48'h222200000000; // 00:00:00:00:22:22
parameter [47:0] EXT_MAC_ID          =  48'h333300000000; // 00:00:00:00:33:33
parameter        S_AXI_ADDR_WIDTH    =  32;
parameter        S_AXI_DATA_WIDTH    =  32;
parameter [15:0] S_AXI_MIN_SIZE      =  16'hFFFF;
parameter [31:0] S_AXI_BASE_ADDRESS  =  32'h44A0_0000;
// Design information
// 0105 - Targeting KCU105 board
// 141  - Viavdo 2014.1 
// 1    - Ethernet Reference Design 1
parameter [31:0] DESIGN_VERSION      =  32'h0105_1431;
// one second timer in terms of 156.25 MHz clock
parameter ONE_SEC_CLOCK_COUNT =  32'h9502F90;
integer   i = 0;
integer   j = 0;
integer   k = 0;
        // Slave AXI-Lite Interface for register
        // reads and writes
        wire[S_AXI_ADDR_WIDTH-1:0]     s_axi_awaddr ;
        wire                           s_axi_awvalid;
        wire                           s_axi_awready;
        wire[S_AXI_DATA_WIDTH-1:0]     s_axi_wdata  ;
        wire[(S_AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb  ;
        wire                           s_axi_wvalid ;
        wire                           s_axi_wready ;
        wire[1:0]                      s_axi_bresp  ;
        wire                           s_axi_bvalid ;
        wire                           s_axi_bready ;
        wire[S_AXI_ADDR_WIDTH-1:0]     s_axi_araddr ;
        wire                           s_axi_arvalid;
        wire                           s_axi_arready;
        wire[S_AXI_DATA_WIDTH-1:0]     s_axi_rdata  ;
        wire[1:0]                      s_axi_rresp  ;
        wire                           s_axi_rvalid ;
        wire                           s_axi_rready ;
        
        wire[AXIS_TDATA_WIDTH-1:0]      rx_axis_tdata   ;
        wire[(AXIS_TDATA_WIDTH/8)-1:0]  rx_axis_tkeep   ;
        wire                            rx_axis_tvalid  ;
        wire                            rx_axis_tlast   ;
        wire                            rx_axis_tuser   ;
        wire                            rx_axis_tready  ;
        
        wire                             s_axi_clk      ;
        wire                             axis_reset_n   ;
        wire  [47:0]                     tg_config      ;
        wire                             s_axi_areset_n ;
        //Other status signals
        wire                             axis_clk   ;  
        wire  [7:0]                      phy_status ;    
        // AXI Stream Interface
        // Connects to the Ethernet MAC
        wire [AXIS_TDATA_WIDTH-1:0]     tx_axis_tdata   ;
        wire [(AXIS_TDATA_WIDTH/8)-1:0] tx_axis_tkeep   ;
        wire                            tx_axis_tvalid  ;
        wire                            tx_axis_tlast   ;
        wire                            tx_axis_tuser   ;
        wire                            tx_axis_tready  = 1;
            
logic clk_156;
    initial 
    begin
      clk_156 = 1'b0;
      forever #(6400/2) clk_156 = ~clk_156;
    end 
logic reset;
initial begin
      $display("[%t] : System Reset Asserted...", $realtime);
      reset = 1'b1;
    
      for (i = 0; i < 500; i = i + 1) begin
        @(posedge clk_156);
      end
    
      reset = 1'b0;
      $display("[%t] : System Reset De-asserted...", $realtime);
    end    
  axi_stream_gen_mon axi_stream_gen_mon(
        .s_axi_awaddr   (s_axi_awaddr ),
        .s_axi_awvalid  (s_axi_awvalid),
        .s_axi_awready  (s_axi_awready),
        .s_axi_wdata    (s_axi_wdata  ),
        .s_axi_wstrb    (s_axi_wstrb  ),
        .s_axi_wvalid   (s_axi_wvalid ),
        .s_axi_wready   (s_axi_wready ),
        .s_axi_bresp    (s_axi_bresp  ),
        .s_axi_bvalid   (s_axi_bvalid ),
        .s_axi_bready   (s_axi_bready ),
        .s_axi_araddr   (s_axi_araddr ),
        .s_axi_arvalid  (s_axi_arvalid),
        .s_axi_arready  (s_axi_arready),
        .s_axi_rdata    (s_axi_rdata  ),
        .s_axi_rresp    (s_axi_rresp  ),
        .s_axi_rvalid   (s_axi_rvalid ),
        .s_axi_rready   (s_axi_rready ),
       
        .rx_axis_tdata  (rx_axis_tdata ),
        .rx_axis_tkeep  (rx_axis_tkeep ),
        .rx_axis_tvalid (rx_axis_tvalid),
        .rx_axis_tlast  (rx_axis_tlast ),
        .rx_axis_tuser  (rx_axis_tuser ),
        .rx_axis_tready (rx_axis_tready),
       
        .s_axi_clk      (clk_156),
        .axis_reset_n   (!reset),
        .tg_config      (32'h0040_0002),
        .s_axi_areset_n (!reset),
        
        .axis_clk       (clk_156),  
        .phy_status     (8'h01),    
        
        
        .tx_axis_tdata  (tx_axis_tdata ),
        .tx_axis_tkeep  (tx_axis_tkeep ),
        .tx_axis_tvalid (tx_axis_tvalid),
        .tx_axis_tlast  (tx_axis_tlast ),
        .tx_axis_tuser  (tx_axis_tuser ),
        .tx_axis_tready (tx_axis_tready));   
        
 


endmodule
