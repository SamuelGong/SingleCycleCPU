`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:00:00 04/12/2017
// Design Name:   SCPU_v1
// Module Name:   E:/My universe/university/Course/Computer Organization/Lab/Source/Exp05/framework/scpu_test1.v
// Project Name:  framework
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCPU_v1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module scpu_test1;

	// Inputs
	reg [31:0] inst_in;
	reg [31:0] Data_in;
	reg clk;
	reg reset;
	reg [4:0] test_reg_index;

	// Outputs
	wire MemW;
	wire [31:0] Addr_out;
	wire [31:0] Data_out;
	wire [31:0] PC_out;
	wire [31:0] test_reg_result;

	// Instantiate the Unit Under Test (UUT)
	SCPU_v1 uut (
		.inst_in(inst_in), 
		.Data_in(Data_in), 
		.clk(clk), 
		.reset(reset), 
		.MemW(MemW), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.PC_out(PC_out), 
		.test_reg_index(test_reg_index), 
		.test_reg_result(test_reg_result)
	);

	initial begin
		// Initialize Inputs
		inst_in = 0;
		Data_in = 0;
		clk = 0;
		reset = 1;
		test_reg_index = 0;

		// Wait 100 ns for global reset to finish
		#30;
		reset = 0;
		inst_in = 32'h20210001; // begin : addi $1, $1, 1
				#10;
				test_reg_index = 1; // $1 ought to be 1
				#20;
		inst_in = 32'h00211020; //add $2, $1, $1
				#20;
				test_reg_index = 2; // $2 ought to be 2
				#20;
		inst_in = 32'h34630003; // ori $3, $3, 3
				#20;
				test_reg_index = 3; // $3 ought to be 3
				#20;
		inst_in = 32'h00622022; // $4 sub $4, $3, $2
				#20;
				test_reg_index = 4; // $4 ought to be 1
				#20;
		inst_in = 32'h00432827; // nor $5, $2, $3
				#20;
				test_reg_index = 5; // $5 ought to be 0xFFFFFFFC
				#20;
		inst_in = 32'h00433026; // xor $6, $2, $3
				#20;
				test_reg_index = 6; // $6 ought to be 0x00000001
				#20;
		inst_in = 32'h0043382A; // slt $7, $2, $3
				#20;
				test_reg_index = 7; // $7 ought to be 1
				#20;
		inst_in = 32'h28E8FFFF; // slti $8, $7. -1
				#20;
				test_reg_index = 8; // $8 ought to be 0
				#20;
		inst_in = 32'h00014FC0; // sll $9, $1, 31
				#20;
				test_reg_index = 9; // $9 ought to be 0x80000000;
				#20;
		inst_in = 32'h000957C2; // srl $10, $9, 31;
				#20;
				test_reg_index = 10; // $10 ought to be 0x00000001
				#20;
		inst_in = 32'h01405825; // or $11, $10, $0
				#20;
				test_reg_index = 11; // $11 ought to be 1
				#20;
		inst_in = 32'h316CFFFF; // andi $12, $11, 0xFFFF
				#20;
				test_reg_index = 12; // $12 ought to be 1
				#20;
		inst_in = 32'h3C0DFFFF; // lui $13, 0xFFFF
				#20;
				test_reg_index = 13; // $13 ought to be 0xFFFF0000
				#20;
		inst_in = 32'h39AE0000; // xori $14, $13, 0x0000
				#20;
				test_reg_index = 14; // $14 ought to be 0xFFFF0000
				#20; 
		inst_in = 32'h11C0FFF1; // beq $14, $0, begin
				#40;
		inst_in = 32'h1400FFEF; // bne $0, $0, begin
				#40;
		inst_in = 32'h08000012; // j L1
				#40;
		inst_in = 32'hAC0E0008; // L1: sw $14 8($0)
				#40;
		inst_in = 32'h8C0F0008; // lw $15 8($0)
		Data_in = 32'h12345678;
				#20;
				test_reg_index = 15; // $15 ought to be 0x12345678
				#20;
		inst_in = 32'h0C000014; // jal L2
				#20;
				test_reg_index = 31; // $31 ought to be 0
				#20;
		inst_in = 32'h01E08009; // L2: jalr $15, $16
				#20;
				test_reg_index = 16; // $16 ought to be 0x12345678
				#20;
		inst_in = 32'h00438024;
				#40;
	end
    
	always @ * begin
		#20;
		clk <= ~clk;
	end
	
endmodule

