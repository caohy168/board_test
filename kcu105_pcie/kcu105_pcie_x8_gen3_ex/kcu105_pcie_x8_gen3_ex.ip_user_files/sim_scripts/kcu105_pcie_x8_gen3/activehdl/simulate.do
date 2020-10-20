onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+kcu105_pcie_x8_gen3 -L xpm -L gtwizard_ultrascale_v1_7_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.kcu105_pcie_x8_gen3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {kcu105_pcie_x8_gen3.udo}

run -all

endsim

quit -force
