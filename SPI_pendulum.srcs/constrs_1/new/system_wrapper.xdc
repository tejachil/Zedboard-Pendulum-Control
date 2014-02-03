# File:   system_wrapper.xdc
# Author: Vivek Gopal
# Description: Constraints (Pin Assignments) for system_wrapper module
# Created: September 21, 2013


set_property IOSTANDARD LVCMOS33 [get_ports MOSI]
set_property PACKAGE_PIN W11 [get_ports MOSI]

set_property IOSTANDARD LVCMOS33 [get_ports MISO]
set_property PACKAGE_PIN V10 [get_ports MISO]

set_property IOSTANDARD LVCMOS33 [get_ports SCLK]
set_property PACKAGE_PIN W8 [get_ports SCLK]

set_property IOSTANDARD LVCMOS33 [get_ports SS1]
set_property PACKAGE_PIN W10 [get_ports SS1]

set_property IOSTANDARD LVCMOS33 [get_ports SS0]
set_property PACKAGE_PIN V12 [get_ports SS0]

set_property IOSTANDARD LVCMOS33 [get_ports SS2]
set_property PACKAGE_PIN W12 [get_ports SS2]

set_property IOSTANDARD LVCMOS33 [get_ports GPIO_O[0]]
set_property PACKAGE_PIN U14 [get_ports GPIO_O[0]]

set_property IOSTANDARD LVCMOS33 [get_ports GPIO_O[1]]
set_property PACKAGE_PIN U19 [get_ports GPIO_O[1]]

set_property IOSTANDARD LVCMOS33 [get_ports GPIO_O[2]]
set_property PACKAGE_PIN W22 [get_ports GPIO_O[2]]

set_property IOSTANDARD LVCMOS33 [get_ports GPIO_O[3]]
set_property PACKAGE_PIN V22 [get_ports GPIO_O[3]]