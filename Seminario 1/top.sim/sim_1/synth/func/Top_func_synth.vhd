-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Sun May 24 18:30:45 2020
-- Host        : LAPTOP-3I35GVHS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/eleni/Desktop/project_1/Seminario
--               1/top.sim/sim_1/synth/func/Top_func_synth.vhd}
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    Velocidad : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
begin
\led_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(0),
      T => '1'
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(1),
      T => '1'
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(2),
      T => '1'
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => led(3),
      T => '1'
    );
end STRUCTURE;
