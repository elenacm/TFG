// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Mon Jun 01 17:32:05 2020
// Host        : LAPTOP-3I35GVHS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/eleni/Desktop/project_1/Seminario 1-1/Seminario 1-1.sim/sim_1/synth/timing/Top_time_synth.v}
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Div_Frec
   (CLK,
    clk,
    btn_IBUF);
  output CLK;
  input clk;
  input [2:0]btn_IBUF;

  wire CLK;
  wire \Contador[0]_i_5_n_0 ;
  wire \Contador_reg[0]_i_1_n_0 ;
  wire \Contador_reg[0]_i_1_n_1 ;
  wire \Contador_reg[0]_i_1_n_2 ;
  wire \Contador_reg[0]_i_1_n_3 ;
  wire \Contador_reg[0]_i_1_n_4 ;
  wire \Contador_reg[0]_i_1_n_5 ;
  wire \Contador_reg[0]_i_1_n_6 ;
  wire \Contador_reg[0]_i_1_n_7 ;
  wire \Contador_reg[12]_i_1_n_0 ;
  wire \Contador_reg[12]_i_1_n_1 ;
  wire \Contador_reg[12]_i_1_n_2 ;
  wire \Contador_reg[12]_i_1_n_3 ;
  wire \Contador_reg[12]_i_1_n_4 ;
  wire \Contador_reg[12]_i_1_n_5 ;
  wire \Contador_reg[12]_i_1_n_6 ;
  wire \Contador_reg[12]_i_1_n_7 ;
  wire \Contador_reg[16]_i_1_n_0 ;
  wire \Contador_reg[16]_i_1_n_1 ;
  wire \Contador_reg[16]_i_1_n_2 ;
  wire \Contador_reg[16]_i_1_n_3 ;
  wire \Contador_reg[16]_i_1_n_4 ;
  wire \Contador_reg[16]_i_1_n_5 ;
  wire \Contador_reg[16]_i_1_n_6 ;
  wire \Contador_reg[16]_i_1_n_7 ;
  wire \Contador_reg[20]_i_1_n_0 ;
  wire \Contador_reg[20]_i_1_n_1 ;
  wire \Contador_reg[20]_i_1_n_2 ;
  wire \Contador_reg[20]_i_1_n_3 ;
  wire \Contador_reg[20]_i_1_n_4 ;
  wire \Contador_reg[20]_i_1_n_5 ;
  wire \Contador_reg[20]_i_1_n_6 ;
  wire \Contador_reg[20]_i_1_n_7 ;
  wire \Contador_reg[24]_i_1_n_3 ;
  wire \Contador_reg[24]_i_1_n_6 ;
  wire \Contador_reg[24]_i_1_n_7 ;
  wire \Contador_reg[4]_i_1_n_0 ;
  wire \Contador_reg[4]_i_1_n_1 ;
  wire \Contador_reg[4]_i_1_n_2 ;
  wire \Contador_reg[4]_i_1_n_3 ;
  wire \Contador_reg[4]_i_1_n_4 ;
  wire \Contador_reg[4]_i_1_n_5 ;
  wire \Contador_reg[4]_i_1_n_6 ;
  wire \Contador_reg[4]_i_1_n_7 ;
  wire \Contador_reg[8]_i_1_n_0 ;
  wire \Contador_reg[8]_i_1_n_1 ;
  wire \Contador_reg[8]_i_1_n_2 ;
  wire \Contador_reg[8]_i_1_n_3 ;
  wire \Contador_reg[8]_i_1_n_4 ;
  wire \Contador_reg[8]_i_1_n_5 ;
  wire \Contador_reg[8]_i_1_n_6 ;
  wire \Contador_reg[8]_i_1_n_7 ;
  wire \Contador_reg_n_0_[0] ;
  wire \Contador_reg_n_0_[10] ;
  wire \Contador_reg_n_0_[11] ;
  wire \Contador_reg_n_0_[12] ;
  wire \Contador_reg_n_0_[13] ;
  wire \Contador_reg_n_0_[14] ;
  wire \Contador_reg_n_0_[15] ;
  wire \Contador_reg_n_0_[16] ;
  wire \Contador_reg_n_0_[17] ;
  wire \Contador_reg_n_0_[1] ;
  wire \Contador_reg_n_0_[2] ;
  wire \Contador_reg_n_0_[3] ;
  wire \Contador_reg_n_0_[4] ;
  wire \Contador_reg_n_0_[5] ;
  wire \Contador_reg_n_0_[6] ;
  wire \Contador_reg_n_0_[7] ;
  wire \Contador_reg_n_0_[8] ;
  wire \Contador_reg_n_0_[9] ;
  wire Salida0;
  wire Salida_i_2_n_0;
  wire Salida_i_3_n_0;
  wire [2:0]btn_IBUF;
  wire clk;
  wire data0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [3:1]\NLW_Contador_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Contador_reg[24]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \Contador[0]_i_5 
       (.I0(\Contador_reg_n_0_[0] ),
        .O(\Contador[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[0]_i_1_n_7 ),
        .Q(\Contador_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \Contador_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\Contador_reg[0]_i_1_n_0 ,\Contador_reg[0]_i_1_n_1 ,\Contador_reg[0]_i_1_n_2 ,\Contador_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\Contador_reg[0]_i_1_n_4 ,\Contador_reg[0]_i_1_n_5 ,\Contador_reg[0]_i_1_n_6 ,\Contador_reg[0]_i_1_n_7 }),
        .S({\Contador_reg_n_0_[3] ,\Contador_reg_n_0_[2] ,\Contador_reg_n_0_[1] ,\Contador[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[8]_i_1_n_5 ),
        .Q(\Contador_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[8]_i_1_n_4 ),
        .Q(\Contador_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[12]_i_1_n_7 ),
        .Q(\Contador_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \Contador_reg[12]_i_1 
       (.CI(\Contador_reg[8]_i_1_n_0 ),
        .CO({\Contador_reg[12]_i_1_n_0 ,\Contador_reg[12]_i_1_n_1 ,\Contador_reg[12]_i_1_n_2 ,\Contador_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Contador_reg[12]_i_1_n_4 ,\Contador_reg[12]_i_1_n_5 ,\Contador_reg[12]_i_1_n_6 ,\Contador_reg[12]_i_1_n_7 }),
        .S({\Contador_reg_n_0_[15] ,\Contador_reg_n_0_[14] ,\Contador_reg_n_0_[13] ,\Contador_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[12]_i_1_n_6 ),
        .Q(\Contador_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[12]_i_1_n_5 ),
        .Q(\Contador_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[12]_i_1_n_4 ),
        .Q(\Contador_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[16]_i_1_n_7 ),
        .Q(\Contador_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \Contador_reg[16]_i_1 
       (.CI(\Contador_reg[12]_i_1_n_0 ),
        .CO({\Contador_reg[16]_i_1_n_0 ,\Contador_reg[16]_i_1_n_1 ,\Contador_reg[16]_i_1_n_2 ,\Contador_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Contador_reg[16]_i_1_n_4 ,\Contador_reg[16]_i_1_n_5 ,\Contador_reg[16]_i_1_n_6 ,\Contador_reg[16]_i_1_n_7 }),
        .S({data6,data7,\Contador_reg_n_0_[17] ,\Contador_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[16]_i_1_n_6 ),
        .Q(\Contador_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[16]_i_1_n_5 ),
        .Q(data7),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[16]_i_1_n_4 ),
        .Q(data6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[0]_i_1_n_6 ),
        .Q(\Contador_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[20]_i_1_n_7 ),
        .Q(data5),
        .R(1'b0));
  CARRY4 \Contador_reg[20]_i_1 
       (.CI(\Contador_reg[16]_i_1_n_0 ),
        .CO({\Contador_reg[20]_i_1_n_0 ,\Contador_reg[20]_i_1_n_1 ,\Contador_reg[20]_i_1_n_2 ,\Contador_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Contador_reg[20]_i_1_n_4 ,\Contador_reg[20]_i_1_n_5 ,\Contador_reg[20]_i_1_n_6 ,\Contador_reg[20]_i_1_n_7 }),
        .S({data2,data3,data4,data5}));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[20]_i_1_n_6 ),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[20]_i_1_n_5 ),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[20]_i_1_n_4 ),
        .Q(data2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[24]_i_1_n_7 ),
        .Q(data1),
        .R(1'b0));
  CARRY4 \Contador_reg[24]_i_1 
       (.CI(\Contador_reg[20]_i_1_n_0 ),
        .CO({\NLW_Contador_reg[24]_i_1_CO_UNCONNECTED [3:1],\Contador_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Contador_reg[24]_i_1_O_UNCONNECTED [3:2],\Contador_reg[24]_i_1_n_6 ,\Contador_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,data0,data1}));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[24]_i_1_n_6 ),
        .Q(data0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[0]_i_1_n_5 ),
        .Q(\Contador_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[0]_i_1_n_4 ),
        .Q(\Contador_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[4]_i_1_n_7 ),
        .Q(\Contador_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \Contador_reg[4]_i_1 
       (.CI(\Contador_reg[0]_i_1_n_0 ),
        .CO({\Contador_reg[4]_i_1_n_0 ,\Contador_reg[4]_i_1_n_1 ,\Contador_reg[4]_i_1_n_2 ,\Contador_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Contador_reg[4]_i_1_n_4 ,\Contador_reg[4]_i_1_n_5 ,\Contador_reg[4]_i_1_n_6 ,\Contador_reg[4]_i_1_n_7 }),
        .S({\Contador_reg_n_0_[7] ,\Contador_reg_n_0_[6] ,\Contador_reg_n_0_[5] ,\Contador_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[4]_i_1_n_6 ),
        .Q(\Contador_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[4]_i_1_n_5 ),
        .Q(\Contador_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[4]_i_1_n_4 ),
        .Q(\Contador_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[8]_i_1_n_7 ),
        .Q(\Contador_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \Contador_reg[8]_i_1 
       (.CI(\Contador_reg[4]_i_1_n_0 ),
        .CO({\Contador_reg[8]_i_1_n_0 ,\Contador_reg[8]_i_1_n_1 ,\Contador_reg[8]_i_1_n_2 ,\Contador_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Contador_reg[8]_i_1_n_4 ,\Contador_reg[8]_i_1_n_5 ,\Contador_reg[8]_i_1_n_6 ,\Contador_reg[8]_i_1_n_7 }),
        .S({\Contador_reg_n_0_[11] ,\Contador_reg_n_0_[10] ,\Contador_reg_n_0_[9] ,\Contador_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \Contador_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\Contador_reg[8]_i_1_n_6 ),
        .Q(\Contador_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Salida_i_2
       (.I0(data3),
        .I1(data2),
        .I2(btn_IBUF[1]),
        .I3(data1),
        .I4(btn_IBUF[0]),
        .I5(data0),
        .O(Salida_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Salida_i_3
       (.I0(data7),
        .I1(data6),
        .I2(btn_IBUF[1]),
        .I3(data5),
        .I4(btn_IBUF[0]),
        .I5(data4),
        .O(Salida_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Salida_reg
       (.C(clk),
        .CE(1'b1),
        .D(Salida0),
        .Q(CLK),
        .R(1'b0));
  MUXF7 Salida_reg_i_1
       (.I0(Salida_i_2_n_0),
        .I1(Salida_i_3_n_0),
        .O(Salida0),
        .S(btn_IBUF[2]));
endmodule

(* NotValidForBitStream *)
module Top
   (btn,
    clk,
    rst,
    led);
  input [2:0]btn;
  input clk;
  input rst;
  output [0:3]led;

  wire Salida;
  wire [2:0]btn;
  wire [2:0]btn_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:3]led;
  wire [0:3]led_OBUF;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("Top_time_synth.sdf",,,,"tool_control");
end
  contador_4bits Contador4
       (.CLK(Salida),
        .clear(rst_IBUF),
        .out({led_OBUF[0],led_OBUF[1],led_OBUF[2],led_OBUF[3]}));
  Div_Frec DivisorFrecuencia
       (.CLK(Salida),
        .btn_IBUF(btn_IBUF),
        .clk(clk_IBUF_BUFG));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  IBUF \btn_IBUF[2]_inst 
       (.I(btn[2]),
        .O(btn_IBUF[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module contador_4bits
   (out,
    CLK,
    clear);
  output [3:0]out;
  input CLK;
  input clear;

  wire CLK;
  wire clear;
  wire [3:0]out;
  wire [3:0]plusOp;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Contador[0]_i_1 
       (.I0(out[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Contador[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Contador[2]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Contador[3]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .O(plusOp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Contador_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(clear),
        .D(plusOp[0]),
        .Q(out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Contador_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(clear),
        .D(plusOp[1]),
        .Q(out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Contador_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(clear),
        .D(plusOp[2]),
        .Q(out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Contador_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(clear),
        .D(plusOp[3]),
        .Q(out[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
