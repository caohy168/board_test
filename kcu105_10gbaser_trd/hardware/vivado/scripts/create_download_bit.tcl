open_run impl_1
write_mem_info -force runs/impl_run/10gbaser_trd.runs/impl_1/kcu105_10gbaser_top.mmi 
exec updatemem -meminfo runs/impl_run/10gbaser_trd.runs/impl_1/kcu105_10gbaser_top.mmi \
-data runs/impl_run/10gbaser_trd.sdk/kcu105_10gbaser_top/Debug/kcu105_10gbaser_top.elf \
-bit runs/impl_run/10gbaser_trd.runs/impl_1/kcu105_10gbaser_top.bit \
-proc mac_phy_wrapper_i/mac_phy_i/microblaze_sub_system/microblaze_0 \
-out runs/impl_run/10gbaser_trd.runs/impl_1/kcu105_10gbaser_download.bit \
-force
