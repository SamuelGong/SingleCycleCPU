`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:06 04/08/2017 
// Design Name: 
// Module Name:    zeroExt_16T32 
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
module zeroExt_16T32(	input [15:0] i,
								output[31:0] o
							);
	assign o = {16'h0000,i[15:0]};
endmodule
