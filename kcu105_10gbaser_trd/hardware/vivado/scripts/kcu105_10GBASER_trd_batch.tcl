# Vivado Launch Script  for batch mode

source scripts/kcu105_10GBASER_trd.tcl
launch_run -to_step write_bitstream [get_runs impl_1]
wait_on_run impl_1 