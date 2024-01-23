set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

####################################################################################################################
#                                               CLOCK 100MHz                                                       #
####################################################################################################################
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports Clk]

####################################################################################################################
#                                                   RESET - S3                                                     #
####################################################################################################################
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports rst]

####################################################################################################################
#                                               Seven Segment                                                      #
####################################################################################################################
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports {Enable[0]}]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports {Enable[1]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {Enable[2]}]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports {Enable[3]}]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[7]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[6]}]
set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[5]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[4]}]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[3]}]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[2]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[1]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports {SevenSegment[0]}]

####################################################################################################################
#                                               DIP Switches                                                       #
####################################################################################################################
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[7]}]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[6]}]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[5]}]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[4]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[3]}]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[2]}]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[1]}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports {DPSwitch[0]}]

####################################################################################################################
#                                               LEDs                                                               #
####################################################################################################################
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports {LED[7]}]

####################################################################################################################
#                                               Push Buttons                                                       #
####################################################################################################################
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {Switch[0]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {Switch[1]}]
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {Switch[2]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {Switch[3]}]

create_clock -period 10.000 -name Clk -waveform {0.000 5.000} [get_ports Clk]
