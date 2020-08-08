------------------------------------------------------------------------------
--                                                                            |
-- Archivo: contador_4bits                                                    |
-- Autora : Elena Cantero Molina                                              |
-- Fecha : 27/07/2020                                                         |
--                                                                            |
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity contador_4bits is
	Port(	Reloj		: IN	std_logic;
			Reset		: IN 	std_logic;
			Salida		: OUT	std_logic_vector(3 downto 0));
end contador_4bits;

architecture funcional of contador_4bits IS
signal Contador : std_logic_vector(3 downto 0):="0000"; --valores 0 a 255;
begin
	process (Reloj, Reset)
	begin
	if Reset='1' then Contador <= "0000";
		elsif reloj'event AND reloj = '1' then		
			Contador <= Contador + 1;			
		end if;
	end process;
	Salida <= Contador;
end funcional;
