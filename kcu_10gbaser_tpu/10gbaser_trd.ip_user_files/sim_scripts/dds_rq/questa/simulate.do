onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds_rq_opt

do {wave.do}

view wave
view structure
view signals

do {dds_rq.udo}

run -all

quit -force
