`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:31 04/08/2017 
// Design Name: 
// Module Name:    signExt_16T32 
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
module signExt_16T32(	input [15:0] i,
								output [31:0] o
							);
	assign o = i[15] ? {16'hFFFF,i[15:0]} : {16'h0000,i[15:0]};
endmodule
