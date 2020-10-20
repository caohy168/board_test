onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bb_interface_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {bb_interface_fifo.udo}

run -all

quit -force
