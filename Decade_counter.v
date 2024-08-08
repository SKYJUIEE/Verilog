`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 02:20:07
// Design Name: 
// Module Name: Decade_Counter
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


module Decade_Counter(
    input CLK,
    input RST,
    output reg [3:0] Q
    );
    
    wire result;
    // Instantiating a Comparator
    CMP CMP1(
        .data1(Q),
        .data2(4'b1001),
        .result(result)
        );
    
    always@(negedge(CLK) or posedge(RST))begin
        // Condition for Reset
        if(RST == 1 | result == 1)begin
            Q <= 4'b0000;
        end
        else begin
            Q <= Q + 1;
        end
    end
    
endmodule

// 4-bit Comparator
module CMP(
    input [3:0] data1,
    input [3:0] data2,
    output reg result
    );
    
    always@* begin
        if(data1 == data2)begin
            result <= 1;
        end
        else begin
            result <= 0;
        end
    end
    
endmodule
