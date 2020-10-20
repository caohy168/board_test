onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+tpu_clock_mm -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.tpu_clock_mm xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {tpu_clock_mm.udo}

run -all

endsim

quit -force
