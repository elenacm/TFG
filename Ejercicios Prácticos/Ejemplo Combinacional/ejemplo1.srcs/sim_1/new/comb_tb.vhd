----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2020 19:18:59
-- Design Name: 
-- Module Name: comb_tb - Behavioral
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

entity comb_tb is
--  Port ( );
end comb_tb;

architecture Behavioral of comb_tb is
    component comb                          -- declare component to test
        port (a, b, c : in std_logic;
              j, k    : out std_logic);
    end component;

    signal abc : std_logic_vector(2 downto 0);     -- create internal signals
    signal j, k : std_logic;
begin
    
    -- instantiate component for test, connect ports to internal signals
    UUt: comb port map (a => abc(2), b => abc(1), c => abc(0), j => j, k => k);
    
    process
    begin
        abc <= "000";       --apply input stimulus, check each input combination
        wait for 100 ns;
        abc <= "001";
        wait for 100 ns;
        abc <= "010";
        wait for 100 ns;
        abc <= "011";
        wait for 100 ns;
        abc <= "100";
        wait for 100 ns;
        abc <= "101";
        wait for 100 ns;
        abc <= "110";
        wait for 100 ns;
        abc <= "111";
        wait;
    end process;

end Behavioral;
