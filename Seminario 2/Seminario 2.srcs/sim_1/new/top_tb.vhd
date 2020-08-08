----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.06.2020 17:44:10
-- Design Name: 
-- Module Name: top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
    COMPONENT contador_4bits 
    PORT(
        Reloj : in std_logic;
        Reset : in std_logic;
        Salida : out std_logic_vector(3 downto 0)
    );
    END COMPONENT;
    
    SIGNAL reloj_s : std_logic := '0';
    SIGNAL reset_s : std_logic;
    SIGNAL salida_s : std_logic_vector(3 downto 0);
       
begin
    DUT : contador_4bits 
    PORT MAP(
      Reloj => reloj_s,
      Reset => reset_s,
      Salida => salida_s  
    );
    
    reloj_s <= NOT reloj_s AFTER 50ns;      -- estímulo del reloj
    
    estimulos: PROCESS
    BEGIN
        reset_s <= '1';
        WAIT FOR 100ns;
        reset_s <= '0';
        WAIT;
        
    END PROCESS;
    
end Behavioral;
