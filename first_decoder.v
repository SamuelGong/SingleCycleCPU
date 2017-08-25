`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:33 04/08/2017 
// Design Name: 
// Module Name:    first_decoder 
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
module first_decoder( 	input [5:0] opcode, func, input [31:0] inst_in,
								output rtype_ALU, itype_ALU,
								lw, sw, beq, bne, jal, jalr, shift, nop, j, jr
							);
	 assign nop = (inst_in == 32'h0) ? 1 : 0;
	 assign rtype_ALU = (opcode == 6'b000000 && inst_in != 32'h0) ? 1 : 0;
	 assign itype_ALU = (opcode < 6'b010000 && opcode > 6'b000111) ? 1 : 0;
	 assign lw = (opcode == 6'b100011) ? 1 : 0;
	 assign sw = (opcode == 6'b101011) ? 1 : 0;
	 assign beq = (opcode == 6'b000100) ? 1 : 0;
	 assign bne = (opcode == 6'b000101) ? 1 : 0;
	 assign j = (opcode == 6'b000010) ? 1 : 0;
	 assign jr = (opcode == 6'b000000 && func == 6'd8) ? 1 : 0;
	 assign jal = (opcode == 6'b000011) ? 1 : 0;
	 assign jalr = (opcode == 6'b000000 && func == 6'd9) ? 1'b1 : 1'b0;
	 assign shift = (inst_in != 32'h0 && opcode == 6'b000000 && (func == 6'd2 || func == 6'd0)) ? 1'b1 : 1'b0;
		
endmodule
