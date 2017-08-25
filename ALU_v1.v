`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:47 04/09/2017 
// Design Name: 
// Module Name:    ALU_v1 
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
module ALU_v1( input [3:0] ALU_operation,
					input [31:0] A, B,
					output overflow, zero,
					output [31:0] res
    );
	 
	 wire [32:0] ADC_out;
	 wire [31:0] ADC_B, signalext_out;
	 wire [31:0] and_res, or_res, xor_res, nor_res, srl_res, sll_res, slt_res, res;
	 wire SLT;
	 
	 and32 and32(.A(A), .B(B), .res(and_res));
	 or32 or32(.A(A), .B(B), .res(or_res));
	 xor32 xor32(.A(A), .B(B), .res(xor_res));
	 nor32 nor32(.A(A), .B(B), .res(nor_res));
	 srl32 srl32(.A(A), .B(B), .res(srl_res));
	 sll32 sll32(.A(A), .B(B), .res(sll_res));
	 SignalExt_32 signalext(.S(ALU_operation[2]), .So(signalext_out));
	 
	 assign ADC_B = signalext_out ^ B;
	 ADC32 adder(.A(A), .B(ADC_B), .C0(ALU_operation[2]), .S(ADC_out), .overflow(overflow));
	 
	 or_bit_32 zeroJudge(.A(res), .o(zero));
	 
	 assign SLT = ~(A[31]^B[31]) & ADC_out[31] | A & ~B;
	 assign slt_res = {31'h0, SLT};
	 
	 MUX16T1_32 mux(	.I0(and_res),
							.I1(or_res),
							.I2(ADC_out[31:0]),
							.I3(xor_res),
							.I4(nor_res),
							.I5(srl_res),
							.I6(ADC_out[31:0]),
							.I7(slt_res),
							.I8(sll_res),
							.I9(),
							.I10(),
							.I11(),
							.I12(),
							.I13(),
							.I14(),
							.I15(),
							.s(ALU_operation),
							.o(res));
		

endmodule
