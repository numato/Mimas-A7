set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

####################################################################################################################
#                                               CLOCK 100MHz                                                       #
####################################################################################################################
set_property PACKAGE_PIN H4 [get_ports clk100]
set_property IOSTANDARD LVCMOS33 [get_ports clk100]

####################################################################################################################
#                                               Micro SD                                                           #
####################################################################################################################
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sd_clk]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sd_cs]
set_property PACKAGE_PIN P15 [get_ports sd_miso]
set_property IOSTANDARD LVCMOS33 [get_ports sd_miso]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sd_mosi]

####################################################################################################################
#                                               LEDs                                                               #
####################################################################################################################
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {led[3]}]

####################################################################################################################
#                                               Seven Segment                                                      #
####################################################################################################################
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {en[0]}]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {en[1]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {en[2]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {segment[7]}]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS33} [get_ports {segment[6]}]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {segment[5]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports {segment[4]}]
set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVCMOS33} [get_ports {segment[3]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS33} [get_ports {segment[2]}]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {segment[1]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVCMOS33} [get_ports {segment[0]}]

create_clock -period 10.000 -name clk100 -waveform {0.000 5.000} -add [get_ports clk100]

