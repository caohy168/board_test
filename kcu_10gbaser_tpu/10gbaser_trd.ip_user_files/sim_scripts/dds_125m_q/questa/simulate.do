onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds_125m_q_opt

do {wave.do}

view wave
view structure
view signals

do {dds_125m_q.udo}

run -all

quit -force
