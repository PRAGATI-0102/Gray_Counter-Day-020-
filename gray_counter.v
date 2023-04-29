`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2023 02:14:37 PM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(clk,reset,enable,out);

        input clk,reset,enable;
        output [7:0] out;
        reg [7:0] count;
        
        always@(posedge clk)
        if(reset)
            begin
            count <= 0;
            end
         else
            if(enable)
            begin
            count <= count + 1;
            end
         
         assign out = {count[7],(count[7] ^ count[6]),(count[6] ^ count[5]),(count[5] ^ count[4]),
                       (count[4] ^ count[3]),(count[3] ^ count[2]),(count[2] ^ count[1]),
                       (count[1] ^ count[0])};
         
            
endmodule
