# seven segment display
set_property -dict { PACKAGE_PIN Y11 IOSTANDARD LVCMOS33} [get_ports { seven_segment[0] }];
set_property -dict { PACKAGE_PIN AA11 IOSTANDARD LVCMOS33} [get_ports { seven_segment[1] }];
set_property -dict { PACKAGE_PIN Y10 IOSTANDARD LVCMOS33} [get_ports { seven_segment[2] }];
set_property -dict { PACKAGE_PIN AA9 IOSTANDARD LVCMOS33} [get_ports { seven_segment[3] }];
set_property -dict { PACKAGE_PIN W12 IOSTANDARD LVCMOS33} [get_ports { seven_segment[4] }];
set_property -dict { PACKAGE_PIN W11 IOSTANDARD LVCMOS33} [get_ports { seven_segment[5] }];
set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports { seven_segment[6] }];
set_property -dict { PACKAGE_PIN W8 IOSTANDARD LVCMOS33} [get_ports { digit_selection_out }];

set_property -dict { PACKAGE_PIN F22 IOSTANDARD LVCMOS33} [get_ports { bcd[0] }];
set_property -dict { PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports { bcd[1] }];
set_property -dict { PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports { bcd[2] }];
set_property -dict { PACKAGE_PIN F21 IOSTANDARD LVCMOS33} [get_ports { bcd[3] }];
set_property -dict { PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports { digit_selection_in }];
