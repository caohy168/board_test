onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ila_gen_mon_axis -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_gen_mon_axis xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ila_gen_mon_axis.udo}

run -all

endsim

quit -force
