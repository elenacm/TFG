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
    input CLOCK,              //Entrada reloj
    input [3:0] sw,         //Entrada switches
    input [3:0] KEY,        //Entrada botones
    output reg [3:0] led    //Salida Leds   
    );
    
    always @ (sw) 
        begin
            led[0] = KEY[0];//sw[0];
            led[1] = KEY[1];//sw[1];
            led[2] = KEY[2];//sw[2];
            led[3] = KEY[3];//sw[3];
        end
    
endmodule
