`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:42:48 04/17/2017
// Design Name:   SCPU_v1
// Module Name:   E:/My universe/university/Course/Computer Organization/Lab/Source/Exp05/framework_v1/cpu_test2.v
// Project Name:  framework_v1
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

module cpu_test2;

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
		#100;
		reset = 0;
		// Add stimulus here
		inst_in = 32'h08000008;
		#40;
		
		inst_in = 32'h00000827;
		test_reg_index = 1;
		#40;
		inst_in = 32'h00211820;
		test_reg_index = 3;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h0060A027;
		test_reg_index = 20;
		#40;
		inst_in = 32'h00631820;
		test_reg_index = 3;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		inst_in = 32'h00631820;
		#40;
		
		inst_in = 32'h00633020;
		test_reg_index = 6;
		#40;
		inst_in = 32'h00C61820;
		test_reg_index = 3;
		#40;
		inst_in = 32'h00632020;
		test_reg_index = 4;
		#40;
		inst_in = 32'h00846820;
		test_reg_index = 13;
		#40;
		inst_in = 32'h01AD4020;
		test_reg_index = 8;
		#40;
		inst_in = 32'h0020102A;
		test_reg_index = 2;
		#40;
		inst_in = 32'h00427020;
		test_reg_index = 14;
		#40;
		inst_in = 32'h01CE7020;
		test_reg_index = 14;
		#40;
		inst_in = 32'h00005027;
		test_reg_index = 10;
		#40;
		inst_in = 32'h014A5020;
		test_reg_index = 10;
		#40;
		inst_in = 32'hAC660004;
		test_reg_index = 6;
		#40;
		inst_in = 32'h8C650000;
		test_reg_index = 5;
		Data_in = 32'h00000001;
		#40;
		inst_in = 32'h00A52820;
		test_reg_index = 5;
		#40;
		inst_in = 32'h00A52820;
		test_reg_index = 5;
		#40;
		inst_in = 32'hAC650000;
		#40;
		inst_in = 32'h01224820;
		test_reg_index = 9;
		#40;
		inst_in = 32'hAC890000;
		#40;
		inst_in = 32'h8C0D0020;
		test_reg_index = 13;
		Data_in = 32'h00000000;
		#40;
		inst_in = 32'h8C650000;
		Data_in = 32'h00000001;
		test_reg_index = 5;
		#40;
		inst_in = 32'h00A52820;
		#40;
		inst_in = 32'h00A52820;
		#40;
		inst_in = 32'hAC650000;
		#40;
		inst_in = 32'h8C650000;
		#40;
		inst_in = 32'h00A85824;
		test_reg_index = 11;
		#40;
		inst_in = 32'h01A26820;
		test_reg_index = 13;
		#40;
		inst_in = 32'h11A00017;
		#40;
		inst_in = 32'h8C650000;
		test_reg_index = 5;
		//Data_in = 32'h00000010;
		Data_in = 32'h00000000;
		#40;
		inst_in = 32'h01CE9020;
		test_reg_index = 18;
		#40;
		inst_in = 32'h0252B020;
		test_reg_index = 22;
		#40;
		inst_in = 32'h02569020;
		test_reg_index = 18;
		#40;
		inst_in = 32'h00B25824;
		test_reg_index = 11;
		#40;
		inst_in = 32'h11600005;
		#40;
		inst_in = 32'h1172000A;
		#40;
		inst_in = 32'h01CE9020;
		test_reg_index = 18;
		#40;
		inst_in = 32'h1172000B;
		#40;
		inst_in = 32'hAC890000;
		#40;
		inst_in = 32'h08000036;
		#40;
		inst_in = 32'h11410001;
		#40;
		inst_in = 32'h0800004D;
		#40;
		inst_in = 32'h00005027;
		test_reg_index = 10;
		#40;
		inst_in = 32'h014A5020;
		#40;
		inst_in = 32'hAC8A0000;
		#40;
		inst_in = 32'h08000036;
		#40;
		inst_in = 32'h8E290096;
		test_reg_index = 9;
		#40;
		inst_in = 32'hAC890000;
		#40;
		inst_in = 32'h08000036;
		#40;
		inst_in = 32'h8E290032;
		#40; 
		inst_in = 32'hAC890000;
		#40;
		inst_in = 32'h08000036;
		#40;
		inst_in = 32'h8C0D0020;
		#40;
		inst_in = 32'h014A5020;
		#40;
		inst_in = 32'h01425025;
		#40;
		inst_in = 32'h022E8820;
		#40;
		inst_in = 32'h02348824;
		#40;
		inst_in = 32'h01224820;
		#40;
		inst_in = 32'h11210001;
		#40;
		inst_in = 32'h0800005F;
		#40;
		inst_in = 32'h000E4820;
		#40;
		inst_in = 32'h01224820;
		#40;
		inst_in = 32'h8C650000;
		#40;
		inst_in = 32'h00A55820;
		#40;
		inst_in = 32'h016B5820;
		#40;
		inst_in = 32'hAC6B0000;
		#40;
		inst_in = 32'hAC660004;
		#40;
		inst_in = 32'h8C650000;
		#40;
		inst_in = 32'h00A85824;
		#40;
		inst_in = 32'h0800003E;
		#40;
		

	end
	
	always @ * begin
		#20;
		clk <= ~clk;
	end
      
endmodule

