onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L xlconstant_v1_1_6 -L xil_defaultlib -L ten_gig_eth_mac_v15_1_7 -L gtwizard_ultrascale_v1_7_7 -L ten_gig_eth_pcs_pma_v6_0_16 -L gigantic_mux -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mac_phy xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mac_phy.udo}

run -all

quit -force
