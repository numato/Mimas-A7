# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\MEGHAM\Documents\megha\Projects\MIMAS_A7\helloworld\helloworld\VITIS\helloworld_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\MEGHAM\Documents\megha\Projects\MIMAS_A7\helloworld\helloworld\VITIS\helloworld_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {helloworld_wrapper}\
-hw {C:\Users\MEGHAM\Documents\megha\Projects\MIMAS_A7\helloworld\helloworld\VITIS\helloworld_wrapper.xsa}\
-out {C:/Users/MEGHAM/Documents/megha/Projects/MIMAS_A7/helloworld/helloworld/VITIS}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {helloworld_wrapper}
platform generate -quick
platform generate
platform generate
