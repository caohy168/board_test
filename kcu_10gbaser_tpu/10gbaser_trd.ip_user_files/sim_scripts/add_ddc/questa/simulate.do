onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_ddc_opt

do {wave.do}

view wave
view structure
view signals

do {add_ddc.udo}

run -all

quit -force
