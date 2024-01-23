# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\MEGHAM\Documents\megha\Mimas_A7_23\MimasA7_Ethernet\My_Vitis\sample_design_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\MEGHAM\Documents\megha\Mimas_A7_23\MimasA7_Ethernet\My_Vitis\sample_design_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {sample_design_wrapper}\
-hw {C:\Users\MEGHAM\Documents\megha\Mimas_A7_23\MimasA7_Ethernet\My_Vitis\sample_design_wrapper.xsa}\
-out {C:/Users/MEGHAM/Documents/megha/Mimas_A7_23/MimasA7_Ethernet/My_Vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {sample_design_wrapper}
platform generate -quick
bsp reload
bsp write
platform generate
