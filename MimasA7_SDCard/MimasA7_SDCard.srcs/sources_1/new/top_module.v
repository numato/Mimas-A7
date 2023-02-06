`timescale 1ns / 1ps

module top_module(
  input clk100, 
  input reset,
  input sd_miso,
  output [2:0]en,
  output [7:0]segment,
  output sd_mosi,
  output sd_clk,
  output sd_cs,
  output [3:0]led
);

reg [2:0]counter = 0;
reg clk32;

always@(posedge clk100)
begin
  counter <= counter + 1'b1;
  clk32   <= counter[2];
end

// Instantiate the sd_card module
sdcard_test sdcardtest(
  .clk32     (clk32), 
  .sd_clk    (sd_clk), 
  .sd_cs     (sd_cs), 
  .sd_mosi   (sd_mosi), 
  .sd_miso   (sd_miso), 
  .sd_cd     (led[3]), 
  .crc_error (crc_error), 
  .card_1x   (card_1x), 
  .card_2x   (card_2x)
  );

seven_segment sevensegment(
  .clk32              (clk32),
  .crc_error          (crc_error),
  .card_1x            (card_1x),
  .card_2x            (card_2x),
  .SevenSegment       (segment),
  .SevenSegmentEnable (en)
  );
  
endmodule 
