`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:05 04/08/2017 
// Design Name: 
// Module Name:    SCPU_v1 
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
module SCPU_v1( 	input [31:0] inst_in, Data_in,
						input clk, reset,
						output MemW,
						output [31:0] Addr_out, Data_out, PC_out,
						
						
						input [4:0] test_reg_index,
						output [31:0] test_reg_result
					);
	wire RegW, beq, bne, branch; // control signal wires
	wire [1:0] sourceA, sourceB, destReg, toReg, jump;
	wire [3:0] ALU_op;
	
	wire zero, overflow; // wires about ALU
	wire [31:0] ALU_in_A, ALU_in_B, res;
	
	wire [32:0] PC_inc_o, offset_add_o; // wires about ADC
	
	wire [31:0] addr_ext_o, addr_signext_o, addr_zeroext_o; // wires about extended
	
	wire [31:0] addr_shift1_o; // wires about shifter
	wire [27:0] addr_shift2_o;
	
	wire [4:0] destReg_Mux_out; // wires about multiplexers
	wire [31:0] toReg_out, sourceB_in_0, sourceA_in_0, branch_mux_o, /*jump_addr*,*/ jump_mux_o;
	wire [31:0] PC_out;
	
	// PC register
	reg [31:0] PC = 0;
	always @ (posedge clk) begin
		if(reset)
			PC <= 0;
		else
			PC <= jump_mux_o;
	end
	assign PC_out = PC;
	
	// direct connection
	assign Data_out = sourceB_in_0;
	assign Addr_out = res;
	
	// shifter
	assign addr_shift1_o = addr_ext_o << 2;
	assign addr_shift2_o = {inst_in[25:0], 2'b00};
	/*
	reg [31:0] jump_addr;
	always @ (posedge clk) begin
		#1;
		jump_addr <= {PC_out[31:28], addr_shift2_o};
	end
	
	reg [31:0] branch_mux_o_reg;
	always @ (posedge clk) begin
		#1;
		branch_mux_o_reg <= branch_mux_o;
	end
	
	reg [31:0] sourceA_in_0_reg;
	always @ (posedge clk) begin
		#1;
		sourceA_in_0_reg <= sourceA_in_0;
	end
	*/
	// branch logic
	assign branch = beq&zero | bne&~zero;
	
	// Multiplexers
	
	MUX2T1_32 	branch_Mux(.I0(PC_inc_o[31:0]), .I1(offset_add_o[31:0]), .s(branch), .o(branch_mux_o)),
					extend_mode(.I0(addr_zeroext_o), .I1(addr_signext_o), .s(ext), .o(addr_ext_o));
					
					
	MUX4T1_32   sourceA_Mux(.I0(sourceA_in_0), .I1(addr_ext_o),
									.I2(sourceB_in_0), .I3(), .s(sourceA), .o(ALU_in_A)),
					jump_Mux(.I0(branch_mux_o), .I1({PC_out[31:28], addr_shift2_o}), 
								.I2(sourceA_in_0), .I3(), .s(jump), .o(jump_mux_o)),
					SourceB_Mux(.I0(sourceB_in_0), .I1(addr_ext_o), 
									.I2(inst_in), .I3(32'h00000400), .s(sourceB), .o(ALU_in_B)),
					ToReg_Mux(.I0(res), .I1(Data_in), 
								 .I2(PC_inc_o), .I3(), .s(toReg), .o(toReg_out));
	/*MUX4T1_32_t jump_Mux(.I0(branch_mux_o), .I1(jump_addr), 
								.I2(res), .I3(), .s(jump), .o(PC_new), .clk(clk));*/
	MUX4T1_5 	DestReg_Mux(.I0(inst_in[15:11]), .I1(inst_in[20:16]),
									.I2(5'b11111), .I3(), .s(destReg), .o(destReg_Mux_out));
	
	// widgets
	Regs Regs(	.clk(clk), .rst(reset), .reg_Rs_addr_A(inst_in[25:21]), .reg_Rt_addr_B(inst_in[20:16]),
					.reg_Wt_addr(destReg_Mux_out), .wdata(toReg_out), .rdata_A(sourceA_in_0), .rdata_B(sourceB_in_0),
					.we(RegW), 
					.test_reg_index(test_reg_index), .test_reg_result(test_reg_result));
	
	ALU_v1 ALU(	.A(ALU_in_A), .B(ALU_in_B), .ALU_operation(ALU_op), .zero(zero), .overflow(overflow),
				.res(res) );
	
	controller Controller(	.opcode(inst_in[31:26]), .func(inst_in[5:0]), .ext(ext),
									.inst_in(inst_in),
									.MemW(MemW), .RegW(RegW), .sourceB(sourceB), .sourceA(sourceA),
									.toReg(toReg), .destReg(destReg), .beq(beq), .bne(bne), .jump(jump),
									.ALUopcode(ALU_op) );
	
	ADC32 	PC_inc(.C0(1'b0), .A(PC_out), .B(32'h00000004), .S(PC_inc_o), .overflow()),
				offset_add(.C0(1'b0), .A(PC_inc_o[31:0]), .B(addr_shift1_o), .S(offset_add_o), .overflow());
				
	signExt_16T32 signExt_1(.i(inst_in[15:0]), .o(addr_signext_o));
	zeroExt_16T32 zeroExt_1(.i(inst_in[15:0]), .o(addr_zeroext_o));
	
endmodule
