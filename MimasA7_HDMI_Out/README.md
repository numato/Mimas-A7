Mimas A7 HDMI Output Project
Numato Lab
https://www.numato.com

This package contains source and other files necessary to build this project for Mimas A7 FPGA Development board.
The project is built on Vivado design suite 2022.1.

This project is created by selecting the part number of Mimas A7 board instead of selecting the board itself.

Open the project(.xpr) file then Generate the Bitstream along with binary file(select it in Generate Bitstream settings). After the Bitstream is generated successfully, the .bit and .bin files will be created in the "MimasA7_HDMI_Out.runs-->impl_1" folder. Now program the .bit file and connect one end of the HDMI cable to the board's HDMI out and the other end to the monitor and observe the output. 

NOTE: After programming the .bin file make sure to recycle the power and then check the output.