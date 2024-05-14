`timescale 1ns / 1ps


module even_divide_tb();

reg clk, reset;
//reg [1:0] case_divide;
wire out;

even_divide UUT (clk, reset, out);

always #5 clk = ~clk;
initial begin
reset = 1'b 0;
clk = 1'b 0;
//case_divide = 2'b 00;
#100;

$finish;
end

endmodule
