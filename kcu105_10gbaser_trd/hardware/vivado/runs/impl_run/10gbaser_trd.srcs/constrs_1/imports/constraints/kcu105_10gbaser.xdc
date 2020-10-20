
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
set_property PACKAGE_PIN P5 [get_ports refclk_n]
set_property PACKAGE_PIN P6 [get_ports refclk_p]

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



