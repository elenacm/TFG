----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2020 18:33:10
-- Design Name: 
-- Module Name: comb - Behavioral
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

entity comb is
  Port ( a : in STD_LOGIC;
         b : in STD_LOGIC;
         c : in STD_LOGIC;
         j : out STD_LOGIC;
         k : out STD_LOGIC);
end comb;

architecture Behavioral of comb is
    signal abc : std_logic_vector(2 downto 0);      -- create internal bus
begin

    abc <= a & b & c;      --combine signals together
    
    -- example - use conditional signal assignement statement for output j
    j <= '1' when abc = "001" OR abc = "011" else '0';
    
    -- example - use process statement for output k
    process(abc)
    begin
        case(abc) is
            when "000" | "001" | "011" | "100" | "101" =>
                k <= '1';
            when others =>
                k <= '0';
        end case;
    end process;

end Behavioral;
