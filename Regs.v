`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:35 03/27/2017 
// Design Name: 
// Module Name:    Regs 
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
module Regs( input clk, rst, we, 
		       input [4:0] reg_Rs_addr_A, reg_Rt_addr_B, reg_Wt_addr, 
		       input [31:0] wdata,
		       output [31:0] rdata_A, rdata_B,
				 input [4:0] test_reg_index,
				 output [31:0] test_reg_result
		    );
			 
	reg [31:0] register [1:31]; 		// r1 - r31
							

	assign rdata_A = (reg_Rs_addr_A == 0) ? 0 : register[reg_Rs_addr_A];	   // read
	assign rdata_B = (reg_Rt_addr_B == 0) ? 0 : register[reg_Rt_addr_B];   	// read
	assign test_reg_result = 
		(test_reg_index == 0) ? 0 : register[test_reg_index];						// test

	always @(negedge clk or posedge rst) 
      begin   
			if (rst==1) begin
				register[1] <= 0; register[2] <= 0; register[3] <= 0;
			register[4] <= 0; register[5] <= 0; register[6] <= 0; register[7] <= 0;
			register[8] <= 0; register[9] <= 0; register[10] <= 0; register[11] <= 0;
			register[12] <= 0; register[13] <= 0; register[14] <= 0; register[15] <= 0;
			register[16] <= 0; register[17] <= 0; register[18] <= 0; register[19] <= 0;
			register[20] <= 0; register[21] <= 0; register[22] <= 0; register[23] <= 0;
			register[24] <= 0; register[25] <= 0; register[26] <= 0; register[27] <= 0;
			register[28] <= 0; register[29] <= 0; register[30] <= 0; register[31] <= 0;
			end // reset
		   else if ((reg_Wt_addr != 0) && (we == 1)) 
				register[reg_Wt_addr] <= wdata;      			// write
	   end

endmodule
