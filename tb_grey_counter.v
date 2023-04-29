`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2023 03:02:41 PM
// Design Name: 
// Module Name: tb_grey_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_gray_counter;

        reg clk,reset,enable;
        wire [7:0]out;
        
        gray_counter dut(.clk(clk),.reset(reset),.enable(enable),.out(out));
        
        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
         initial
         begin

         reset = 1;
         enable = 0;
         #10;
        
         reset = 0;
         enable = 1;
         #250;
         
         enable = 0;
         #50;
         
         enable = 1;
         #100;
         
         enable = 0;
         #10;
        $finish;
        end
endmodule
