file copy -force ../kcu105_pcie_x8_gen3_ex/kcu105_pcie_x8_gen3_ex.runs/impl_1/xilinx_pcie3_uscale_ep.bit .
write_cfgmem -force -format MCS -size 32 -interface SPIx8 -loadbit "up 0x00000000 xilinx_pcie3_uscale_ep.bit" kcu105_pcie_x8_gen3.mcs
