vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../10gbaser_trd.srcs/sources_1/ip/ila_radio_transmit/hdl/verilog" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../10gbaser_trd.srcs/sources_1/ip/ila_radio_transmit/hdl/verilog" \
"../../../../10gbaser_trd.srcs/sources_1/ip/ila_radio_transmit/sim/ila_radio_transmit.v" \

vlog -work xil_defaultlib \
"glbl.v"

