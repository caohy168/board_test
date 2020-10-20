onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axis_fifo_t -L xpm -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_fifo_t xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axis_fifo_t.udo}

run -all

endsim

quit -force
