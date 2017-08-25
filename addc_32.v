`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:20 02/26/2014 
// Design Name: 
// Module Name:    add_32 
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
module ADC32(input [31:0] A, 	//����λ��32λ�Ӽ����������޷��������ݡ������ALU��sltָ����������
				 input [31:0] B, 
				 input C0,			//��ͽ�λ����
				 output [32:0] S,
				 output overflow
				  );
	wire [31:0] T;
	assign T = A[30:0] + B[30:0] + C0;
	assign S = A + B + C0;
	assign overflow = S[32] ^ T[31]; // ͷ��λ��31��30���Ľ�λ����������з���������ı��

endmodule
