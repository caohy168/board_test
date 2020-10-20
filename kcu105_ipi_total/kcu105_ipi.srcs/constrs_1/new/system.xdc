set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design ]
set_property BITSTREAM.config.SPI_opcode 0x6B [current_design ]
set_property CONFIG_MODE SPIx8 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets EMCCLK_IBUF]

# QSPI1
set_property PACKAGE_PIN M20 [get_ports qspi1_io0_io]
set_property IOSTANDARD LVCMOS18 [get_ports qspi1_io0_io]
set_property PACKAGE_PIN L20 [get_ports qspi1_io1_io]
set_property IOSTANDARD LVCMOS18 [get_ports qspi1_io1_io]
set_property PACKAGE_PIN R22 [get_ports qspi1_io2_io]
set_property IOSTANDARD LVCMOS18 [get_ports qspi1_io2_io]
set_property PACKAGE_PIN R21 [get_ports qspi1_io3_io]
set_property IOSTANDARD LVCMOS18 [get_ports qspi1_io3_io]
set_property PACKAGE_PIN G26 [get_ports {qspi1_ss_io}]
set_property IOSTANDARD LVCMOS18 [get_ports {qspi1_ss_io}]

# EMCCLK Input
set_property PACKAGE_PIN K20 [get_ports EMCCLK]
set_property IOSTANDARD LVCMOS18 [get_ports EMCCLK]

# IIC_MUX_RESET_B_LS
set_property PACKAGE_PIN AP10 [get_ports {iic_mux_reset_b[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {iic_mux_reset_b[0]}]
set_property PACKAGE_PIN K23 [get_ports {iic_mux_reset_b[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {iic_mux_reset_b[1]}]

# SYSMON_SCL_LS
set_property IOSTANDARD LVCMOS18 [get_ports i2c_sclk]
# SYSMON_SDA_LS
set_property IOSTANDARD LVCMOS18 [get_ports i2c_sda]

#set_property PACKAGE_PIN AC7 [get_ports spi_rtl_0_io0_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_0_io0_io]
#set_property PACKAGE_PIN AB7 [get_ports spi_rtl_0_io1_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_0_io1_io]
#set_property PACKAGE_PIN AA7 [get_ports spi_rtl_0_io2_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_0_io2_io]
#set_property PACKAGE_PIN Y7 [get_ports spi_rtl_0_io3_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_0_io3_io]
#set_property PACKAGE_PIN U7 [get_ports spi_rtl_0_ss_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_0_ss_io]

#set_property PACKAGE_PIN M20 [get_ports spi_rtl_io0_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_io0_io]
#set_property PACKAGE_PIN L20 [get_ports spi_rtl_io1_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_io1_io]
#set_property PACKAGE_PIN R22 [get_ports spi_rtl_io2_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_io2_io]
#set_property PACKAGE_PIN R21 [get_ports spi_rtl_io3_io]
#set_property IOSTANDARD LVCMOS18 [get_ports spi_rtl_io3_io]
#set_property PACKAGE_PIN G26 [get_ports {spi_rtl_ss_io[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {spi_rtl_ss_io[1]}]
#set_property PACKAGE_PIN U7  [get_ports spi_rtl_ss_io[0]]
#set_property IOSTANDARD LVCMOS18 [get_ports {spi_rtl_ss_io[0]}]

#HDMI_CLK
set_property PACKAGE_PIN AF13 [get_ports vid_clk_148_5MHz_out]
set_property IOSTANDARD LVCMOS18 [get_ports vid_clk_148_5MHz_out]

#HDMI_DE
set_property PACKAGE_PIN AE11 [get_ports vid_io_out_active_video]
set_property IOSTANDARD LVCMOS18 [get_ports vid_io_out_active_video]

#HDMI_VSYNC
set_property PACKAGE_PIN AH13 [get_ports vid_io_out_vsync]
set_property IOSTANDARD LVCMOS18 [get_ports vid_io_out_vsync]

#HDMI_HSYNC
set_property PACKAGE_PIN AE13 [get_ports vid_io_out_hsync]
set_property IOSTANDARD LVCMOS18 [get_ports vid_io_out_hsync]

#set_property PACKAGE_PIN AJ13    [get_ports HDMI_INT]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_INT]
#set_property PACKAGE_PIN AE12    [get_ports HDMI_R_SPDIF]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_R_SPDIF]
#set_property PACKAGE_PIN AF12    [get_ports HDMI_SPDIF_OUT_LS]
#set_property IOSTANDARD LVCMOS18 [get_ports HDMI_SPDIF_OUT_LS]

#HDMI_D[16:0] below
#set_property PACKAGE_PIN AG10    [get_ports vid_io_out_data[16]]
#set_property IOSTANDARD LVCMOS18 [get_ports vid_io_out_data[16]]
set_property PACKAGE_PIN AJ11 [get_ports {vid_io_out_data[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[15]}]
set_property PACKAGE_PIN AG12 [get_ports {vid_io_out_data[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[14]}]
set_property PACKAGE_PIN AH12 [get_ports {vid_io_out_data[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[13]}]
set_property PACKAGE_PIN AD11 [get_ports {vid_io_out_data[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[12]}]
set_property PACKAGE_PIN AK13 [get_ports {vid_io_out_data[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[11]}]
set_property PACKAGE_PIN AL13 [get_ports {vid_io_out_data[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[10]}]
set_property PACKAGE_PIN AK12 [get_ports {vid_io_out_data[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[9]}]
set_property PACKAGE_PIN AL12 [get_ports {vid_io_out_data[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[8]}]
set_property PACKAGE_PIN AM12 [get_ports {vid_io_out_data[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[7]}]
set_property PACKAGE_PIN AN12 [get_ports {vid_io_out_data[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[6]}]
set_property PACKAGE_PIN AM11 [get_ports {vid_io_out_data[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[5]}]
set_property PACKAGE_PIN AN11 [get_ports {vid_io_out_data[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[4]}]
set_property PACKAGE_PIN AN13 [get_ports {vid_io_out_data[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[3]}]
set_property PACKAGE_PIN AP13 [get_ports {vid_io_out_data[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[2]}]
set_property PACKAGE_PIN AP11 [get_ports {vid_io_out_data[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[1]}]
set_property PACKAGE_PIN AK11 [get_ports {vid_io_out_data[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {vid_io_out_data[0]}]

# PMOD GPIO
set_property PACKAGE_PIN AK25 [get_ports {pmod_out_tri_o[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[0]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[0]}]

set_property PACKAGE_PIN AN21 [get_ports {pmod_out_tri_o[1]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[1]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[1]}]

set_property PACKAGE_PIN AH18 [get_ports {pmod_out_tri_o[2]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[2]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[2]}]

set_property PACKAGE_PIN AM19 [get_ports {pmod_out_tri_o[3]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[3]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[3]}]

set_property PACKAGE_PIN AL14 [get_ports {pmod_out_tri_o[4]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[4]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[4]}]

set_property PACKAGE_PIN AM14 [get_ports {pmod_out_tri_o[5]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[5]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[5]}]

set_property PACKAGE_PIN AP16 [get_ports {pmod_out_tri_o[6]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[6]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[6]}]

set_property PACKAGE_PIN AP15 [get_ports {pmod_out_tri_o[7]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_out_tri_o[7]}]
set_property DRIVE 8 [get_ports {pmod_out_tri_o[7]}]

set_property PACKAGE_PIN AE26 [get_ports {pmod_in_tri_i[0]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[0]}]

set_property PACKAGE_PIN AF25 [get_ports {pmod_in_tri_i[1]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[1]}]

set_property PACKAGE_PIN AE21 [get_ports {pmod_in_tri_i[2]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[2]}]

set_property PACKAGE_PIN AM17 [get_ports {pmod_in_tri_i[3]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[3]}]

set_property PACKAGE_PIN AM16 [get_ports {pmod_in_tri_i[4]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[4]}]

set_property PACKAGE_PIN AM15 [get_ports {pmod_in_tri_i[5]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[5]}]

set_property PACKAGE_PIN AN18 [get_ports {pmod_in_tri_i[6]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[6]}]

set_property PACKAGE_PIN AN17 [get_ports {pmod_in_tri_i[7]}]
set_property IOSTANDARD LVCMOS12 [get_ports {pmod_in_tri_i[7]}]

set_property PACKAGE_PIN G10 [get_ports CLK_125MHZ_P]
set_property IOSTANDARD LVDS [get_ports CLK_125MHZ_P]

set_property PACKAGE_PIN F10 [get_ports CLK_125MHZ_N]
set_property IOSTANDARD LVDS [get_ports CLK_125MHZ_N]

set_property PACKAGE_PIN F12 [get_ports si570_clk_sel_tri_o]
set_property IOSTANDARD LVCMOS18 [get_ports si570_clk_sel_tri_o]

set_property PACKAGE_PIN H27 [get_ports user_sma_gpio_in_tri_i]
set_property IOSTANDARD LVCMOS18 [get_ports user_sma_gpio_in_tri_i]

set_property PACKAGE_PIN G27 [get_ports user_sma_gpio_out_tri_o]
set_property IOSTANDARD LVCMOS18 [get_ports user_sma_gpio_out_tri_o]

set_property PACKAGE_PIN AA24 [get_ports FMC_LPC_CLK0_P]
set_property IOSTANDARD LVDS [get_ports FMC_LPC_CLK0_P]

set_property PACKAGE_PIN AA25 [get_ports FMC_LPC_CLK0_N]
set_property IOSTANDARD LVDS [get_ports FMC_LPC_CLK0_N]

set_property PACKAGE_PIN AG11 [get_ports REC_CLOCK_P]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports REC_CLOCK_P]

set_property PACKAGE_PIN AH11 [get_ports REC_CLOCK_N]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports REC_CLOCK_N]

set_property PACKAGE_PIN AC31 [get_ports FMC_LPC_CLK1_P]
set_property IOSTANDARD LVDS [get_ports FMC_LPC_CLK1_P]

set_property PACKAGE_PIN AC32 [get_ports FMC_LPC_CLK1_N]
set_property IOSTANDARD LVDS [get_ports FMC_LPC_CLK1_N]

set_property PACKAGE_PIN D23 [get_ports USER_SMA_CLOCK_P]
set_property IOSTANDARD LVDS [get_ports USER_SMA_CLOCK_P]

set_property PACKAGE_PIN C23 [get_ports USER_SMA_CLOCK_N]
set_property IOSTANDARD LVDS [get_ports USER_SMA_CLOCK_N]

set_property PACKAGE_PIN M25 [get_ports USER_SI570_CLOCK_P]
set_property IOSTANDARD LVDS_25 [get_ports USER_SI570_CLOCK_P]

set_property PACKAGE_PIN M26 [get_ports USER_SI570_CLOCK_N]
set_property IOSTANDARD LVDS_25 [get_ports USER_SI570_CLOCK_N]

set_property PACKAGE_PIN H12 [get_ports FMC_HPC_CLK0_P]
set_property IOSTANDARD LVDS [get_ports FMC_HPC_CLK0_P]

set_property PACKAGE_PIN G12 [get_ports FMC_HPC_CLK0_N]
set_property IOSTANDARD LVDS [get_ports FMC_HPC_CLK0_N]

set_property PACKAGE_PIN E25 [get_ports FMC_HPC_CLK1_P]
set_property IOSTANDARD LVDS [get_ports FMC_HPC_CLK1_P]

set_property PACKAGE_PIN D25 [get_ports FMC_HPC_CLK1_N]
set_property IOSTANDARD LVDS [get_ports FMC_HPC_CLK1_N]

set_property PACKAGE_PIN AB6 [get_ports PCIE_CLK_QO_P]
set_property PACKAGE_PIN AB5 [get_ports PCIE_CLK_QO_N]

set_property PACKAGE_PIN M6 [get_ports SI5328_OUT_P]
set_property PACKAGE_PIN M5 [get_ports SI5328_OUT_N]

set_property PACKAGE_PIN T6 [get_ports FMC_LPC_GBTCLK0_P]
set_property PACKAGE_PIN T5 [get_ports FMC_LPC_GBTCLK0_N]

set_property PACKAGE_PIN V6 [get_ports SMA_MGT_REFCLK_P]
set_property PACKAGE_PIN V5 [get_ports SMA_MGT_REFCLK_N]

set_property PACKAGE_PIN P6 [get_ports MGT_SI570_CLOCK_P]
set_property PACKAGE_PIN P5 [get_ports MGT_SI570_CLOCK_N]

set_property PACKAGE_PIN K6 [get_ports FMC_HPC_GBTCLK0_P]
set_property PACKAGE_PIN K5 [get_ports FMC_HPC_GBTCLK0_N]

set_property PACKAGE_PIN H6 [get_ports FMC_HPC_GBTCLK1_P]
set_property PACKAGE_PIN H5 [get_ports FMC_HPC_GBTCLK1_N]

# U43 GPIO

##
## Constraints for use with an XM107 Board for LVDS Loopback.
##

###
# XM107 J1 Connector Straight-across Jumpers LPC
# OUT			IN
# FMC_LA00_CC_P		FMC_LA17_CC_P
# FMC_LA00_CC_N		FMC_LA17_CC_N
# FMC_LA01_CC_P		FMC_LA18_CC_P
# FMC_LA01_CC_N		FMC_LA18_CC_N
# FMC_LA02_P		FMC_LA19_P   
# FMC_LA02_N		FMC_LA19_N   
# FMC_LA03_P		FMC_LA20_P
# FMC_LA03_N		FMC_LA20_N
# FMC_LA04_P		FMC_LA21_P
# FMC_LA04_N		FMC_LA21_N
# FMC_LA05_P		FMC_LA22_P
# FMC_LA05_N		FMC_LA22_N
# FMC_LA06_P		FMC_LA23_P
# FMC_LA06_N		FMC_LA23_N
# FMC_LA07_P		FMC_LA24_P
# FMC_LA07_N		FMC_LA24_N
# FMC_LA08_P		FMC_LA25_P
# FMC_LA08_N		FMC_LA25_N
# FMC_LA09_P		FMC_LA26_P
# FMC_LA09_N		FMC_LA26_N
# FMC_LA10_P            FMC_LA27_P
# FMC_LA10_N            FMC_LA27_N
# FMC_LA11_P            FMC_LA28_P
# FMC_LA11_N            FMC_LA28_N
# FMC_LA12_P            FMC_LA29_P
# FMC_LA12_N            FMC_LA29_N
# FMC_LA13_P            FMC_LA30_P
# FMC_LA13_N            FMC_LA30_N
# FMC_LA14_P            FMC_LA31_P
# FMC_LA14_N            FMC_LA31_N
# FMC_LA15_P            FMC_LA32_P
# FMC_LA15_N            FMC_LA32_N
# FMC_LA16_P 		FMC_LA33_P
# FMC_LA16_N            FMC_LA33_N

set_property PACKAGE_PIN W23  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[0]}]
set_property PACKAGE_PIN W24  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[0]}]
set_property PACKAGE_PIN W25  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[1]}]
set_property PACKAGE_PIN Y25  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[1]}]
set_property PACKAGE_PIN AA22 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[2]}]
set_property PACKAGE_PIN AB22 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[2]}]
set_property PACKAGE_PIN W28  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[3]}]
set_property PACKAGE_PIN Y28  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[3]}]
set_property PACKAGE_PIN U26  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[4]}]
set_property PACKAGE_PIN U27  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[4]}]
set_property PACKAGE_PIN V27  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[5]}]
set_property PACKAGE_PIN V28  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[5]}]
set_property PACKAGE_PIN V29  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[6]}]
set_property PACKAGE_PIN W29  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[6]}]
set_property PACKAGE_PIN V22  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[7]}]
set_property PACKAGE_PIN V23  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[7]}]
set_property PACKAGE_PIN U24  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[8]}]
set_property PACKAGE_PIN U25  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[8]}]
set_property PACKAGE_PIN V26  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[9]}]
set_property PACKAGE_PIN W26  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[9]}]
set_property PACKAGE_PIN T22  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[10]}]
set_property PACKAGE_PIN T23  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[10]}]
set_property PACKAGE_PIN V21  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[11]}]
set_property PACKAGE_PIN W21  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[11]}]
set_property PACKAGE_PIN AC22 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[12]}]
set_property PACKAGE_PIN AC23 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[12]}]
set_property PACKAGE_PIN AA20 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[13]}]
set_property PACKAGE_PIN AB20 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[13]}]
set_property PACKAGE_PIN U21  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[14]}]
set_property PACKAGE_PIN U22  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[14]}]
set_property PACKAGE_PIN AB25 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[15]}]
set_property PACKAGE_PIN AB26 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[15]}]
set_property PACKAGE_PIN AB21 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[16]}]
set_property PACKAGE_PIN AC21 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[16]}]

set_property PACKAGE_PIN AA32 [get_ports {GPIO_DIFF_IN_LPC_LA_P[0]}]
set_property PACKAGE_PIN AB32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[0]}]
set_property PACKAGE_PIN AB30 [get_ports {GPIO_DIFF_IN_LPC_LA_P[1]}]
set_property PACKAGE_PIN AB31 [get_ports {GPIO_DIFF_IN_LPC_LA_N[1]}]
set_property PACKAGE_PIN AA29 [get_ports {GPIO_DIFF_IN_LPC_LA_P[2]}]
set_property PACKAGE_PIN AB29 [get_ports {GPIO_DIFF_IN_LPC_LA_N[2]}]
set_property PACKAGE_PIN AA34 [get_ports {GPIO_DIFF_IN_LPC_LA_P[3]}]
set_property PACKAGE_PIN AB34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[3]}]
set_property PACKAGE_PIN AC33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[4]}]
set_property PACKAGE_PIN AD33 [get_ports {GPIO_DIFF_IN_LPC_LA_N[4]}]
set_property PACKAGE_PIN AC34 [get_ports {GPIO_DIFF_IN_LPC_LA_P[5]}]
set_property PACKAGE_PIN AD34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[5]}]
set_property PACKAGE_PIN AD30 [get_ports {GPIO_DIFF_IN_LPC_LA_P[6]}]
set_property PACKAGE_PIN AD31 [get_ports {GPIO_DIFF_IN_LPC_LA_N[6]}]
set_property PACKAGE_PIN AE32 [get_ports {GPIO_DIFF_IN_LPC_LA_P[7]}]
set_property PACKAGE_PIN AF32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[7]}]
set_property PACKAGE_PIN AE33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[8]}]
set_property PACKAGE_PIN AF34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[8]}]
set_property PACKAGE_PIN AF33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[9]}]
set_property PACKAGE_PIN AG34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[9]}]
set_property PACKAGE_PIN AG31 [get_ports {GPIO_DIFF_IN_LPC_LA_P[10]}]
set_property PACKAGE_PIN AG32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[10]}]
set_property PACKAGE_PIN V31  [get_ports {GPIO_DIFF_IN_LPC_LA_P[11]}]
set_property PACKAGE_PIN W31  [get_ports {GPIO_DIFF_IN_LPC_LA_N[11]}]
set_property PACKAGE_PIN U34  [get_ports {GPIO_DIFF_IN_LPC_LA_P[12]}]
set_property PACKAGE_PIN V34  [get_ports {GPIO_DIFF_IN_LPC_LA_N[12]}]
set_property PACKAGE_PIN Y31  [get_ports {GPIO_DIFF_IN_LPC_LA_P[13]}]
set_property PACKAGE_PIN Y32  [get_ports {GPIO_DIFF_IN_LPC_LA_N[13]}]
set_property PACKAGE_PIN V33  [get_ports {GPIO_DIFF_IN_LPC_LA_P[14]}]
set_property PACKAGE_PIN W34  [get_ports {GPIO_DIFF_IN_LPC_LA_N[14]}]
set_property PACKAGE_PIN W30  [get_ports {GPIO_DIFF_IN_LPC_LA_P[15]}]
set_property PACKAGE_PIN Y30  [get_ports {GPIO_DIFF_IN_LPC_LA_N[15]}]
set_property PACKAGE_PIN W33  [get_ports {GPIO_DIFF_IN_LPC_LA_P[16]}]
set_property PACKAGE_PIN Y33  [get_ports {GPIO_DIFF_IN_LPC_LA_N[16]}]

###
# XM107 J1 Connector Straight-across Jumpers LPC
# OUT			IN
# FMC_LA00_CC_P		FMC_LA17_CC_P
# FMC_LA00_CC_N		FMC_LA17_CC_N
# FMC_LA01_CC_P		FMC_LA18_CC_P
# FMC_LA01_CC_N		FMC_LA18_CC_N
# FMC_LA02_P		FMC_LA19_P   
# FMC_LA02_N		FMC_LA19_N   
# FMC_LA03_P		FMC_LA20_P
# FMC_LA03_N		FMC_LA20_N
# FMC_LA04_P		FMC_LA21_P
# FMC_LA04_N		FMC_LA21_N
# FMC_LA05_P		FMC_LA22_P
# FMC_LA05_N		FMC_LA22_N
# FMC_LA06_P		FMC_LA23_P
# FMC_LA06_N		FMC_LA23_N
# FMC_LA07_P		FMC_LA24_P
# FMC_LA07_N		FMC_LA24_N
# FMC_LA08_P		FMC_LA25_P
# FMC_LA08_N		FMC_LA25_N
# FMC_LA09_P		FMC_LA26_P
# FMC_LA09_N		FMC_LA26_N
# FMC_LA10_P            FMC_LA27_P
# FMC_LA10_N            FMC_LA27_N
# FMC_LA11_P            FMC_LA28_P
# FMC_LA11_N            FMC_LA28_N
# FMC_LA12_P            FMC_LA29_P
# FMC_LA12_N            FMC_LA29_N
# FMC_LA13_P            FMC_LA30_P
# FMC_LA13_N            FMC_LA30_N
# FMC_LA14_P            FMC_LA31_P
# FMC_LA14_N            FMC_LA31_N
# FMC_LA15_P            FMC_LA32_P
# FMC_LA15_N            FMC_LA32_N
# FMC_LA16_P 		FMC_LA33_P
# FMC_LA16_N            FMC_LA33_N

set_property PACKAGE_PIN H11 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[0]}]
set_property PACKAGE_PIN G11 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[0]}]
set_property PACKAGE_PIN G9  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[1]}]
set_property PACKAGE_PIN F9  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[1]}]
set_property PACKAGE_PIN K10 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[2]}]
set_property PACKAGE_PIN J10 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[2]}]
set_property PACKAGE_PIN A13 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[3]}]
set_property PACKAGE_PIN A12 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[3]}]
set_property PACKAGE_PIN L12 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[4]}]
set_property PACKAGE_PIN K12 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[4]}]
set_property PACKAGE_PIN L13 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[5]}]
set_property PACKAGE_PIN K13 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[5]}]
set_property PACKAGE_PIN D13 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[6]}]
set_property PACKAGE_PIN C13 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[6]}]
set_property PACKAGE_PIN F8  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[7]}]
set_property PACKAGE_PIN E8  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[7]}]
set_property PACKAGE_PIN J8  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[8]}]
set_property PACKAGE_PIN H8  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[8]}]
set_property PACKAGE_PIN J9  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[9]}]
set_property PACKAGE_PIN H9  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[9]}]
set_property PACKAGE_PIN L8  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[10]}]
set_property PACKAGE_PIN K8  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[10]}]
set_property PACKAGE_PIN K11 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[11]}]
set_property PACKAGE_PIN J11 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[11]}]
set_property PACKAGE_PIN E10 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[12]}]
set_property PACKAGE_PIN D10 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[12]}]
set_property PACKAGE_PIN D9  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[13]}]
set_property PACKAGE_PIN C9  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[13]}]
set_property PACKAGE_PIN B10 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[14]}]
set_property PACKAGE_PIN A10 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[14]}]
set_property PACKAGE_PIN D8  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[15]}]
set_property PACKAGE_PIN C8  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[15]}]
set_property PACKAGE_PIN B9  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[16]}]
set_property PACKAGE_PIN A9  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[16]}]

set_property PACKAGE_PIN D24 [get_ports {GPIO_DIFF_IN_HPC_LA_P[0]}]
set_property PACKAGE_PIN C24 [get_ports {GPIO_DIFF_IN_HPC_LA_N[0]}]
set_property PACKAGE_PIN E22 [get_ports {GPIO_DIFF_IN_HPC_LA_P[1]}]
set_property PACKAGE_PIN E23 [get_ports {GPIO_DIFF_IN_HPC_LA_N[1]}]
set_property PACKAGE_PIN C21 [get_ports {GPIO_DIFF_IN_HPC_LA_P[2]}]
set_property PACKAGE_PIN C22 [get_ports {GPIO_DIFF_IN_HPC_LA_N[2]}]
set_property PACKAGE_PIN B24 [get_ports {GPIO_DIFF_IN_HPC_LA_P[3]}]
set_property PACKAGE_PIN A24 [get_ports {GPIO_DIFF_IN_HPC_LA_N[3]}]
set_property PACKAGE_PIN F23 [get_ports {GPIO_DIFF_IN_HPC_LA_P[4]}]
set_property PACKAGE_PIN F24 [get_ports {GPIO_DIFF_IN_HPC_LA_N[4]}]
set_property PACKAGE_PIN G24 [get_ports {GPIO_DIFF_IN_HPC_LA_P[5]}]
set_property PACKAGE_PIN F25 [get_ports {GPIO_DIFF_IN_HPC_LA_N[5]}]
set_property PACKAGE_PIN G22 [get_ports {GPIO_DIFF_IN_HPC_LA_P[6]}]
set_property PACKAGE_PIN F22 [get_ports {GPIO_DIFF_IN_HPC_LA_N[6]}]
set_property PACKAGE_PIN E20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[7]}]
set_property PACKAGE_PIN E21 [get_ports {GPIO_DIFF_IN_HPC_LA_N[7]}]
set_property PACKAGE_PIN D20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[8]}]
set_property PACKAGE_PIN D21 [get_ports {GPIO_DIFF_IN_HPC_LA_N[8]}]
set_property PACKAGE_PIN G20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[9]}]
set_property PACKAGE_PIN F20 [get_ports {GPIO_DIFF_IN_HPC_LA_N[9]}]
set_property PACKAGE_PIN H21 [get_ports {GPIO_DIFF_IN_HPC_LA_P[10]}]
set_property PACKAGE_PIN G21 [get_ports {GPIO_DIFF_IN_HPC_LA_N[10]}]
set_property PACKAGE_PIN B21 [get_ports {GPIO_DIFF_IN_HPC_LA_P[11]}]
set_property PACKAGE_PIN B22 [get_ports {GPIO_DIFF_IN_HPC_LA_N[11]}]
set_property PACKAGE_PIN B20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[12]}]
set_property PACKAGE_PIN A20 [get_ports {GPIO_DIFF_IN_HPC_LA_N[12]}]
set_property PACKAGE_PIN C26 [get_ports {GPIO_DIFF_IN_HPC_LA_P[13]}]
set_property PACKAGE_PIN B26 [get_ports {GPIO_DIFF_IN_HPC_LA_N[13]}]
set_property PACKAGE_PIN B25 [get_ports {GPIO_DIFF_IN_HPC_LA_P[14]}]
set_property PACKAGE_PIN A25 [get_ports {GPIO_DIFF_IN_HPC_LA_N[14]}]
set_property PACKAGE_PIN E26 [get_ports {GPIO_DIFF_IN_HPC_LA_P[15]}]
set_property PACKAGE_PIN D26 [get_ports {GPIO_DIFF_IN_HPC_LA_N[15]}]
set_property PACKAGE_PIN A27 [get_ports {GPIO_DIFF_IN_HPC_LA_P[16]}]
set_property PACKAGE_PIN A28 [get_ports {GPIO_DIFF_IN_HPC_LA_N[16]}]


##
## Constraints for use with an XM105 Board for LVDS Loopback.
##

###
# XM105 J1 Connector Straight-across Jumpers LPC
# OUT			IN
# FMC_LA00_CC_P		FMC_LA10_P
# FMC_LA00_CC_N		FMC_LA10_N
# FMC_LA01_CC_P		FMC_LA11_P
# FMC_LA01_CC_N		FMC_LA11_N
# FMC_LA02_P		FMC_LA12_P
# FMC_LA02_N		FMC_LA12_N
# FMC_LA03_P		FMC_LA13_P
# FMC_LA03_N		FMC_LA13_N
# FMC_LA04_P		FMC_LA14_P
# FMC_LA04_N		FMC_LA14_N
# FMC_LA05_P		FMC_LA15_P
# FMC_LA05_N		FMC_LA15_N
# FMC_LA06_P		FMC_LA16_P
# FMC_LA06_N		FMC_LA16_N
# FMC_LA07_P		FMC_LA17_CC_P
# FMC_LA07_N		FMC_LA17_CC_N
# FMC_LA08_P		FMC_LA18_CC_P
# FMC_LA08_N		FMC_LA18_CC_N
# FMC_LA09_P		FMC_LA19_P
# FMC_LA09_N		FMC_LA19_N

#set_property PACKAGE_PIN W23  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[0]}]
#set_property PACKAGE_PIN W24  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[0]}]
#set_property PACKAGE_PIN W25  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[1]}]
#set_property PACKAGE_PIN Y25  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[1]}]
#set_property PACKAGE_PIN AA22 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[2]}]
#set_property PACKAGE_PIN AB22 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[2]}]
#set_property PACKAGE_PIN W28  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[3]}]
#set_property PACKAGE_PIN Y28  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[3]}]
#set_property PACKAGE_PIN U26  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[4]}]
#set_property PACKAGE_PIN U27  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[4]}]
#set_property PACKAGE_PIN V27  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[5]}]
#set_property PACKAGE_PIN V28  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[5]}]
#set_property PACKAGE_PIN V29  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[6]}]
#set_property PACKAGE_PIN W29  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[6]}]
#set_property PACKAGE_PIN V22  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[7]}]
#set_property PACKAGE_PIN V23  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[7]}]
#set_property PACKAGE_PIN U24  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[8]}]
#set_property PACKAGE_PIN U25  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[8]}]
#set_property PACKAGE_PIN V26  [get_ports {GPIO_DIFF_OUT_LPC_LA_P[9]}]
#set_property PACKAGE_PIN W26  [get_ports {GPIO_DIFF_OUT_LPC_LA_N[9]}]

#set_property PACKAGE_PIN T22  [get_ports {GPIO_DIFF_IN_LPC_LA_P[0]}]
#set_property PACKAGE_PIN T23  [get_ports {GPIO_DIFF_IN_LPC_LA_N[0]}]
#set_property PACKAGE_PIN V21  [get_ports {GPIO_DIFF_IN_LPC_LA_P[1]}]
#set_property PACKAGE_PIN W21  [get_ports {GPIO_DIFF_IN_LPC_LA_N[1]}]
#set_property PACKAGE_PIN AC22 [get_ports {GPIO_DIFF_IN_LPC_LA_P[2]}]
#set_property PACKAGE_PIN AC23 [get_ports {GPIO_DIFF_IN_LPC_LA_N[2]}]
#set_property PACKAGE_PIN AA20 [get_ports {GPIO_DIFF_IN_LPC_LA_P[3]}]
#set_property PACKAGE_PIN AB20 [get_ports {GPIO_DIFF_IN_LPC_LA_N[3]}]
#set_property PACKAGE_PIN U21  [get_ports {GPIO_DIFF_IN_LPC_LA_P[4]}]
#set_property PACKAGE_PIN U22  [get_ports {GPIO_DIFF_IN_LPC_LA_N[4]}]
#set_property PACKAGE_PIN AB25 [get_ports {GPIO_DIFF_IN_LPC_LA_P[5]}]
#set_property PACKAGE_PIN AB26 [get_ports {GPIO_DIFF_IN_LPC_LA_N[5]}]
#set_property PACKAGE_PIN AB21 [get_ports {GPIO_DIFF_IN_LPC_LA_P[6]}]
#set_property PACKAGE_PIN AC21 [get_ports {GPIO_DIFF_IN_LPC_LA_N[6]}]
#set_property PACKAGE_PIN AA32 [get_ports {GPIO_DIFF_IN_LPC_LA_P[7]}]
#set_property PACKAGE_PIN AB32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[7]}]
#set_property PACKAGE_PIN AB30 [get_ports {GPIO_DIFF_IN_LPC_LA_P[8]}]
#set_property PACKAGE_PIN AB31 [get_ports {GPIO_DIFF_IN_LPC_LA_N[8]}]
#set_property PACKAGE_PIN AA29 [get_ports {GPIO_DIFF_IN_LPC_LA_P[9]}]
#set_property PACKAGE_PIN AB29 [get_ports {GPIO_DIFF_IN_LPC_LA_N[9]}]
###

###
# XM105 J20 Connector Straight-across Jumpers LPC
# OUT			IN
# FMC_LA20_P		FMC_LA24_P
# FMC_LA20_N		FMC_LA24_N
# FMC_LA21_P		FMC_LA25_P
# FMC_LA21_N		FMC_LA25_N
# FMC_LA22_P		FMC_LA26_P
# FMC_LA22_N		FMC_LA26_N
# FMC_LA23_P		FMC_LA27_P
# FMC_LA23_N		FMC_LA27_N
#set_property PACKAGE_PIN AA34 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[10]}]
#set_property PACKAGE_PIN AB34 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[10]}]
#set_property PACKAGE_PIN AC33 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[11]}]
#set_property PACKAGE_PIN AD33 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[11]}]
#set_property PACKAGE_PIN AC34 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[12]}]
#set_property PACKAGE_PIN AD34 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[12]}]
#set_property PACKAGE_PIN AD30 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[13]}]
#set_property PACKAGE_PIN AD31 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[13]}]

#set_property PACKAGE_PIN AE32 [get_ports {GPIO_DIFF_IN_LPC_LA_P[10]}]
#set_property PACKAGE_PIN AF32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[10]}]
#set_property PACKAGE_PIN AE33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[11]}]
#set_property PACKAGE_PIN AF34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[11]}]
#set_property PACKAGE_PIN AF33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[12]}]
#set_property PACKAGE_PIN AG34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[12]}]
#set_property PACKAGE_PIN AG31 [get_ports {GPIO_DIFF_IN_LPC_LA_P[13]}]
#set_property PACKAGE_PIN AG32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[13]}]
###

###
# XM105 J16 Connector Straight-across Jumpers LPC
# OUT			IN
# FMC_LA28_P		FMC_LA30_P
# FMC_LA28_N		FMC_LA30_N
# FMC_LA29_P    	FMC_LA31_P
# FMC_LA29_N    	FMC_LA31_N
#set_property PACKAGE_PIN V31 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[14]}]
#set_property PACKAGE_PIN W31 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[14]}]
#set_property PACKAGE_PIN U34 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[15]}]
#set_property PACKAGE_PIN V34 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[15]}]

#set_property PACKAGE_PIN Y31 [get_ports {GPIO_DIFF_IN_LPC_LA_P[14]}]
#set_property PACKAGE_PIN Y32 [get_ports {GPIO_DIFF_IN_LPC_LA_N[14]}]
#set_property PACKAGE_PIN V33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[15]}]
#set_property PACKAGE_PIN W34 [get_ports {GPIO_DIFF_IN_LPC_LA_N[15]}]
###

###
# XM105 J15 Connector Side-by-side Jumpers LPC
# OUT			IN
# FMC_LA32_P		FMC_LA33_P
# FMC_LA32_N		FMC_LA33_N
#set_property PACKAGE_PIN W30 [get_ports {GPIO_DIFF_OUT_LPC_LA_P[16]}]
#set_property PACKAGE_PIN Y30 [get_ports {GPIO_DIFF_OUT_LPC_LA_N[16]}]

#set_property PACKAGE_PIN W33 [get_ports {GPIO_DIFF_IN_LPC_LA_P[16]}]
#set_property PACKAGE_PIN Y33 [get_ports {GPIO_DIFF_IN_LPC_LA_N[16]}]
###


###
# XM105 J9, J10 SMA Connectors Jumpered LPC
# OUT			IN
# CLK1_M2C_P		CLK1_M2C_N
#set_property PACKAGE_PIN AH29 [get_ports FMC_LPC_CLK1_M2C_N]
#set_property PACKAGE_PIN AG29 [get_ports FMC_LPC_CLK1_M2C_P]
###


###
# XM105 J1 Connector Straight-across Jumpers HPC
# OUT			IN
# FMC_LA00_CC_P		FMC_LA10_P
# FMC_LA00_CC_N		FMC_LA10_N
# FMC_LA01_CC_P		FMC_LA11_P
# FMC_LA01_CC_N		FMC_LA11_N
# FMC_LA02_P		FMC_LA12_P
# FMC_LA02_N		FMC_LA12_N
# FMC_LA03_P		FMC_LA13_P
# FMC_LA03_N		FMC_LA13_N
# FMC_LA04_P		FMC_LA14_P
# FMC_LA04_N		FMC_LA14_N
# FMC_LA05_P		FMC_LA15_P
# FMC_LA05_N		FMC_LA15_N
# FMC_LA06_P		FMC_LA16_P
# FMC_LA06_N		FMC_LA16_N
# FMC_LA07_P		FMC_LA17_CC_P
# FMC_LA07_N		FMC_LA17_CC_N
# FMC_LA08_P		FMC_LA18_CC_P
# FMC_LA08_N		FMC_LA18_CC_N
# FMC_LA09_P		FMC_LA19_P
# FMC_LA09_N		FMC_LA19_N

#set_property PACKAGE_PIN H11 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[0]}]
#set_property PACKAGE_PIN G11 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[0]}]
#set_property PACKAGE_PIN G9  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[1]}]
#set_property PACKAGE_PIN F9  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[1]}]
#set_property PACKAGE_PIN K10 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[2]}]
#set_property PACKAGE_PIN J10 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[2]}]
#set_property PACKAGE_PIN A13 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[3]}]
#set_property PACKAGE_PIN A12 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[3]}]
#set_property PACKAGE_PIN L12 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[4]}]
#set_property PACKAGE_PIN K12 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[4]}]
#set_property PACKAGE_PIN L13 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[5]}]
#set_property PACKAGE_PIN K13 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[5]}]
#set_property PACKAGE_PIN D13 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[6]}]
#set_property PACKAGE_PIN C13 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[6]}]
#set_property PACKAGE_PIN F8  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[7]}]
#set_property PACKAGE_PIN E8  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[7]}]
#set_property PACKAGE_PIN J8  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[8]}]
#set_property PACKAGE_PIN H8  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[8]}]
#set_property PACKAGE_PIN J9  [get_ports {GPIO_DIFF_OUT_HPC_LA_P[9]}]
#set_property PACKAGE_PIN H9  [get_ports {GPIO_DIFF_OUT_HPC_LA_N[9]}]

#set_property PACKAGE_PIN L8  [get_ports {GPIO_DIFF_IN_HPC_LA_P[0]}]
#set_property PACKAGE_PIN K8  [get_ports {GPIO_DIFF_IN_HPC_LA_N[0]}]
#set_property PACKAGE_PIN K11 [get_ports {GPIO_DIFF_IN_HPC_LA_P[1]}]
#set_property PACKAGE_PIN J11 [get_ports {GPIO_DIFF_IN_HPC_LA_N[1]}]
#set_property PACKAGE_PIN E10 [get_ports {GPIO_DIFF_IN_HPC_LA_P[2]}]
#set_property PACKAGE_PIN D10 [get_ports {GPIO_DIFF_IN_HPC_LA_N[2]}]
#set_property PACKAGE_PIN D9  [get_ports {GPIO_DIFF_IN_HPC_LA_P[3]}]
#set_property PACKAGE_PIN C9  [get_ports {GPIO_DIFF_IN_HPC_LA_N[3]}]
#set_property PACKAGE_PIN B10 [get_ports {GPIO_DIFF_IN_HPC_LA_P[4]}]
#set_property PACKAGE_PIN A10 [get_ports {GPIO_DIFF_IN_HPC_LA_N[4]}]
#set_property PACKAGE_PIN D8  [get_ports {GPIO_DIFF_IN_HPC_LA_P[5]}]
#set_property PACKAGE_PIN C8  [get_ports {GPIO_DIFF_IN_HPC_LA_N[5]}]
#set_property PACKAGE_PIN B9  [get_ports {GPIO_DIFF_IN_HPC_LA_P[6]}]
#set_property PACKAGE_PIN A9  [get_ports {GPIO_DIFF_IN_HPC_LA_N[6]}]
#set_property PACKAGE_PIN D24 [get_ports {GPIO_DIFF_IN_HPC_LA_P[7]}]
#set_property PACKAGE_PIN C24 [get_ports {GPIO_DIFF_IN_HPC_LA_N[7]}]
#set_property PACKAGE_PIN E22 [get_ports {GPIO_DIFF_IN_HPC_LA_P[8]}]
#set_property PACKAGE_PIN E23 [get_ports {GPIO_DIFF_IN_HPC_LA_N[8]}]
#set_property PACKAGE_PIN C21 [get_ports {GPIO_DIFF_IN_HPC_LA_P[9]}]
#set_property PACKAGE_PIN C22 [get_ports {GPIO_DIFF_IN_HPC_LA_N[9]}]
###

###
# XM105 J20 Connector Straight-across Jumpers HPC
# OUT			IN
# FMC_LA20_P		FMC_LA24_P
# FMC_LA20_N		FMC_LA24_N
# FMC_LA21_P		FMC_LA25_P
# FMC_LA21_N		FMC_LA25_N
# FMC_LA22_P		FMC_LA26_P
# FMC_LA22_N		FMC_LA26_N
# FMC_LA23_P		FMC_LA27_P
# FMC_LA23_N		FMC_LA27_N
#set_property PACKAGE_PIN B24 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[10]}]
#set_property PACKAGE_PIN A24 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[10]}]
#set_property PACKAGE_PIN F23 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[11]}]
#set_property PACKAGE_PIN F24 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[11]}]
#set_property PACKAGE_PIN G24 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[12]}]
#set_property PACKAGE_PIN F25 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[12]}]
#set_property PACKAGE_PIN G22 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[13]}]
#set_property PACKAGE_PIN F22 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[13]}]

#set_property PACKAGE_PIN E20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[10]}]
#set_property PACKAGE_PIN E21 [get_ports {GPIO_DIFF_IN_HPC_LA_N[10]}]
#set_property PACKAGE_PIN D20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[11]}]
#set_property PACKAGE_PIN D21 [get_ports {GPIO_DIFF_IN_HPC_LA_N[11]}]
#set_property PACKAGE_PIN G20 [get_ports {GPIO_DIFF_IN_HPC_LA_P[12]}]
#set_property PACKAGE_PIN F20 [get_ports {GPIO_DIFF_IN_HPC_LA_N[12]}]
#set_property PACKAGE_PIN H21 [get_ports {GPIO_DIFF_IN_HPC_LA_P[13]}]
#set_property PACKAGE_PIN G21 [get_ports {GPIO_DIFF_IN_HPC_LA_N[13]}]
###

###
# XM105 J16 Connector Straight-across Jumpers HPC
# OUT			IN
#FMC_LA28_P		FMC_LA30_P
#FMC_LA28_N		FMC_LA30_N
#FMC_LA29_P    		FMC_LA31_P
#FMC_LA29_N   		FMC_LA31_N
#set_property PACKAGE_PIN B21 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[14]}]
#set_property PACKAGE_PIN B22 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[14]}]
#set_property PACKAGE_PIN B20 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[15]}]
#set_property PACKAGE_PIN A20 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[15]}]

#set_property PACKAGE_PIN C26 [get_ports {GPIO_DIFF_IN_HPC_LA_P[14]}]
#set_property PACKAGE_PIN B26 [get_ports {GPIO_DIFF_IN_HPC_LA_N[14]}]
#set_property PACKAGE_PIN B25 [get_ports {GPIO_DIFF_IN_HPC_LA_P[15]}]
#set_property PACKAGE_PIN A25 [get_ports {GPIO_DIFF_IN_HPC_LA_N[15]}]
###

###
# XM105 J15 Connector Side-by-side Jumpers HPC
# OUT			IN
# FMC_LA32_P		FMC_LA33_P
# FMC_LA32_N		FMC_LA33_N
#set_property PACKAGE_PIN E26 [get_ports {GPIO_DIFF_OUT_HPC_LA_P[16]}]
#set_property PACKAGE_PIN D26 [get_ports {GPIO_DIFF_OUT_HPC_LA_N[16]}]

#set_property PACKAGE_PIN A27 [get_ports {GPIO_DIFF_IN_HPC_LA_P[16]}]
#set_property PACKAGE_PIN A28 [get_ports {GPIO_DIFF_IN_HPC_LA_N[16]}]
###

###
# XM105 J3 Connector Straight-across Jumpers HPC HA Bus
# OUT			IN
#FMC_HA00_CC_P		FMC_HA10_P
#FMC_HA00_CC_N		FMC_HA10_N
#FMC_HA01_CC_P		FMC_HA11_P
#FMC_HA01_CC_N		FMC_HA11_N
#FMC_HA02_P		FMC_HA12_P
#FMC_HA02_N		FMC_HA12_N
#FMC_HA03_P		FMC_HA13_P
#FMC_HA03_N		FMC_HA13_N
#FMC_HA04_P		FMC_HA14_P
#FMC_HA04_N		FMC_HA14_N
#FMC_HA05_P		FMC_HA15_P
#FMC_HA05_N		FMC_HA15_N
#FMC_HA06_P		FMC_HA16_P
#FMC_HA06_N		FMC_HA16_N
#FMC_HA07_P		FMC_HA17_CC_P
#FMC_HA07_N		FMC_HA17_CC_N
#FMC_HA08_P		FMC_HA18_P
#FMC_HA08_N		FMC_HA18_N
#FMC_HA09_P		FMC_HA19_P
#FMC_HA09_N		FMC_HA19_N
#set_property PACKAGE_PIN G17 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[0]}]
#set_property PACKAGE_PIN G16 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[0]}]
#set_property PACKAGE_PIN E16 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[1]}]
#set_property PACKAGE_PIN D16 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[1]}]
#set_property PACKAGE_PIN H19 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[2]}]
#set_property PACKAGE_PIN H18 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[2]}]
#set_property PACKAGE_PIN G15 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[3]}]
#set_property PACKAGE_PIN G14 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[3]}]
#set_property PACKAGE_PIN G19 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[4]}]
#set_property PACKAGE_PIN F19 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[4]}]
#set_property PACKAGE_PIN J15 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[5]}]
#set_property PACKAGE_PIN J14 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[5]}]
#set_property PACKAGE_PIN L15 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[6]}]
#set_property PACKAGE_PIN K15 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[6]}]
#set_property PACKAGE_PIN L19 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[7]}]
#set_property PACKAGE_PIN L18 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[7]}]
#set_property PACKAGE_PIN K18 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[8]}]
#set_property PACKAGE_PIN K17 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[8]}]
#set_property PACKAGE_PIN F18 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[9]}]
#set_property PACKAGE_PIN F17 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[9]}]

#set_property PACKAGE_PIN H17 [get_ports {GPIO_DIFF_IN_HPC_HA_P[0]}]
#set_property PACKAGE_PIN H16 [get_ports {GPIO_DIFF_IN_HPC_HA_N[0]}]
#set_property PACKAGE_PIN J19 [get_ports {GPIO_DIFF_IN_HPC_HA_P[1]}]
#set_property PACKAGE_PIN J18 [get_ports {GPIO_DIFF_IN_HPC_HA_N[1]}]
#set_property PACKAGE_PIN K16 [get_ports {GPIO_DIFF_IN_HPC_HA_P[2]}]
#set_property PACKAGE_PIN J16 [get_ports {GPIO_DIFF_IN_HPC_HA_N[2]}]
#set_property PACKAGE_PIN B14 [get_ports {GPIO_DIFF_IN_HPC_HA_P[3]}]
#set_property PACKAGE_PIN A14 [get_ports {GPIO_DIFF_IN_HPC_HA_N[3]}]
#set_property PACKAGE_PIN F15 [get_ports {GPIO_DIFF_IN_HPC_HA_P[4]}]
#set_property PACKAGE_PIN F14 [get_ports {GPIO_DIFF_IN_HPC_HA_N[4]}]
#set_property PACKAGE_PIN D14 [get_ports {GPIO_DIFF_IN_HPC_HA_P[5]}]
#set_property PACKAGE_PIN C14 [get_ports {GPIO_DIFF_IN_HPC_HA_N[5]}]
#set_property PACKAGE_PIN A19 [get_ports {GPIO_DIFF_IN_HPC_HA_P[6]}]
#set_property PACKAGE_PIN A18 [get_ports {GPIO_DIFF_IN_HPC_HA_N[6]}]
#set_property PACKAGE_PIN E18 [get_ports {GPIO_DIFF_IN_HPC_HA_P[7]}]
#set_property PACKAGE_PIN E17 [get_ports {GPIO_DIFF_IN_HPC_HA_N[7]}]
#set_property PACKAGE_PIN B17 [get_ports {GPIO_DIFF_IN_HPC_HA_P[8]}]
#set_property PACKAGE_PIN B16 [get_ports {GPIO_DIFF_IN_HPC_HA_N[8]}]
#set_property PACKAGE_PIN D19 [get_ports {GPIO_DIFF_IN_HPC_HA_P[9]}]
#set_property PACKAGE_PIN D18 [get_ports {GPIO_DIFF_IN_HPC_HA_N[9]}]
###

###
# XM105 J2 Connector Straight-across Jumpers HPC HB Bus
# OUT			IN
# FMC_HB00_CC_P		FMC_HB10_P
# FMC_HB00_CC_N		FMC_HB10_N
# FMC_HB01_P		FMC_HB11_P
# FMC_HB01_N		FMC_HB11_N
# FMC_HB02_P		FMC_HB12_P
# FMC_HB02_N		FMC_HB12_N
# FMC_HB03_P		FMC_HB13_P
# FMC_HB03_N		FMC_HB13_N
# FMC_HB04_P		FMC_HB14_P
# FMC_HB04_N		FMC_HB14_N
# FMC_HB05_P		FMC_HB15_P
# FMC_HB05_N		FMC_HB15_N
# FMC_HB06_CC_P		FMC_HB16_P
# FMC_HB06_CC_N		FMC_HB16_N
# FMC_HB07_P		FMC_HB17_CC_P
# FMC_HB07_N		FMC_HB17_CC_N
# FMC_HB08_P		FMC_HB18_P
# FMC_HB08_N		FMC_HB18_N
# FMC_HB09_P		FMC_HB19_P
# FMC_HB09_N		FMC_HB19_N
# HB Bus not connected on the KCU105 FMC HPC Connector
###

###
# XM105 J23 Connector Straight-across Jumpers HPC HA/HB Bus
# OUT			IN
# FMC_HB20_P		FMC_HB21_P
# FMC_HB20_N		FMC_HB21_N
# FMC_HA20_P		FMC_HA22_P
# FMC_HA20_N		FMC_HA22_N
# FMC_HA21_P		FMC_HA23_P
# FMC_HA21_N		FMC_HA23_N
#set_property PACKAGE_PIN C19 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[10]}]
#set_property PACKAGE_PIN B19 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[10]}]
#set_property PACKAGE_PIN E15 [get_ports {GPIO_DIFF_OUT_HPC_HA_P[11]}]
#set_property PACKAGE_PIN D15 [get_ports {GPIO_DIFF_OUT_HPC_HA_N[11]}]

#set_property PACKAGE_PIN C18 [get_ports {GPIO_DIFF_IN_HPC_HA_P[10]}]
#set_property PACKAGE_PIN C17 [get_ports {GPIO_DIFF_IN_HPC_HA_N[10]}]
#set_property PACKAGE_PIN B15 [get_ports {GPIO_DIFF_IN_HPC_HA_P[11]}]
#set_property PACKAGE_PIN A15 [get_ports {GPIO_DIFF_IN_HPC_HA_N[11]}]
# HB Bus not connected on the KCU105 FMC HPC Connector
###



set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[0]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[1]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[2]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[3]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[4]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[5]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[6]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[7]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[8]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[9]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[10]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[11]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[12]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[13]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[14]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[15]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_LPC_LA_P[16]}]

set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[0]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[1]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[2]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[3]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[4]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[5]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[6]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[7]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[8]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[9]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[10]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[11]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[12]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[13]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[14]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[15]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_LA_P[16]}]

set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[0]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[1]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[2]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[3]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[4]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[5]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[6]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[7]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[8]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[9]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[10]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[11]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[12]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[13]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[14]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[15]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_LPC_LA_P[16]}]

set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[0]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[1]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[2]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[3]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[4]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[5]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[6]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[7]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[8]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[9]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[10]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[11]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[12]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[13]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[14]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[15]}]
set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_LA_P[16]}]

#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[0]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[1]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[2]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[3]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[4]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[5]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[6]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[7]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[8]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[9]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[10]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_OUT_HPC_HA_P[11]}]

#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[0]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[1]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[2]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[3]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[4]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[5]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[6]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[7]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[8]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[9]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[10]}]
#set_property IOSTANDARD LVDS [get_ports {GPIO_DIFF_IN_HPC_HA_P[11]}]

