set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

####################################################################################################################
#                                               CLOCK 100MHz                                                       #
####################################################################################################################
set_property -dict { PACKAGE_PIN "H4"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { clk100 }]     ;                # IO_L12P_T1_MRCC_35            Sch = CLK1 

####################################################################################################################
#                                               Micro SD                                                           #
####################################################################################################################
set_property -dict { PACKAGE_PIN "R16"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sd_clk }];                      # IO_L22N_T3_A04_D20_14         Sch = SD_SCK 
set_property -dict { PACKAGE_PIN "R18"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sd_cs  }];                      # IO_L20P_T3_A08_D24_14         Sch = SD_CS
set_property -dict { PACKAGE_PIN "P15"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sd_miso}];                      # IO_L22P_T3_A05_D21_14         Sch = SD_SDO
set_property -dict { PACKAGE_PIN "T18"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sd_mosi}];                      # IO_L20N_T3_A07_D23_14         Sch = SD_SDI

####################################################################################################################
#                                               LEDs                                                               #
####################################################################################################################
set_property -dict { PACKAGE_PIN "K17"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { led[0] }];                      # IO_L21P_T3_DQS_15             Sch = LED0 
set_property -dict { PACKAGE_PIN "J17"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { led[1] }];                      # IO_L21N_T3_DQS_A18_15         Sch = LED1
set_property -dict { PACKAGE_PIN "L14"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { led[2] }];                      # IO_L22P_T3_A17_15             Sch = LED2
set_property -dict { PACKAGE_PIN "L15"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { led[3] }];                      # IO_L22N_T3_A16_15             Sch = LED3

####################################################################################################################
#                                               Seven Segment                                                      #
####################################################################################################################
set_property -dict { PACKAGE_PIN "N3"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { en[0] }];                   # IO_L19N_T3_VREF_35            Sch = 7_SEG1_EN
set_property -dict { PACKAGE_PIN "R1"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { en[1] }];                   # IO_L20P_T3_35                 Sch = 7_SEG2_EN
set_property -dict { PACKAGE_PIN "P1"    IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { en[2] }];                   # IO_L20N_T3_35                 Sch = 7_SEG3_EN
set_property -dict { PACKAGE_PIN "P4"    IOSTANDARD LVCMOS33 } [get_ports { segment[7] }]; 
set_property -dict { PACKAGE_PIN "N4"    IOSTANDARD LVCMOS33 } [get_ports { segment[6] }]; 
set_property -dict { PACKAGE_PIN "M3"    IOSTANDARD LVCMOS33 } [get_ports { segment[5] }]; 
set_property -dict { PACKAGE_PIN "L5"    IOSTANDARD LVCMOS33 } [get_ports { segment[4] }]; 
set_property -dict { PACKAGE_PIN "L6"    IOSTANDARD LVCMOS33 } [get_ports { segment[3] }]; 
set_property -dict { PACKAGE_PIN "M6"    IOSTANDARD LVCMOS33 } [get_ports { segment[2] }]; 
set_property -dict { PACKAGE_PIN "P5"    IOSTANDARD LVCMOS33 } [get_ports { segment[1] }]; 
set_property -dict { PACKAGE_PIN "M5"    IOSTANDARD LVCMOS33 } [get_ports { segment[0] }];