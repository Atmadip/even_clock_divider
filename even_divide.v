`timescale 1ns / 1ps


module even_divide(clk, reset, out);

input clk, reset;
//input [1:0] case_divide; 
output out;
parameter case_divide = 2;
generate
case(case_divide)
    00 : divide_2 uu1(clk, reset, out);
    01 : divide_4 uu2(clk, reset, out);
    10 : divide_6 uu3(clk, reset, out);
    11 : divide_8 uu4(clk, reset, out);
endcase
endgenerate




endmodule
