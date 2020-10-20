onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_interface_opt

do {wave.do}

view wave
view structure
view signals

do {ila_interface.udo}

run -all

quit -force
