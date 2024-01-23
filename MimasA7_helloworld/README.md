Mimas A7 HelloWorld Project
Numato Lab
https://www.numato.com

This package contains source and other files necessary to build this project for Mimas A7 FPGA Development board.
The project is built on Vivado design suite 2023.2.1 and Vitis 2023.2.1



Open the project(.xpr) file and Open the Block Design. Then Generate the Bitstream along with binary file (select it in Generate Bitstream settings). After the Bitstream is generated successfully, the .bit and .bin files will be created in the "MimasA7_helloworld.runs-->impl_1" folder.

Then export the generated bitstream by selecting "Export Hardware" under "File--> Export". Include the bitstream while exporting the hardware. Then launch Vitis IDE and program the board from Vitis and meanwhile, open any Serial Terminal corresponding to the board's COM Port and enter the Baud Rate as 115200 and after the board is programmed, observe the output.

NOTE: After programming the .bin file make sure to recycle the power and then check the output.