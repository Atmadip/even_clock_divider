`timescale 1ns/1ps

module divide_6(clk, reset, clk_out);

input clk, reset;
output clk_out;
reg [2:0] count;

always @ (posedge clk)begin 
if(reset)
    count = 1'b 0;
else
    count  = (count + 1) % 6;
end
assign clk_out = (count == 2) || (count == 3) || (count == 4);
endmodule