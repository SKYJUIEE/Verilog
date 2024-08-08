`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 02:21:48
// Design Name: 
// Module Name: Decade_Counter_Simulation
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


module Decade_Counter_Simulation(

    );
    
    reg CLK;
    reg RST;
    wire [3:0] Q;
    
    Decade_Counter dut(
        .CLK(CLK),
        .RST(RST),
        .Q(Q)
    );
    
    always begin
        #20 CLK = ~CLK;
    end
    
    initial begin
        CLK = 0;
        RST = 0;
        #20;
        
        RST = 1;
        #20;
        
        RST = 0;
        #10000;
    end
    
endmodule
