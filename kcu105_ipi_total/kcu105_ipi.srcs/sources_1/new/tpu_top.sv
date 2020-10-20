`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd
// Engineer: caohy
// 
// Create Date: 2019/11/28 11:00:52
// Design Name: 
// Module Name: TPU_TOP
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


module tpu_top(
    CLK_125MHZ_N,
    CLK_125MHZ_P,
    EMCCLK,
    FMC_HPC_CLK0_N,
    FMC_HPC_CLK0_P,
    FMC_HPC_CLK1_N,
    FMC_HPC_CLK1_P,
    FMC_HPC_GBTCLK0_N,
    FMC_HPC_GBTCLK0_P,
    FMC_HPC_GBTCLK1_N,
    FMC_HPC_GBTCLK1_P,
    FMC_LPC_CLK0_N,
    FMC_LPC_CLK0_P,
    FMC_LPC_CLK1_N,
    FMC_LPC_CLK1_P,
    FMC_LPC_GBTCLK0_N,
    FMC_LPC_GBTCLK0_P,
    GPIO_DIFF_IN_HPC_LA_N,
    GPIO_DIFF_IN_HPC_LA_P,
    GPIO_DIFF_IN_LPC_LA_N,
    GPIO_DIFF_IN_LPC_LA_P,
    GPIO_DIFF_OUT_HPC_LA_N,
    GPIO_DIFF_OUT_HPC_LA_P,
    GPIO_DIFF_OUT_LPC_LA_N,
    GPIO_DIFF_OUT_LPC_LA_P,
    MGT_SI570_CLOCK_N,
    MGT_SI570_CLOCK_P,
    REC_CLOCK_N,
    REC_CLOCK_P,
    SI5328_OUT_N,
    SI5328_OUT_P,
    SMA_MGT_REFCLK_N,
    SMA_MGT_REFCLK_P,
    USER_SI570_CLOCK_N,
    USER_SI570_CLOCK_P,
    USER_SMA_CLOCK_N,
    USER_SMA_CLOCK_P,
    Vaux0_v_n,
    Vaux0_v_p,
    Vaux2_v_n,
    Vaux2_v_p,
    Vaux8_v_n,
    Vaux8_v_p,
    Vp_Vn_v_n,
    Vp_Vn_v_p,
    ddr4_sdram_act_n,
    ddr4_sdram_adr,
    ddr4_sdram_ba,
    ddr4_sdram_bg,
    ddr4_sdram_ck_c,
    ddr4_sdram_ck_t,
    ddr4_sdram_cke,
    ddr4_sdram_cs_n,
    ddr4_sdram_dm_n,
    ddr4_sdram_dq,
    ddr4_sdram_dqs_c,
    ddr4_sdram_dqs_t,
    ddr4_sdram_odt,
    ddr4_sdram_reset_n,
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    dip_switches_4bits_tri_i,
    i2c_sclk,
    i2c_sda,
    iic_main_scl_io,
    iic_main_sda_io,
    iic_mux_reset_b,
    led_8bits_tri_o,
    mdio_mdc_mdc,
    mdio_mdc_mdio_io,
    pci_express_x8_rxn,
    pci_express_x8_rxp,
    pci_express_x8_txn,
    pci_express_x8_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    phy_reset_out,
    pmod_in_tri_i,
    pmod_out_tri_o,
    push_buttons_5bits_tri_i,
    qspi1_io0_io,
    qspi1_io1_io,
    qspi1_io2_io,
    qspi1_io3_io,
//    qspi1_sck_io,
    qspi1_ss_io,
    reset,
//    rotary_switch_tri_i,
    rs232_uart_rxd,
    rs232_uart_txd,
    sgmii_lvds_rxn,
    sgmii_lvds_rxp,
    sgmii_lvds_txn,
    sgmii_lvds_txp,
    sgmii_phyclk_clk_n,
    sgmii_phyclk_clk_p,
    si570_clk_sel_tri_o,
    user_sma_gpio_in_tri_i,
    user_sma_gpio_out_tri_o,
    vid_clk_148_5MHz_out,
    vid_io_out_active_video,
    vid_io_out_data,
//    vid_io_out_field,
//    vid_io_out_hblank,
    vid_io_out_hsync,
//    vid_io_out_vblank,
    vid_io_out_vsync

    );
  input CLK_125MHZ_N;
  input CLK_125MHZ_P;
  input EMCCLK;
  input FMC_HPC_CLK0_N;
  input FMC_HPC_CLK0_P;
  input FMC_HPC_CLK1_N;
  input FMC_HPC_CLK1_P;
  input FMC_HPC_GBTCLK0_N;
  input FMC_HPC_GBTCLK0_P;
  input FMC_HPC_GBTCLK1_N;
  input FMC_HPC_GBTCLK1_P;
  input FMC_LPC_CLK0_N;
  input FMC_LPC_CLK0_P;
  input FMC_LPC_CLK1_N;
  input FMC_LPC_CLK1_P;
  input FMC_LPC_GBTCLK0_N;
  input FMC_LPC_GBTCLK0_P;
  input [16:0]GPIO_DIFF_IN_HPC_LA_N;
  input [16:0]GPIO_DIFF_IN_HPC_LA_P;
  input [16:0]GPIO_DIFF_IN_LPC_LA_N;
  input [16:0]GPIO_DIFF_IN_LPC_LA_P;
  output [16:0]GPIO_DIFF_OUT_HPC_LA_N;
  output [16:0]GPIO_DIFF_OUT_HPC_LA_P;
  output [16:0]GPIO_DIFF_OUT_LPC_LA_N;
  output [16:0]GPIO_DIFF_OUT_LPC_LA_P;
  input MGT_SI570_CLOCK_N;
  input MGT_SI570_CLOCK_P;
  output [0:0]REC_CLOCK_N;
  output [0:0]REC_CLOCK_P;
  input SI5328_OUT_N;
  input SI5328_OUT_P;
  input SMA_MGT_REFCLK_N;
  input SMA_MGT_REFCLK_P;
  input USER_SI570_CLOCK_N;
  input USER_SI570_CLOCK_P;
  output [0:0]USER_SMA_CLOCK_N;
  output [0:0]USER_SMA_CLOCK_P;
  input Vaux0_v_n;
  input Vaux0_v_p;
  input Vaux2_v_n;
  input Vaux2_v_p;
  input Vaux8_v_n;
  input Vaux8_v_p;
  input Vp_Vn_v_n;
  input Vp_Vn_v_p;
  output ddr4_sdram_act_n;
  output [16:0]ddr4_sdram_adr;
  output [1:0]ddr4_sdram_ba;
  output ddr4_sdram_bg;
  output ddr4_sdram_ck_c;
  output ddr4_sdram_ck_t;
  output ddr4_sdram_cke;
  output ddr4_sdram_cs_n;
  inout [7:0]ddr4_sdram_dm_n;
  inout [63:0]ddr4_sdram_dq;
  inout [7:0]ddr4_sdram_dqs_c;
  inout [7:0]ddr4_sdram_dqs_t;
  output ddr4_sdram_odt;
  output ddr4_sdram_reset_n;
  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;
  input [3:0]dip_switches_4bits_tri_i;
  inout i2c_sclk;
  inout i2c_sda;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  output [1:0]iic_mux_reset_b;
  output [7:0]led_8bits_tri_o;
  output mdio_mdc_mdc;
  inout mdio_mdc_mdio_io;
  input [7:0]pci_express_x8_rxn;
  input [7:0]pci_express_x8_rxp;
  output [7:0]pci_express_x8_txn;
  output [7:0]pci_express_x8_txp;
  input pcie_perstn;
  input pcie_refclk_clk_n;
  input pcie_refclk_clk_p;
  output phy_reset_out;
  input [7:0]pmod_in_tri_i;
  output [7:0]pmod_out_tri_o;
  input [4:0]push_buttons_5bits_tri_i;
  inout qspi1_io0_io;
  inout qspi1_io1_io;
  inout qspi1_io2_io;
  inout qspi1_io3_io;
//  inout qspi1_sck_io;
  inout [0:0]qspi1_ss_io;
  input reset;
//  input [2:0]rotary_switch_tri_i;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input sgmii_lvds_rxn;
  input sgmii_lvds_rxp;
  output sgmii_lvds_txn;
  output sgmii_lvds_txp;
  input sgmii_phyclk_clk_n;
  input sgmii_phyclk_clk_p;
  output [0:0]si570_clk_sel_tri_o;
  input [0:0]user_sma_gpio_in_tri_i;
  output [0:0]user_sma_gpio_out_tri_o;
  output vid_clk_148_5MHz_out;
  output vid_io_out_active_video;
  output [15:0]vid_io_out_data;
//  output vid_io_out_field;
//  output vid_io_out_hblank;
  output vid_io_out_hsync;
//  output vid_io_out_vblank;
  output vid_io_out_vsync;
  
    wire s_axi_aclk;
  
    wire [31:0]BRAM_PORTB_0_addr;
    wire BRAM_PORTB_0_clk;
    wire [31:0]BRAM_PORTB_0_din;
    wire  [31:0]BRAM_PORTB_0_dout;
    wire BRAM_PORTB_0_en;
    wire BRAM_PORTB_0_rst;
    wire [3:0]BRAM_PORTB_0_we;     
system_wrapper system_wrapper(
.*
);

tpu_interact_system tpu_interact_system(
.*
);
endmodule
