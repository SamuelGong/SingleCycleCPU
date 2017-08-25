`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:38 07/17/2012 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(input clk,
					input rst,
					input SW2,
					input SW15,
					input keyReady,
					input [3:0] BTN_OK,
					output reg[31:0]clkdiv,
					output Clk_CPU,
					output reg readn
					);
					
// Clock divider-Ê±ÖÓ·ÖÆµÆ÷
	
	wire auto_clk;
	reg [31:0] step;
	reg [4:0] counter;
	reg wasReady;
	
	//assign Clk_CPU = SW15;

	always @ (posedge clk or posedge rst) begin 
		if (rst) clkdiv <= 0;
		else clkdiv <= clkdiv + 1'b1; 
	end
	
	assign auto_clk =(SW2)? clkdiv[24] : clkdiv[4];
	assign Clk_CPU = (SW15) ? step[0] : auto_clk;
	
	always @ (posedge clk or posedge rst) begin
		if(rst) begin
			step <= 0;
			counter <= 0;
		end
		else begin
			if(counter != 0 && clkdiv[24]) begin
				step <= step + 1'b1;
				counter <= counter - 1'b1;
			end
			else begin
				wasReady <= keyReady;
				readn <= 1;
				if(!wasReady && keyReady) begin
					readn <= 0;
					if(BTN_OK[0]) counter <= 5'd2;
					else if(BTN_OK[1]) counter <= 5'd4;
					else if(BTN_OK[2]) counter <= 5'd10;
					else if(BTN_OK[3]) counter <= 5'd20;
				end
			end
		end
	end
	
	
	
	
endmodule
