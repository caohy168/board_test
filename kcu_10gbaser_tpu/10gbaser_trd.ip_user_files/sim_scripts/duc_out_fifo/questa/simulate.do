onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib duc_out_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {duc_out_fifo.udo}

run -all

quit -force
