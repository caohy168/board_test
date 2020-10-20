onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ila_radio_receive -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_radio_receive xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ila_radio_receive.udo}

run -all

endsim

quit -force
