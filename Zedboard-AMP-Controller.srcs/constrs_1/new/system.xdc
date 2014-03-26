# File:   system_wrapper.xdc
# Author: Chris McCarty
# Description: Constraints (Pin Assignments) for system_wrapper module
# Created: March 22, 2014



#set_property BOARD_PIN {SS2} [get_ports {SS2}]
set_property PACKAGE_PIN W12 [get_ports SS2]
set_property IOSTANDARD LVCMOS33 [get_ports SS2]

#set_property BOARD_PIN {MOSI} [get_ports {MOSI}]
set_property PACKAGE_PIN W11 [get_ports MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports MOSI]

#set_property BOARD_PIN {SS1} [get_ports {SS1}]
set_property PACKAGE_PIN W10 [get_ports SS1]
set_property IOSTANDARD LVCMOS33 [get_ports SS1]

#set_property BOARD_PIN {SCLK} [get_ports {SCLK}]
set_property PACKAGE_PIN W8 [get_ports SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK]



#set_property BOARD_PIN {SS0} [get_ports {SS0}]
set_property PACKAGE_PIN V12 [get_ports SS0]
set_property IOSTANDARD LVCMOS33 [get_ports SS0]

#set_property BOARD_PIN {MISO} [get_ports {MISO}]
set_property PACKAGE_PIN V10 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]

set_property PACKAGE_PIN V9 [get_ports SS3]
set_property IOSTANDARD LVCMOS33 [get_ports SS3]