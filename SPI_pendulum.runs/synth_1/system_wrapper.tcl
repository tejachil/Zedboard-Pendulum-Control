# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0

add_files /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/ip/system_processing_system7_1_0/system_processing_system7_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/system_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/bd/system/system.bd]

read_verilog /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/sources_1/imports/hdl/system_wrapper.v
read_xdc /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/constrs_1/new/system_wrapper.xdc
set_property used_in_implementation false [get_files /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.srcs/constrs_1/new/system_wrapper.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/xps/Documents/Zedboard-Pendulum-Control/SPI_pendulum.data/wt [current_project]
set_property parent.project_dir /home/xps/Documents/Zedboard-Pendulum-Control [current_project]
synth_design -top system_wrapper -part xc7z020clg484-1
write_checkpoint system_wrapper.dcp
report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb
