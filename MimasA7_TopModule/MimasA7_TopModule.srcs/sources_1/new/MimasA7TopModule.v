`timescale 1ns / 1ps

module MimasA7TopModule(
  input Clk,
  input rst,
  input  [7:0] DPSwitch,
  input  [3:0] Switch,
  output [7:0] SevenSegment,
  output [3:0] Enable,
  output [7:0] LED
);
  
wire RST_n = ~rst;  
  
MimasA7SevenSegmentDisplay MimasA7SevenSegmentDisplay_i(
  .Clk(Clk),
  .DPSwitch(DPSwitch),
  .SevenSegment(SevenSegment),
  .Enable(Enable)
  );
  
MimasA7RunningLight MimasA7RunningLight_i(
  .Clk(Clk),
  .RST_n(RST_n),
  .Switch(Switch),
  .LED(LED)
  );
   
endmodule
