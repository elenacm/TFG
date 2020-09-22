-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Mon Jun 01 17:31:49 2020
-- Host        : LAPTOP-3I35GVHS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/eleni/Desktop/project_1/Seminario 1-1/Seminario
--               1-1.sim/sim_1/synth/func/Top_func_synth.vhd}
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Div_Frec is
  port (
    CLK : out STD_LOGIC;
    \^clk\ : in STD_LOGIC;
    btn_IBUF : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end Div_Frec;

architecture STRUCTURE of Div_Frec is
  signal \Contador[0]_i_5_n_0\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Contador_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Contador_reg_n_0_[0]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[10]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[11]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[12]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[13]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[14]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[15]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[16]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[17]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[1]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[2]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[3]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[4]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[5]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[6]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[7]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[8]\ : STD_LOGIC;
  signal \Contador_reg_n_0_[9]\ : STD_LOGIC;
  signal Salida0 : STD_LOGIC;
  signal Salida_i_2_n_0 : STD_LOGIC;
  signal Salida_i_3_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal \NLW_Contador_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Contador_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\Contador[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Contador_reg_n_0_[0]\,
      O => \Contador[0]_i_5_n_0\
    );
\Contador_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[0]_i_1_n_7\,
      Q => \Contador_reg_n_0_[0]\,
      R => '0'
    );
\Contador_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Contador_reg[0]_i_1_n_0\,
      CO(2) => \Contador_reg[0]_i_1_n_1\,
      CO(1) => \Contador_reg[0]_i_1_n_2\,
      CO(0) => \Contador_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \Contador_reg[0]_i_1_n_4\,
      O(2) => \Contador_reg[0]_i_1_n_5\,
      O(1) => \Contador_reg[0]_i_1_n_6\,
      O(0) => \Contador_reg[0]_i_1_n_7\,
      S(3) => \Contador_reg_n_0_[3]\,
      S(2) => \Contador_reg_n_0_[2]\,
      S(1) => \Contador_reg_n_0_[1]\,
      S(0) => \Contador[0]_i_5_n_0\
    );
\Contador_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[8]_i_1_n_5\,
      Q => \Contador_reg_n_0_[10]\,
      R => '0'
    );
\Contador_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[8]_i_1_n_4\,
      Q => \Contador_reg_n_0_[11]\,
      R => '0'
    );
\Contador_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[12]_i_1_n_7\,
      Q => \Contador_reg_n_0_[12]\,
      R => '0'
    );
\Contador_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Contador_reg[8]_i_1_n_0\,
      CO(3) => \Contador_reg[12]_i_1_n_0\,
      CO(2) => \Contador_reg[12]_i_1_n_1\,
      CO(1) => \Contador_reg[12]_i_1_n_2\,
      CO(0) => \Contador_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Contador_reg[12]_i_1_n_4\,
      O(2) => \Contador_reg[12]_i_1_n_5\,
      O(1) => \Contador_reg[12]_i_1_n_6\,
      O(0) => \Contador_reg[12]_i_1_n_7\,
      S(3) => \Contador_reg_n_0_[15]\,
      S(2) => \Contador_reg_n_0_[14]\,
      S(1) => \Contador_reg_n_0_[13]\,
      S(0) => \Contador_reg_n_0_[12]\
    );
\Contador_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[12]_i_1_n_6\,
      Q => \Contador_reg_n_0_[13]\,
      R => '0'
    );
\Contador_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[12]_i_1_n_5\,
      Q => \Contador_reg_n_0_[14]\,
      R => '0'
    );
\Contador_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[12]_i_1_n_4\,
      Q => \Contador_reg_n_0_[15]\,
      R => '0'
    );
\Contador_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[16]_i_1_n_7\,
      Q => \Contador_reg_n_0_[16]\,
      R => '0'
    );
\Contador_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Contador_reg[12]_i_1_n_0\,
      CO(3) => \Contador_reg[16]_i_1_n_0\,
      CO(2) => \Contador_reg[16]_i_1_n_1\,
      CO(1) => \Contador_reg[16]_i_1_n_2\,
      CO(0) => \Contador_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Contador_reg[16]_i_1_n_4\,
      O(2) => \Contador_reg[16]_i_1_n_5\,
      O(1) => \Contador_reg[16]_i_1_n_6\,
      O(0) => \Contador_reg[16]_i_1_n_7\,
      S(3) => data6,
      S(2) => data7,
      S(1) => \Contador_reg_n_0_[17]\,
      S(0) => \Contador_reg_n_0_[16]\
    );
\Contador_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[16]_i_1_n_6\,
      Q => \Contador_reg_n_0_[17]\,
      R => '0'
    );
\Contador_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[16]_i_1_n_5\,
      Q => data7,
      R => '0'
    );
\Contador_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[16]_i_1_n_4\,
      Q => data6,
      R => '0'
    );
\Contador_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[0]_i_1_n_6\,
      Q => \Contador_reg_n_0_[1]\,
      R => '0'
    );
\Contador_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[20]_i_1_n_7\,
      Q => data5,
      R => '0'
    );
\Contador_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Contador_reg[16]_i_1_n_0\,
      CO(3) => \Contador_reg[20]_i_1_n_0\,
      CO(2) => \Contador_reg[20]_i_1_n_1\,
      CO(1) => \Contador_reg[20]_i_1_n_2\,
      CO(0) => \Contador_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Contador_reg[20]_i_1_n_4\,
      O(2) => \Contador_reg[20]_i_1_n_5\,
      O(1) => \Contador_reg[20]_i_1_n_6\,
      O(0) => \Contador_reg[20]_i_1_n_7\,
      S(3) => data2,
      S(2) => data3,
      S(1) => data4,
      S(0) => data5
    );
\Contador_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[20]_i_1_n_6\,
      Q => data4,
      R => '0'
    );
\Contador_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[20]_i_1_n_5\,
      Q => data3,
      R => '0'
    );
\Contador_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[20]_i_1_n_4\,
      Q => data2,
      R => '0'
    );
\Contador_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[24]_i_1_n_7\,
      Q => data1,
      R => '0'
    );
\Contador_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Contador_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_Contador_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Contador_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_Contador_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \Contador_reg[24]_i_1_n_6\,
      O(0) => \Contador_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => data0,
      S(0) => data1
    );
\Contador_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[24]_i_1_n_6\,
      Q => data0,
      R => '0'
    );
\Contador_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[0]_i_1_n_5\,
      Q => \Contador_reg_n_0_[2]\,
      R => '0'
    );
\Contador_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[0]_i_1_n_4\,
      Q => \Contador_reg_n_0_[3]\,
      R => '0'
    );
\Contador_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[4]_i_1_n_7\,
      Q => \Contador_reg_n_0_[4]\,
      R => '0'
    );
\Contador_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Contador_reg[0]_i_1_n_0\,
      CO(3) => \Contador_reg[4]_i_1_n_0\,
      CO(2) => \Contador_reg[4]_i_1_n_1\,
      CO(1) => \Contador_reg[4]_i_1_n_2\,
      CO(0) => \Contador_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Contador_reg[4]_i_1_n_4\,
      O(2) => \Contador_reg[4]_i_1_n_5\,
      O(1) => \Contador_reg[4]_i_1_n_6\,
      O(0) => \Contador_reg[4]_i_1_n_7\,
      S(3) => \Contador_reg_n_0_[7]\,
      S(2) => \Contador_reg_n_0_[6]\,
      S(1) => \Contador_reg_n_0_[5]\,
      S(0) => \Contador_reg_n_0_[4]\
    );
\Contador_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[4]_i_1_n_6\,
      Q => \Contador_reg_n_0_[5]\,
      R => '0'
    );
\Contador_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[4]_i_1_n_5\,
      Q => \Contador_reg_n_0_[6]\,
      R => '0'
    );
\Contador_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[4]_i_1_n_4\,
      Q => \Contador_reg_n_0_[7]\,
      R => '0'
    );
\Contador_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[8]_i_1_n_7\,
      Q => \Contador_reg_n_0_[8]\,
      R => '0'
    );
\Contador_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Contador_reg[4]_i_1_n_0\,
      CO(3) => \Contador_reg[8]_i_1_n_0\,
      CO(2) => \Contador_reg[8]_i_1_n_1\,
      CO(1) => \Contador_reg[8]_i_1_n_2\,
      CO(0) => \Contador_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Contador_reg[8]_i_1_n_4\,
      O(2) => \Contador_reg[8]_i_1_n_5\,
      O(1) => \Contador_reg[8]_i_1_n_6\,
      O(0) => \Contador_reg[8]_i_1_n_7\,
      S(3) => \Contador_reg_n_0_[11]\,
      S(2) => \Contador_reg_n_0_[10]\,
      S(1) => \Contador_reg_n_0_[9]\,
      S(0) => \Contador_reg_n_0_[8]\
    );
\Contador_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \Contador_reg[8]_i_1_n_6\,
      Q => \Contador_reg_n_0_[9]\,
      R => '0'
    );
Salida_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => data2,
      I2 => btn_IBUF(1),
      I3 => data1,
      I4 => btn_IBUF(0),
      I5 => data0,
      O => Salida_i_2_n_0
    );
Salida_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7,
      I1 => data6,
      I2 => btn_IBUF(1),
      I3 => data5,
      I4 => btn_IBUF(0),
      I5 => data4,
      O => Salida_i_3_n_0
    );
Salida_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => Salida0,
      Q => CLK,
      R => '0'
    );
Salida_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => Salida_i_2_n_0,
      I1 => Salida_i_3_n_0,
      O => Salida0,
      S => btn_IBUF(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity contador_4bits is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    clear : in STD_LOGIC
  );
end contador_4bits;

architecture STRUCTURE of contador_4bits is
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Contador[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Contador[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Contador[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Contador[3]_i_1\ : label is "soft_lutpair0";
begin
  \out\(3 downto 0) <= \^out\(3 downto 0);
\Contador[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => plusOp(0)
    );
\Contador[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      O => plusOp(1)
    );
\Contador[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => \^out\(2),
      O => plusOp(2)
    );
\Contador[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \^out\(3),
      O => plusOp(3)
    );
\Contador_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => clear,
      D => plusOp(0),
      Q => \^out\(0)
    );
\Contador_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => clear,
      D => plusOp(1),
      Q => \^out\(1)
    );
\Contador_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => clear,
      D => plusOp(2),
      Q => \^out\(2)
    );
\Contador_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => clear,
      D => plusOp(3),
      Q => \^out\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    btn : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal Salida : STD_LOGIC;
  signal btn_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rst_IBUF : STD_LOGIC;
begin
Contador4: entity work.contador_4bits
     port map (
      CLK => Salida,
      clear => rst_IBUF,
      \out\(3) => led_OBUF(0),
      \out\(2) => led_OBUF(1),
      \out\(1) => led_OBUF(2),
      \out\(0) => led_OBUF(3)
    );
DivisorFrecuencia: entity work.Div_Frec
     port map (
      CLK => Salida,
      btn_IBUF(2 downto 0) => btn_IBUF(2 downto 0),
      \^clk\ => clk_IBUF_BUFG
    );
\btn_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(0),
      O => btn_IBUF(0)
    );
\btn_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(1),
      O => btn_IBUF(1)
    );
\btn_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => btn(2),
      O => btn_IBUF(2)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
