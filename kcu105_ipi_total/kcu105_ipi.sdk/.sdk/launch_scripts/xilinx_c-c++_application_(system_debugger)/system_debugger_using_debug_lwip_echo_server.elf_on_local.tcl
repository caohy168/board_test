connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A5F54F" && level==0} -index 0
fpga -file D:/project/ethnet/kcu105_ipi_total/kcu105_ipi.sdk/TPU_TOP_hw_platform_0/TPU_TOP.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A5F54F"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A5F54F"} -index 0
dow D:/project/ethnet/kcu105_ipi_total/kcu105_ipi.sdk/lwip_echo_server/Debug/lwip_echo_server.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A5F54F"} -index 0
con
