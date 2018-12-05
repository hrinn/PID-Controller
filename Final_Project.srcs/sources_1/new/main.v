`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dr. Callenes CPE 133
// Engineers: Hayden Rinn, Luis Gomez, and Matt Hoertig 
// 
// Create Date: 11/13/2018 05:40:18 PM
// Design Name: PID Controller
// Module Name: main
// Project Name: Final Project
// Target Devices: Basys3
// Tool Versions: 
// Description: Implements a PID Controller using Verilog
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    input clk,
    input [7:0] error,
    output [11:0] sum
    );
    
    wire [11:0] p;
    proportional pm(error [7:0], clk, p[11:0]);
    
    wire [11:0] i;
    integral im(error [7:0], clk, i [11:0]);
    
    wire [11:0] d;
    derivative dm(error [7:0], clk, d [11:0]);
    
     wire [11:0] pi;
    c_addsub_2 add1(p [11:0], i [11:0], clk, 1'b1, pi [11:0]);
    c_addsub_2 add2(pi [11:0], d [11:0], clk, 1'b1, sum [11:0]);
    
    
    
endmodule
