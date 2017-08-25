`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:02 04/09/2017 
// Design Name: 
// Module Name:    MUX16T1_32 
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
module  MUX16T1_32(input [3:0]s,
						 input [31:0]I0,
						 input [31:0]I1,
						 input [31:0]I2,
						 input [31:0]I3,
						 input [31:0]I4,
						 input [31:0]I5,
						 input [31:0]I6,
						 input [31:0]I7,
                   input [31:0]I8,
						 input [31:0]I9,
						 input [31:0]I10,
						 input [31:0]I11,
						 input [31:0]I12,
						 input [31:0]I13,
						 input [31:0]I14,
						 input [31:0]I15,						 
						 output reg [31:0]o
						 );
		always @ *			 
			case(s)
				4'd0: o = I0;
				4'd1: o = I1;
				4'd2: o = I2;
				4'd3: o = I3;
				4'd4: o = I4;
				4'd5: o = I5;
				4'd6: o = I6;
				4'd7: o = I7;
				4'd8: o = I8;
				4'd9: o = I9;
				4'd10: o = I10;
				4'd11: o = I11;
				4'd12: o = I12;
				4'd13: o = I13;
				4'd14: o = I14;
				4'd15: o = I15;
			endcase	
			
endmodule
