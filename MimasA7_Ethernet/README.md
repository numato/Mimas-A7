Mimas A7 Gigabit Ethernet Project
Numato Lab
https://www.numato.com

This package contains source and other files necessary to build this project for Mimas A7 FPGA Development board.
The project is built on Vivado design suite 2022.1 and Vitis 2022.1.

This project is created by selecting the part number of Mimas A7 board instead of selecting the board itself.
 

Open the project(.xpr) file. Then Generate the Bitstream along with binary file
(select it in Generate Bitstream settings). After the Bitstream is generated successfully, the .bit and .bin 
files will be created in the "MimasA7_Ethernet.runs-->impl_1" folder.

Program the FPGA on Mimas A7 with a simple bootloop program by selecting “Program FPGA” option from “Xilinx” menu.
Open the COM port corresponding to Mimas A7 in any serial terminal (PuTTY, Tera Term etc..) with 9600 baud-rate.  
Now, right click on the .elf file in the Project Explorer and select “Launch on Hardware”(NOTE: ELF file needs to be 
downloaded to MimasA7 via JTAG after programming .bit file). Observe the details displayed on serial terminal.

Connect Ethernet cable to the board and the other end to PC Ethernet port. Go to Control Panel. Select “Network and Sharing Centre” 
option in “Network and Internet”. Select “Change adapter settings”. Right click on Ethernet, click properties and select “IPv4”. 
Change the IPv4 address to 192.168.1.15 (any IP address can be used) and default gateway to 192.168.1.1.

Open a telnet session with IP Address 192.168.1.10 (IP address as per main.c) at port 7, give input through keyboard and observe the output. 
If you enter a character from keyboard, you can observe the transmitted and echoed characters on telnet.

 Note: Bit file and Bin file is not merged with Elf file due to lack of BRAM Memory.