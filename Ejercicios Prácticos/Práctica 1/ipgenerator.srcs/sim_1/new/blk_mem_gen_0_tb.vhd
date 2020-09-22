library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity blk_mem_gen_0_tb is
end;

architecture bench of blk_mem_gen_0_tb is

  component blk_mem_gen_0
    PORT (
      clka : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  end component;

  signal clka: STD_LOGIC;
  signal wea: STD_LOGIC_VECTOR(0 DOWNTO 0);
  signal addra: STD_LOGIC_VECTOR(7 DOWNTO 0);
  signal dina: STD_LOGIC_VECTOR(15 DOWNTO 0);
  signal douta: STD_LOGIC_VECTOR(15 DOWNTO 0) ;

begin

  uut: blk_mem_gen_0 port map ( clka  => clka,
                                wea   => wea,
                                addra => addra,
                                dina  => dina,
                                douta => douta );

  stimulus: process
  begin
  
    -- Put initialisation code here
    -- Put test bench stimulus code here

    wait;
  end process;


end;