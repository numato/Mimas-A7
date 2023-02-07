`timescale 1ns / 1ps
module seven_segment(
  input clk32,
  input crc_error,
  input card_1x,
  input card_2x,

  output [7:0]SevenSegment,
  output [2:0]SevenSegmentEnable
);

reg [15:0]count;
reg [31:0]seg_temp;
reg [2:0]enable;
parameter null= 8'b11111111;
  
always@(posedge clk32)
begin 
  count <= count + 1'b1;
end
   
always@(*)
begin
  case(count[15:14])
    2'b00 : begin
              enable = 3'b011;
              if(crc_error)
              begin
                if((card_1x || card_2x) != 1)
                  seg_temp = 8'b01100001;
              end
              else if((card_1x || card_2x) != 1)
                  seg_temp = 8'b01100001;
              else if(((card_1x) && (!card_2x)) || ((!card_1x) && (card_2x)))
                  seg_temp = 8'b10000011;
            end
    2'b01 : begin
              enable = 3'b101;
              if(crc_error)
              begin
                if((card_1x || card_2x) != 1)
                  seg_temp = 8'b11110101;
              end
              else if((card_1x || card_2x) != 1)
                  seg_temp = 8'b11110101;
              else if((card_1x) && (!card_2x))
                  seg_temp = 8'b10011111;
              else if((!card_1x) && (card_2x))
                  seg_temp = 8'b00100101;
            end
    2'b10 : begin
              enable = 3'b110;
              if(crc_error)
              begin
                if((card_1x || card_2x) != 1)
                  seg_temp = 8'b11110101;
              end
              else if((card_1x || card_2x) != 1)
                  seg_temp = 8'b11110101;
              else if((card_1x) && (!card_2x))
                  seg_temp = 8'b11111111;	
              else if((!card_1x) && (card_2x))
                  seg_temp = 8'b11111111;	
            end
    default: begin
               enable = 3'b111;
               seg_temp = 8'b11111111;
             end
  endcase
end
 
assign SevenSegmentEnable = enable;
assign SevenSegment = seg_temp;

endmodule
