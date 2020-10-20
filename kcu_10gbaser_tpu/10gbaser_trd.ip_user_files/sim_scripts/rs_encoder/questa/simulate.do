onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rs_encoder_opt

do {wave.do}

view wave
view structure
view signals

do {rs_encoder.udo}

run -all

quit -force
