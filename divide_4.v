module divide_4(clk, reset, clk_out);

input clk, reset;
output clk_out;
reg [1:0] count;

always @ (posedge clk)begin 
if(reset)
    count = 1'b 0;
else
    count  = count + 1'b 1;
end
assign clk_out = (count == 1) || (count == 2) ;
endmodule