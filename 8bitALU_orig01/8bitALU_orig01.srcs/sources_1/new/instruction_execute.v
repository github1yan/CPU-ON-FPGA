`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/16 10:14:17
// Design Name: 
// Module Name: instruction_execute
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


module instruction_execute(
    input CLK,
    input [2:0]opcode,
    output [7:0]Reg_a,Reg_b,RamM,ALUout,
    output [7:0] Reg_output
    );
    
    ALU ALU_inst(opcode[2:0],Reg_a,Reg_b,RamM,ALUout);
    outputregister outputregister_inst(CLK ,ALUout, Reg_output);

endmodule
