set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
##Clock Signal
set_property -dict { PACKAGE_PIN "H4"    IOSTANDARD LVCMOS33 } [get_ports { clk_in }];
set_property -dict { PACKAGE_PIN "M2"    IOSTANDARD LVCMOS33 } [get_ports { reset }]; 
###HDMI out  
set_property -dict { PACKAGE_PIN "A1"    IOSTANDARD TMDS_33  } [get_ports { data_n[0] }];  
set_property -dict { PACKAGE_PIN "B1"    IOSTANDARD TMDS_33  } [get_ports { data_p[0] }];  
set_property -dict { PACKAGE_PIN "D1"    IOSTANDARD TMDS_33  } [get_ports { data_n[1] }];  
set_property -dict { PACKAGE_PIN "E1"    IOSTANDARD TMDS_33  } [get_ports { data_p[1] }]; 
set_property -dict { PACKAGE_PIN "F1"    IOSTANDARD TMDS_33  } [get_ports { data_n[2] }];  
set_property -dict { PACKAGE_PIN "G1"    IOSTANDARD TMDS_33  } [get_ports { data_p[2] }]; 
set_property -dict { PACKAGE_PIN "K3"    IOSTANDARD TMDS_33  } [get_ports { clk_n}]; 
set_property -dict { PACKAGE_PIN "L3"    IOSTANDARD TMDS_33  } [get_ports { clk_p}];