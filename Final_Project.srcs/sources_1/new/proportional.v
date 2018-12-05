`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2018 05:46:27 PM
// Design Name: 
// Module Name: proportional
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


module proportional(
    input [7:0] error,
    input clk,
    output [11:0] p
    );
    
    parameter [3:0] co = 4'b0001;
    mult_gen_0 m(clk, co[3:0], error[7:0], p[11:0]);
    
endmodule
