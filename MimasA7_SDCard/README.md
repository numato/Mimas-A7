Mimas A7 SD Card Project
Numato Lab
https://www.numato.com

This package contains source and other files necessary to build this project for Mimas A7 FPGA Development board.
The project is built on Vivado design suite 2023.2.1


Open the project(.xpr) file then Generate the Bitstream along with binary file(select it in Generate Bitstream settings). After the Bitstream is generated successfully, the .bit and .bin files will be created in the "MimasA7_SDCard.runs-->impl_1" folder. Now insert the SD Card in the SD card slot and then power on the board. Then program the .bit file and check the output on the Seven Segment display. 

NOTE: After programming the .bin file make sure to recycle the power and then check the output.