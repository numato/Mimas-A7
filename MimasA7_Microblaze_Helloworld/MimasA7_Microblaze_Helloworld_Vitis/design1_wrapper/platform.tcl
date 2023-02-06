# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct G:\Sample_codes\mimas_a7\MimasA7_Microblaze_Helloworld\MimasA7_Microblaze_Helloworld_Vitis\design1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source G:\Sample_codes\mimas_a7\MimasA7_Microblaze_Helloworld\MimasA7_Microblaze_Helloworld_Vitis\design1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design1_wrapper}\
-hw {G:\Sample_codes\mimas_a7\MimasA7_Microblaze_Helloworld\design1_wrapper.xsa}\
-out {G:/Sample_codes/mimas_a7/MimasA7_Microblaze_Helloworld/MimasA7_Microblaze_Helloworld_Vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {design1_wrapper}
platform generate -quick
platform generate
