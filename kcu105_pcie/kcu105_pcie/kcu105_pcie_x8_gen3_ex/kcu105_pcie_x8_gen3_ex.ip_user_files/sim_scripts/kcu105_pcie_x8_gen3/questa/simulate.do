onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib kcu105_pcie_x8_gen3_opt

do {wave.do}

view wave
view structure
view signals

do {kcu105_pcie_x8_gen3.udo}

run -all

quit -force
