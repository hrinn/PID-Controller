`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2018 03:24:07 PM
// Design Name: 
// Module Name: der
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


module derivative(
    input [7:0] error,
    input clk,
    output [11:0] d
    );
    
    parameter [3:0] co = 4'b0001;
    reg [7:0] prev;
    wire [7:0] out;
    c_addsub_1 s(error [7:0], prev [7:0], clk, 1'b1, out [7:0]);
    always @ (posedge clk)
    begin
        prev [7:0] <= out [7:0];
    end
    mult_gen_0 m(clk, co [3:0], out [7:0], d [11:0]);
    
    
endmodule
