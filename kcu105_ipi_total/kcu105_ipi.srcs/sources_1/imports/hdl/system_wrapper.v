//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1558281 Thu May  5 11:18:30 MDT 2016
//Date        : Mon May 09 11:26:12 2016
//Host        : XCOJAMESM22 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (
   s_axi_aclk,
   
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_din,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    BRAM_PORTB_0_rst,
    BRAM_PORTB_0_we,
   
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
    vid_io_out_vsync);
    
    output s_axi_aclk;
    
    input [31:0]BRAM_PORTB_0_addr;
    input BRAM_PORTB_0_clk;
    input [31:0]BRAM_PORTB_0_din;
    output [31:0]BRAM_PORTB_0_dout;
    input BRAM_PORTB_0_en;
    input BRAM_PORTB_0_rst;
    input [3:0]BRAM_PORTB_0_we;   
    
    
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

  wire CLK_125MHZ_N;
  wire CLK_125MHZ_P;
  wire EMCCLK;
  wire FMC_HPC_CLK0_N;
  wire FMC_HPC_CLK0_P;
  wire FMC_HPC_CLK1_N;
  wire FMC_HPC_CLK1_P;
  wire FMC_HPC_GBTCLK0_N;
  wire FMC_HPC_GBTCLK0_P;
  wire FMC_HPC_GBTCLK1_N;
  wire FMC_HPC_GBTCLK1_P;
  wire FMC_LPC_CLK0_N;
  wire FMC_LPC_CLK0_P;
  wire FMC_LPC_CLK1_N;
  wire FMC_LPC_CLK1_P;
  wire FMC_LPC_GBTCLK0_N;
  wire FMC_LPC_GBTCLK0_P;
  wire [16:0]GPIO_DIFF_IN_HPC_LA_N;
  wire [16:0]GPIO_DIFF_IN_HPC_LA_P;
  wire [16:0]GPIO_DIFF_IN_LPC_LA_N;
  wire [16:0]GPIO_DIFF_IN_LPC_LA_P;
  wire [16:0]GPIO_DIFF_OUT_HPC_LA_N;
  wire [16:0]GPIO_DIFF_OUT_HPC_LA_P;
  wire [16:0]GPIO_DIFF_OUT_LPC_LA_N;
  wire [16:0]GPIO_DIFF_OUT_LPC_LA_P;
  wire MGT_SI570_CLOCK_N;
  wire MGT_SI570_CLOCK_P;
  wire [0:0]REC_CLOCK_N;
  wire [0:0]REC_CLOCK_P;
  wire SI5328_OUT_N;
  wire SI5328_OUT_P;
  wire SMA_MGT_REFCLK_N;
  wire SMA_MGT_REFCLK_P;
  wire USER_SI570_CLOCK_N;
  wire USER_SI570_CLOCK_P;
  wire [0:0]USER_SMA_CLOCK_N;
  wire [0:0]USER_SMA_CLOCK_P;
  wire Vaux0_v_n;
  wire Vaux0_v_p;
  wire Vaux2_v_n;
  wire Vaux2_v_p;
  wire Vaux8_v_n;
  wire Vaux8_v_p;
  wire Vp_Vn_v_n;
  wire Vp_Vn_v_p;
  wire ddr4_sdram_act_n;
  wire [16:0]ddr4_sdram_adr;
  wire [1:0]ddr4_sdram_ba;
  wire ddr4_sdram_bg;
  wire ddr4_sdram_ck_c;
  wire ddr4_sdram_ck_t;
  wire ddr4_sdram_cke;
  wire ddr4_sdram_cs_n;
  wire [7:0]ddr4_sdram_dm_n;
  wire [63:0]ddr4_sdram_dq;
  wire [7:0]ddr4_sdram_dqs_c;
  wire [7:0]ddr4_sdram_dqs_t;
  wire ddr4_sdram_odt;
  wire ddr4_sdram_reset_n;
  wire default_sysclk_300_clk_n;
  wire default_sysclk_300_clk_p;
  wire [3:0]dip_switches_4bits_tri_i;
  wire i2c_sclk;
  wire i2c_sda;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire [1:0]iic_mux_reset_b;
  wire [7:0]led_8bits_tri_o;
  wire mdio_mdc_mdc;
  wire mdio_mdc_mdio_i;
  wire mdio_mdc_mdio_io;
  wire mdio_mdc_mdio_o;
  wire mdio_mdc_mdio_t;
  wire [7:0]pci_express_x8_rxn;
  wire [7:0]pci_express_x8_rxp;
  wire [7:0]pci_express_x8_txn;
  wire [7:0]pci_express_x8_txp;
  wire pcie_perstn;
  wire pcie_refclk_clk_n;
  wire pcie_refclk_clk_p;
  wire phy_reset_out;
  wire [7:0]pmod_in_tri_i;
  wire [7:0]pmod_out_tri_o;
  wire [4:0]push_buttons_5bits_tri_i;
  wire qspi1_io0_i;
  wire qspi1_io0_io;
  wire qspi1_io0_o;
  wire qspi1_io0_t;
  wire qspi1_io1_i;
  wire qspi1_io1_io;
  wire qspi1_io1_o;
  wire qspi1_io1_t;
  wire qspi1_io2_i;
  wire qspi1_io2_io;
  wire qspi1_io2_o;
  wire qspi1_io2_t;
  wire qspi1_io3_i;
  wire qspi1_io3_io;
  wire qspi1_io3_o;
  wire qspi1_io3_t;
//  wire qspi1_sck_i;
//  wire qspi1_sck_io;
//  wire qspi1_sck_o;
//  wire qspi1_sck_t;
  wire [0:0]qspi1_ss_i_0;
  wire [0:0]qspi1_ss_io_0;
  wire [0:0]qspi1_ss_o_0;
  wire qspi1_ss_t;
  wire reset;
//  wire [2:0]rotary_switch_tri_i;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire sgmii_lvds_rxn;
  wire sgmii_lvds_rxp;
  wire sgmii_lvds_txn;
  wire sgmii_lvds_txp;
  wire sgmii_phyclk_clk_n;
  wire sgmii_phyclk_clk_p;
  wire [0:0]si570_clk_sel_tri_o;
  wire [0:0]user_sma_gpio_in_tri_i;
  wire [0:0]user_sma_gpio_out_tri_o;
  wire vid_clk_148_5MHz_out;
  wire vid_io_out_active_video;
  wire [15:0]vid_io_out_data;
//  wire vid_io_out_field;
//  wire vid_io_out_hblank;
  wire vid_io_out_hsync;
//  wire vid_io_out_vblank;
  wire vid_io_out_vsync;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  IOBUF mdio_mdc_mdio_iobuf
       (.I(mdio_mdc_mdio_o),
        .IO(mdio_mdc_mdio_io),
        .O(mdio_mdc_mdio_i),
        .T(mdio_mdc_mdio_t));
  IOBUF qspi1_io0_iobuf
       (.I(qspi1_io0_o),
        .IO(qspi1_io0_io),
        .O(qspi1_io0_i),
        .T(qspi1_io0_t));
  IOBUF qspi1_io1_iobuf
       (.I(qspi1_io1_o),
        .IO(qspi1_io1_io),
        .O(qspi1_io1_i),
        .T(qspi1_io1_t));
  IOBUF qspi1_io2_iobuf
       (.I(qspi1_io2_o),
        .IO(qspi1_io2_io),
        .O(qspi1_io2_i),
        .T(qspi1_io2_t));
  IOBUF qspi1_io3_iobuf
       (.I(qspi1_io3_o),
        .IO(qspi1_io3_io),
        .O(qspi1_io3_i),
        .T(qspi1_io3_t));
//  IOBUF qspi1_sck_iobuf
//       (.I(qspi1_sck_o),
//        .IO(qspi1_sck_io),
//        .O(qspi1_sck_i),
//        .T(qspi1_sck_t));
  IOBUF qspi1_ss_iobuf_0
       (.I(qspi1_ss_o_0),
        .IO(qspi1_ss_io[0]),
        .O(qspi1_ss_i_0),
        .T(qspi1_ss_t));
  system system_i
       (   
        .s_axi_aclk(s_axi_aclk),
       
        .BRAM_PORTB_0_addr  (BRAM_PORTB_0_addr),
        .BRAM_PORTB_0_clk   (BRAM_PORTB_0_clk),
        .BRAM_PORTB_0_din   (BRAM_PORTB_0_din),
        .BRAM_PORTB_0_dout  (BRAM_PORTB_0_dout),
        .BRAM_PORTB_0_en    (BRAM_PORTB_0_en),
        .BRAM_PORTB_0_rst   (BRAM_PORTB_0_rst),
        .BRAM_PORTB_0_we    (BRAM_PORTB_0_we),
       
        .CLK_125MHZ_N(CLK_125MHZ_N),
        .CLK_125MHZ_P(CLK_125MHZ_P),
        .EMCCLK(EMCCLK),
        .FMC_HPC_CLK0_N(FMC_HPC_CLK0_N),
        .FMC_HPC_CLK0_P(FMC_HPC_CLK0_P),
        .FMC_HPC_CLK1_N(FMC_HPC_CLK1_N),
        .FMC_HPC_CLK1_P(FMC_HPC_CLK1_P),
        .FMC_HPC_GBTCLK0_N(FMC_HPC_GBTCLK0_N),
        .FMC_HPC_GBTCLK0_P(FMC_HPC_GBTCLK0_P),
        .FMC_HPC_GBTCLK1_N(FMC_HPC_GBTCLK1_N),
        .FMC_HPC_GBTCLK1_P(FMC_HPC_GBTCLK1_P),
        .FMC_LPC_CLK0_N(FMC_LPC_CLK0_N),
        .FMC_LPC_CLK0_P(FMC_LPC_CLK0_P),
        .FMC_LPC_CLK1_N(FMC_LPC_CLK1_N),
        .FMC_LPC_CLK1_P(FMC_LPC_CLK1_P),
        .FMC_LPC_GBTCLK0_N(FMC_LPC_GBTCLK0_N),
        .FMC_LPC_GBTCLK0_P(FMC_LPC_GBTCLK0_P),
        .GPIO_DIFF_IN_HPC_LA_N(GPIO_DIFF_IN_HPC_LA_N),
        .GPIO_DIFF_IN_HPC_LA_P(GPIO_DIFF_IN_HPC_LA_P),
        .GPIO_DIFF_IN_LPC_LA_N(GPIO_DIFF_IN_LPC_LA_N),
        .GPIO_DIFF_IN_LPC_LA_P(GPIO_DIFF_IN_LPC_LA_P),
        .GPIO_DIFF_OUT_HPC_LA_N(GPIO_DIFF_OUT_HPC_LA_N),
        .GPIO_DIFF_OUT_HPC_LA_P(GPIO_DIFF_OUT_HPC_LA_P),
        .GPIO_DIFF_OUT_LPC_LA_N(GPIO_DIFF_OUT_LPC_LA_N),
        .GPIO_DIFF_OUT_LPC_LA_P(GPIO_DIFF_OUT_LPC_LA_P),
        .MGT_SI570_CLOCK_N(MGT_SI570_CLOCK_N),
        .MGT_SI570_CLOCK_P(MGT_SI570_CLOCK_P),
        .PMOD_IN_tri_i(pmod_in_tri_i),
        .PMOD_OUT_tri_o(pmod_out_tri_o),
        .REC_CLOCK_N(REC_CLOCK_N),
        .REC_CLOCK_P(REC_CLOCK_P),
        .SI5328_OUT_N(SI5328_OUT_N),
        .SI5328_OUT_P(SI5328_OUT_P),
        .SI570_CLK_SEL_tri_o(si570_clk_sel_tri_o),
        .SMA_MGT_REFCLK_N(SMA_MGT_REFCLK_N),
        .SMA_MGT_REFCLK_P(SMA_MGT_REFCLK_P),
        .USER_SI570_CLOCK_N(USER_SI570_CLOCK_N),
        .USER_SI570_CLOCK_P(USER_SI570_CLOCK_P),
        .USER_SMA_CLOCK_N(USER_SMA_CLOCK_N),
        .USER_SMA_CLOCK_P(USER_SMA_CLOCK_P),
        .USER_SMA_GPIO_IN_tri_i(user_sma_gpio_in_tri_i),
        .USER_SMA_GPIO_OUT_tri_o(user_sma_gpio_out_tri_o),
        .Vaux0_v_n(Vaux0_v_n),
        .Vaux0_v_p(Vaux0_v_p),
        .Vaux2_v_n(Vaux2_v_n),
        .Vaux2_v_p(Vaux2_v_p),
        .Vaux8_v_n(Vaux8_v_n),
        .Vaux8_v_p(Vaux8_v_p),
        .Vp_Vn_v_n(Vp_Vn_v_n),
        .Vp_Vn_v_p(Vp_Vn_v_p),
        .ddr4_sdram_act_n(ddr4_sdram_act_n),
        .ddr4_sdram_adr(ddr4_sdram_adr),
        .ddr4_sdram_ba(ddr4_sdram_ba),
        .ddr4_sdram_bg(ddr4_sdram_bg),
        .ddr4_sdram_ck_c(ddr4_sdram_ck_c),
        .ddr4_sdram_ck_t(ddr4_sdram_ck_t),
        .ddr4_sdram_cke(ddr4_sdram_cke),
        .ddr4_sdram_cs_n(ddr4_sdram_cs_n),
        .ddr4_sdram_dm_n(ddr4_sdram_dm_n),
        .ddr4_sdram_dq(ddr4_sdram_dq),
        .ddr4_sdram_dqs_c(ddr4_sdram_dqs_c),
        .ddr4_sdram_dqs_t(ddr4_sdram_dqs_t),
        .ddr4_sdram_odt(ddr4_sdram_odt),
        .ddr4_sdram_reset_n(ddr4_sdram_reset_n),
        .default_sysclk_300_clk_n(default_sysclk_300_clk_n),
        .default_sysclk_300_clk_p(default_sysclk_300_clk_p),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .i2c_sclk(i2c_sclk),
        .i2c_sda(i2c_sda),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .iic_mux_reset_b(iic_mux_reset_b),
        .led_8bits_tri_o(led_8bits_tri_o),
        .mdio_mdc_mdc(mdio_mdc_mdc),
        .mdio_mdc_mdio_i(mdio_mdc_mdio_i),
        .mdio_mdc_mdio_o(mdio_mdc_mdio_o),
        .mdio_mdc_mdio_t(mdio_mdc_mdio_t),
        .pci_express_x8_rxn(pci_express_x8_rxn),
        .pci_express_x8_rxp(pci_express_x8_rxp),
        .pci_express_x8_txn(pci_express_x8_txn),
        .pci_express_x8_txp(pci_express_x8_txp),
        .pcie_perstn(pcie_perstn),
        .pcie_refclk_clk_n(pcie_refclk_clk_n),
        .pcie_refclk_clk_p(pcie_refclk_clk_p),
        .phy_reset_out(phy_reset_out),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .qspi1_io0_i(qspi1_io0_i),
        .qspi1_io0_o(qspi1_io0_o),
        .qspi1_io0_t(qspi1_io0_t),
        .qspi1_io1_i(qspi1_io1_i),
        .qspi1_io1_o(qspi1_io1_o),
        .qspi1_io1_t(qspi1_io1_t),
        .qspi1_io2_i(qspi1_io2_i),
        .qspi1_io2_o(qspi1_io2_o),
        .qspi1_io2_t(qspi1_io2_t),
        .qspi1_io3_i(qspi1_io3_i),
        .qspi1_io3_o(qspi1_io3_o),
        .qspi1_io3_t(qspi1_io3_t),
//        .qspi1_sck_i(qspi1_sck_i),
//        .qspi1_sck_o(qspi1_sck_o),
//        .qspi1_sck_t(qspi1_sck_t),
        .qspi1_ss_i(qspi1_ss_i_0),
        .qspi1_ss_o(qspi1_ss_o_0),
        .qspi1_ss_t(qspi1_ss_t),
        .reset(reset),
//        .rotary_switch_tri_i(rotary_switch_tri_i),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .sgmii_lvds_rxn(sgmii_lvds_rxn),
        .sgmii_lvds_rxp(sgmii_lvds_rxp),
        .sgmii_lvds_txn(sgmii_lvds_txn),
        .sgmii_lvds_txp(sgmii_lvds_txp),
        .sgmii_phyclk_clk_n(sgmii_phyclk_clk_n),
        .sgmii_phyclk_clk_p(sgmii_phyclk_clk_p),
        .vid_clk_148_5MHz_out(vid_clk_148_5MHz_out),
        .vid_io_out_active_video(vid_io_out_active_video),
        .vid_io_out_data(vid_io_out_data),
//        .vid_io_out_field(vid_io_out_field),
//        .vid_io_out_hblank(vid_io_out_hblank),
        .vid_io_out_hsync(vid_io_out_hsync),
//        .vid_io_out_vblank(vid_io_out_vblank),
        .vid_io_out_vsync(vid_io_out_vsync));
endmodule
