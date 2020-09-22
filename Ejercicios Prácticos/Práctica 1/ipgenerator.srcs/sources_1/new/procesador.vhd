------------------------------------------------------------------------------
--                                                                            |
-- Archivo: procesador                                                        |
-- Autora : Elena Cantero Molina                                              |
-- Fecha : 27/07/2020                                                         |
--                                                                            |
------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

entity procesador is
  PORT( clock : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		AC_out : out std_logic_vector(15 downto 0);
		IR_out : out std_logic_vector(15 downto 0);
		PC_out : out std_logic_vector(7 downto 0);
		MEMq : in std_logic_vector(15 downto 0);
		MEMdata: out std_logic_vector(15 downto 0);
		MEMwe : out std_logic;
		MEMadr : out std_logic_vector(7 downto 0);
		IO_input : in std_logic_vector(7 downto 0);
		IO_output : out std_logic_vector(7 downto 0)
	  );
end procesador;

architecture Behavioral of procesador is

    TYPE STATE_TYPE IS ( reset_pc, fetch1, fetch0, decode, add2, add1, add0, load1, load0,
						 store0, store1, jump, sub0, sub1, nand0, nand1,
						 jneg, jpos, jzero, shr0, shl0, in1, out1);
	SIGNAL state: STATE_TYPE;
	SIGNAL IR, AC, RT: STD_LOGIC_VECTOR(15 DOWNTO 0 );
	SIGNAL PC : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	
	BEGIN
		
	-- Asignaciones a puertos de salida
	--	
	AC_out <= AC;
	IR_out <= IR;
	PC_out <= PC;


FSMD: PROCESS ( CLOCK, RESET, state, PC, AC, IR )

BEGIN

-- Asignaciones a REGISTROS en datapath y MAQUINA DE ESTADOS de la unidad de control

--versión original
IF reset = '1' THEN
	state <= reset_pc;
	ELSIF clock'EVENT AND clock = '1' THEN
	 CASE state IS   
		WHEN reset_pc =>
			PC	<= "00000000";
			AC <= "0000000000000000";
			state <= fetch0;
		WHEN fetch0 =>		
			state <= fetch1;		
		WHEN fetch1 =>
			IR <= MEMq;
			PC <= PC + 1;
			state <= decode;	
		WHEN decode =>
			CASE IR( 15 DOWNTO 8 ) IS
				WHEN "00000000" =>
					state <= add0;
				WHEN "00000001" =>
					state <= store0;
				WHEN "00000010" =>
					state <= load0;
				WHEN "00000011" =>
					state <= jump;
				WHEN OTHERS =>
					state <= fetch0;
			END CASE;
		WHEN add0 => 
			state <= add1;
		WHEN add1 =>
			AC <= AC + MEMq;
			state <= fetch0;	
		WHEN store0 =>
			state <= store1;
		WHEN store1 =>
			state <= fetch0;			
		WHEN load0 =>
			state <= load1;	
		WHEN load1 =>
			AC <= MEMq;
			state <= fetch0;			
		WHEN jump =>
			PC <= IR( 7 DOWNTO 0 );
			state <= fetch0;			
		WHEN OTHERS =>
			state <= fetch0;	
	 END CASE;
	END IF;
	
-- Asignaciones a BUSES de entrada a MEMORIA (Direcciones, Datos y control de escritura)
 
 --versión original
 CASE state IS
		WHEN fetch0 =>
			MEMadr <= PC;
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN add0 | load0 =>
			MEMadr <= IR(7 downto 0);
			MEMwe <= '0';
			MEMdata <= (others =>'-');
		WHEN store0 => 
			MEMadr <= IR(7 downto 0);
			MEMwe <= '1';
			MEMdata <= AC;
		WHEN others =>
			MEMadr <= IR(7 downto 0);
			MEMwe <= '0';
			MEMdata <= (others =>'-');
	end case;
	
END PROCESS;

end Behavioral;


	
