# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_property board em.avnet.com:zynq:zed:d [current_project]
set_param project.compositeFile.enableAutoGeneration 0

add_files /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_gpio_1_1/system_axi_gpio_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_gpio_1_1/system_axi_gpio_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_gpio_1_1/system_axi_gpio_1_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/ip/system_auto_pc_37/system_auto_pc_37_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/system_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/chris/Gen-3/Gen-3.srcs/sources_1/bd/system/system.bd]

read_verilog /home/chris/Gen-3/Gen-3.srcs/sources_1/imports/hdl/system_wrapper.v
read_xdc /home/chris/Gen-3/Gen-3.srcs/constrs_1/new/system.xdc
set_property used_in_implementation false [get_files /home/chris/Gen-3/Gen-3.srcs/constrs_1/new/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/chris/Gen-3/Gen-3.data/wt [current_project]
set_property parent.project_dir /home/chris/Gen-3 [current_project]
synth_design -top system_wrapper -part xc7z020clg484-1
write_checkpoint system_wrapper.dcp
report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb
