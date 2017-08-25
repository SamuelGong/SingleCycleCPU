`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:50:03 04/01/2017 
// Design Name: 
// Module Name:    controller 
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
module controller( input [5:0] opcode, func,
						 input [31:0] inst_in,
                   output [3:0] ALUopcode,
						 output RegW, MemW, beq, bne, ext,
						 output [1:0] sourceA, sourceB, toReg, destReg, jump
    );
	 
	wire rtype_ALU, itype_ALU, lw, sw, shift, beq, bne, j, jr,  jal, jalr, nop;
	 
	first_decoder decoder_1(	.opcode(opcode), .func(func), .inst_in(inst_in),
										.rtype_ALU(rtype_ALU), .itype_ALU(itype_ALU),
										.lw(lw), .sw(sw), .shift(shift), .nop(nop),
										.beq(beq), .bne(bne), .j(j), .jr(jr), .jal(jal), .jalr(jalr));
	
	second_decoder decoder_2(	.func(func), .opcode(opcode), .nop(nop),
										.rtype_ALU(rtype_ALU), .itype_ALU(itype_ALU), .lw(lw), .sw(sw), 
										.beq(beq), .bne(bne), .j(j), .jal(jal), .jr(jr),
										.jalr(jalr), .shift(shift), .ext(ext),
										.RegW(RegW), .sourceB(sourceB), .MemW(MemW), .toReg(toReg), 
										.destReg(destReg), .jump(jump), .sourceA(sourceA), .ALUopcode(ALUopcode));

endmodule
