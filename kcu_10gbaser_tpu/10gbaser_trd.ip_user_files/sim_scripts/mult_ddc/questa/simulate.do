onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_ddc_opt

do {wave.do}

view wave
view structure
view signals

do {mult_ddc.udo}

run -all

quit -force
