`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/13 20:28:17
// Design Name: 
// Module Name: SC_top_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SC_top_sim();

    //input
    reg clk;			
	reg reset;
	
	reg MIO_ready;					
	reg [31:0]inst_in;
	reg [31:0]Data_in;	
	
	//output
	wire mem_w;			//memory write enable
	wire[31:0]PC_out;		//ROM Address
	wire[31:0]Addr_out;	//RAM Address
	wire[31:0]Data_out; 	//RAM Write Data
	
	reg[5:0] OPCODE;
	reg[4:0] RS;
	reg[4:0] RT;
	reg[4:0] RD;
	reg[4:0] SHAMT;
	reg[5:0] FUNC;
		//assign inst_in = {OPCODE, RS, RT, RD, SHAMT, FUNC};
	
	
	always #50 clk = ~clk;
	
	initial begin
		reset = 1;
		clk = 1;
		inst_in = 0;
		Data_in = 0;
		inst_in = 0;
		
		#100; //0-100
		reset = 0;
				
		//add
		OPCODE = 0;
		RS = 17;
		RT = 18;
		RD = 19;
		SHAMT = 0;
		FUNC = 6'b100000;
		inst_in = {OPCODE, RS, RT, RD, SHAMT, FUNC};
	
		
		#100;
		
		//add
		OPCODE = 0;
		RS = 18;
		RT = 19;
		RD = 19;
		SHAMT = 0;
		FUNC = 6'b100000;
		inst_in = {OPCODE, RS, RT, RD, SHAMT, FUNC};
		
		
		#100;
		
		//and
		OPCODE = 0;
		RS = 18;
		RT = 19;
		RD = 19;
		SHAMT = 0;
		FUNC = 6'b100100;
		inst_in = {OPCODE, RS, RT, RD, SHAMT, FUNC};
		
		
		#100;
		
		//sub
		OPCODE = 0;
		RS = 18;
		RT = 19;
		RD = 19;
		SHAMT = 0;
		FUNC = 6'b100010;
		inst_in = {OPCODE, RS, RT, RD, SHAMT, FUNC};
		
		
		#100;
		
		//=============== LW =================//
		OPCODE = 6'b100011;
		RS = 15;
		RT = 16;

		inst_in = {OPCODE, RS, RT, 16'h0004};
		Data_in = 32'hcdcdcdcd;
		
		
		#100;
		
		// ============= beq =================//
		OPCODE = 6'b000100;
		RS = 15;
		RT = 15;

		inst_in = {OPCODE, RS, RT, 16'hFFFC};
		Data_in = 32'hcdcdcdcd;
		
		
		#100;
		// ============= Jump ================ //
		
        OPCODE = 6'b000010;
        RS = 15;
        RT = 15;

        inst_in = {OPCODE, 26'h4};
        Data_in = 32'hcdcdcdcd;
		
		
        #100;
		
		// ============= JR ================ //
        OPCODE = 6'b000000;
        RS = 15;
        FUNC = 6'b001000;
        inst_in = {OPCODE, RS, 15'b0, FUNC};
        
        #50
        OPCODE = 6'b000000;
        RS = 16;
        FUNC = 6'b001000;
        inst_in = {OPCODE, RS, 15'b0, FUNC};
        #50
		
		// ============= ADDI ================ //
		
        OPCODE = 6'b001000;
        RS = 14;
        RT = 14;

        inst_in = {OPCODE, RS, RT, 16'h8000};
		
		
        #100;
		
		// ============= SLTI ================ //
		
        OPCODE = 6'b001010;
        RS = 13;
        RT = 13;

        inst_in = {OPCODE, RS, RT, 16'hd};
		#50;
		inst_in = {OPCODE, RS, RT, 16'he};
		
        #50;
        
        // ============= ANDI ================ //
		
        OPCODE = 6'b001100;
        RS = 12;
        RT = 12;

        inst_in = {OPCODE, RS, RT, 16'hcdc8};
		
		
        #100;
		
		// ============= ORI ================ //
		
        OPCODE = 6'b001101;
        RS = 11;
        RT = 11;

        inst_in = {OPCODE, RS, RT, 16'hcdcd};
		
		
        #100;
		
		// ============= SW ================ //
		
        OPCODE = 6'b101011;
        RS = 10;
        RT = 10;

        inst_in = {OPCODE, RS, RT, 16'h0004};
		
		
        #100;
		
		// ============= LUI ================ //
		
        OPCODE = 6'b001111;
        RT = 9;

        inst_in = {OPCODE, 5'b0, RT, 16'hcdcd};
		
		
        #100;
		
		// ============= Shift right ================ //
		
        OPCODE = 6'b000000;
        RT = 9;
		RD = 8;
		SHAMT = 3;
		FUNC = 6'b000010;

        inst_in = {OPCODE, 5'b0, RT, RD, SHAMT, FUNC};
		
		
        #100;
		
		// ============= jal ================ //
		
        OPCODE = 6'b000011;
 

        inst_in = {OPCODE, 26'hf};
		
		
        #100;

		$finish;
	
	end
    
    SCPU_v1 uut2(
		.clk(clk),		
		.reset(reset),
						
		.inst_in(inst_in),
		.Data_in(Data_in),	
		
		.mem_w(mem_w),			
		.PC_out(PC_out),		
		.Addr_out(Addr_out),	
		.Data_out(Data_out), 
.test_reg_index(), 
		.test_reg_result()		
	);
    
    
    
    

endmodule
