onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_layer1_transfer_opt

do {wave.do}

view wave
view structure
view signals

do {ila_layer1_transfer.udo}

run -all

quit -force
