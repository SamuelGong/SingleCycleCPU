`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:24 03/19/2014 
// Design Name: 
// Module Name:    and32 
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
module  or_bit_32(input [31:0] A,
						output o
					  );
					  
	wire [31:0] B = 32'h0;
	assign o = A|B ? 0 : 1;		//32λ����λ�������32λ��=0�����o=1��
endmodule
