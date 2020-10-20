open_project ../kcu105_ipi.xpr
open_run impl_1
remove_files -quiet {*.elf}
add_files -norecurse ../kcu105_ipi.sdk/blinkbist/Debug/blinkbist.elf
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {../kcu105_ipi.sdk/blinkbist/Debug/blinkbist.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {../kcu105_ipi.sdk/blinkbist/Debug/blinkbist.elf}]
write_bitstream -force blinkbist.bit
remove_files ../kcu105_ipi.sdk/blinkbist/Debug/blinkbist.elf
add_files -norecurse ../kcu105_ipi.sdk/ipi_app/Debug/ipi_app.elf
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {../kcu105_ipi.sdk/ipi_app/Debug/ipi_app.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {../kcu105_ipi.sdk/ipi_app/Debug/ipi_app.elf}]
write_bitstream -force ipi_app.bit
remove_files ../kcu105_ipi.sdk/ipi_app/Debug/ipi_app.elf
add_files -norecurse ../kcu105_ipi.sdk/lwip_echo_server/Debug/lwip_echo_server.elf
set_property SCOPED_TO_REF system [get_files -all -of_objects [get_fileset sources_1] {../kcu105_ipi.sdk/lwip_echo_server/Debug/lwip_echo_server.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {../kcu105_ipi.sdk/lwip_echo_server/Debug/lwip_echo_server.elf}]
write_bitstream -force lwip_echo_server.bit
remove_files ../kcu105_ipi.sdk/lwip_echo_server/Debug/lwip_echo_server.elf
close_project
