`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:43 04/08/2017 
// Design Name: 
// Module Name:    second_decoder 
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
module second_decoder( input [5:0] func, opcode, 
                       input wire rtype_ALU, itype_ALU, lw, sw, j, jr, jal, jalr, shift, beq, bne, nop,
							  output RegW, MemW, ext,
							  output [1:0] sourceA, sourceB, toReg, destReg, jump,
							  output [3:0] ALUopcode
							);
	
	reg [3:0] ALU_reg;
	reg [1:0] sourceA_reg, sourceB_reg, toReg_reg, destReg_reg, jump_reg;
	
	// ALUopcode
	always @ * begin
		if(rtype_ALU) begin
			case(func)
				6'h0:  ALU_reg <= 4'b1000; // sll
				6'd2:  ALU_reg <= 4'b0101; // srl
				6'd9:  ALU_reg <= 4'b0010; // jalr
				6'd32: ALU_reg <= 4'b0010; // add
				6'd34: ALU_reg <= 4'b0110; // sub
				6'd36: ALU_reg <= 4'b0000; // and
				6'd37: ALU_reg <= 4'b0001; // or
				6'd38: ALU_reg <= 4'b0011; // xor
				6'd39: ALU_reg <= 4'b0100; // nor
				6'd42: ALU_reg <= 4'b0111; // slt
			endcase
		end
		else if(itype_ALU) begin
			case(opcode)
				6'h8: ALU_reg <= 4'b0010; // addi
				6'ha: ALU_reg <= 4'b0111; // slti
				6'hc: ALU_reg <= 4'b0000; // andi
				6'hd: ALU_reg <= 4'b0001; // ori
				6'he: ALU_reg <= 4'b0011; // xori
				6'hf: ALU_reg <= 4'b1000; // lui
			endcase
		end
		else if(beq || bne)
			ALU_reg <= 4'b0110;
		else
			ALU_reg <= 4'b0010; // jalr included
	end
	
	assign ALUopcode = ALU_reg;
	
	// sourceA
	always @ * begin
		if(opcode == 6'hf) //lui
			sourceA_reg <= 2'b01;
		else if(shift)
			sourceA_reg <= 2'b10;
		else
			sourceA_reg <= 2'b00;
	end
	
	assign sourceA = sourceA_reg;
	// sourceB
	always @ *
		if(lw || sw || (itype_ALU && opcode != 6'h0f)) //except lui
			sourceB_reg <= 2'b01;
		else if(shift)
			sourceB_reg <= 2'b10;
		else if(opcode == 6'h0f)
			sourceB_reg <= 2'b11;
		else
			sourceB_reg <= 2'b00;
		
	assign sourceB = sourceB_reg;
	
	// To register
	always @ *
		if(lw)
			toReg_reg <= 2'b01;
		else if(jal | jalr)
			toReg_reg <= 2'b10;
		else
			toReg_reg <= 2'b00;
	assign toReg = toReg_reg;
	
	always @ *
		if(lw | itype_ALU )
			destReg_reg <= 2'b01;
		else if(jal)
			destReg_reg <= 2'b10;
		else
			destReg_reg <= 2'b00;
	
	assign destReg = destReg_reg;
	
	always @ *
		if(j | jal)
			jump_reg <= 2'b01;
		else if(jalr | jr)
			jump_reg <= 2'b10;
		else
			jump_reg <= 2'b00;
	assign jump = jump_reg;		
	
	// other control
	assign RegW = lw | itype_ALU | (rtype_ALU & ~nop) | jal ; // except nop
	assign MemW = sw;
	assign ext = (opcode == 6'h8 || opcode == 6'ha || beq || bne) ? 1 : 0; // addi, slti, beq, bne

endmodule
