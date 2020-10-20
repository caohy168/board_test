onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib tpu_clock_mm_opt

do {wave.do}

view wave
view structure
view signals

do {tpu_clock_mm.udo}

run -all

quit -force
