onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+rs_decoder -L xpm -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L c_reg_fd_v12_0_6 -L c_mux_bit_v12_0_6 -L c_mux_bus_v12_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L c_gate_bit_v12_0_6 -L c_compare_v12_0_6 -L xbip_counter_v3_0_6 -L c_counter_binary_v12_0_14 -L c_shift_ram_v12_0_14 -L rs_toolbox_v9_0_8 -L rs_decoder_v9_0_17 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rs_decoder xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {rs_decoder.udo}

run -all

endsim

quit -force
