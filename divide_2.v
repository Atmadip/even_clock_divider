module divide_2(clk, reset, clk_out);

input clk, reset;
output clk_out;
reg count;

always @ (posedge clk)begin 
if(reset)
    count = 1'b 0;
else
    count  = count + 1'b 1;
end
assign clk_out = (count == 1'b 1);
endmodule