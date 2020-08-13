`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2020 18:49:19
// Design Name: 
// Module Name: encerder1led
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


module encerder1led(
    input CLOCK,
    output led
    );
    
    reg [24:0] count = 0;
    assign led = count[24];
    
    always @ (posedge(CLOCK)) count <= count + 1;
    
endmodule
