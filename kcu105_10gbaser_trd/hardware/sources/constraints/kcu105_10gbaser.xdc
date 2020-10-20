
#Clocks constrained in the IP level xdc, hence below constraint is not required
#create_clock -period 6.400 -name refclk -waveform {0.000 3.200} [get_ports refclk_p]

set_property PACKAGE_PIN AL8 [get_ports {tx_disable[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tx_disable[0]}]

set_property PACKAGE_PIN D28 [get_ports {tx_disable[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {tx_disable[1]}]

#GPIO LED 6
set_property PACKAGE_PIN R23 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[0]}]
#GPIO LED 5
set_property PACKAGE_PIN M22 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[1]}]
#GPIO LED 4
set_property PACKAGE_PIN N22 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[2]}]

#CPU_RESET Push button
set_property PACKAGE_PIN AN8 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

# SFP GT in bank 226 sourced by Si570 clock in Bank 227
set_property PACKAGE_PIN P6 [get_ports refclk_p]
set_property PACKAGE_PIN P5 [get_ports refclk_n]

# SFP GT in bank 226 sourced by SMA clock
#set_property PACKAGE_PIN V6 [get_ports refclk_p]
#set_property PACKAGE_PIN V5 [get_ports refclk_n]

# Map to SFP0
# Channel primitive location constraint
#set_property LOC GTHE3_CHANNEL_X0Y10 [get_cells -hierarchical -filter {NAME =~ *mac_phy_ch0*gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]
# Map to SFP1
# Channel primitive location constraint
#set_property LOC GTHE3_CHANNEL_X0Y9 [get_cells -hierarchical -filter {NAME =~ *mac_phy_ch1*gen_channel_container[0].*gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST}]

#set_property PACKAGE_PIN U4 [get_ports xphy_txp[0]]
#set_property PACKAGE_PIN U3 [get_ports xphy_txn[0]]
#set_property PACKAGE_PIN T2 [get_ports xphy_rxp[0]]
#set_property PACKAGE_PIN T1 [get_ports xphy_rxn[0]]

set_clock_groups -name async -asynchronous -group [get_clocks -include_generated_clocks -of [get_nets mac_phy_wrapper_i/mac_phy_i/mac_phy_ch0_txusrclk2_out]] -group [get_clocks -include_generated_clocks refclk_p]

set_property PACKAGE_PIN G25 [get_ports UART_rxd]
set_property PACKAGE_PIN K26 [get_ports UART_txd]
set_property IOSTANDARD LVCMOS18 [get_ports UART_rxd]
set_property IOSTANDARD LVCMOS18 [get_ports UART_txd]


## SYSMON
set_property IOSTANDARD ANALOG [get_ports vauxp0]
set_property PACKAGE_PIN E13 [get_ports vauxn0]
set_property PACKAGE_PIN F13 [get_ports vauxp0]
set_property IOSTANDARD ANALOG [get_ports vauxn0]
set_property IOSTANDARD ANALOG [get_ports vauxp8]
set_property PACKAGE_PIN B11 [get_ports vauxn8]
set_property PACKAGE_PIN C11 [get_ports vauxp8]
set_property IOSTANDARD ANALOG [get_ports vauxn8]
set_property IOSTANDARD ANALOG [get_ports vauxp2]
set_property PACKAGE_PIN J13 [get_ports vauxp2]
set_property PACKAGE_PIN H13 [get_ports vauxn2]
set_property IOSTANDARD ANALOG [get_ports vauxn2]
set_property IOSTANDARD ANALOG [get_ports vp]
set_property PACKAGE_PIN V12 [get_ports vp]
set_property PACKAGE_PIN W11 [get_ports vn]
set_property IOSTANDARD ANALOG [get_ports vn]
set_property PACKAGE_PIN T27 [get_ports {muxaddr_out[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {muxaddr_out[0]}]
set_property PACKAGE_PIN R27 [get_ports {muxaddr_out[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {muxaddr_out[1]}]
set_property PACKAGE_PIN N27 [get_ports {muxaddr_out[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {muxaddr_out[2]}]



