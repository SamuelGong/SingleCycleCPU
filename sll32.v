`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:14 04/09/2017 
// Design Name: 
// Module Name:    sll32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sll32(input [31:0] A,
				 input [31:0] B,
				 output [31:0] res
				);	
		assign res = A << B[10:6];
endmodule

