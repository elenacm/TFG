------------------------------------------------------------------------------
--                                                                            |
-- Descripción de una bola cuadrada que se mueve hacia arriba y hacia abajo,  |
-- respetando los márgenes superior e inferior de la pantalla.                |
--                                                                            |
-- Basado en ejemplo de Hamblen, J.O., Hall T.S., Furman, M.D.:               |
-- Rapid Prototyping of Digital Systems : SOPC Edition, Springer 2008.        |
-- (Capítulo 10)                                                              |
--                                                                            |
-- Archivo: bola                                                              |
-- Autora : Elena Cantero Molina                                              |
-- Fecha : 08/08/2020                                                         |
--                                                                            |
------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY bola IS
	PORT(
		Red,Green,Blue : OUT std_logic;
	   vs : IN std_logic;
		pixel_Y, pixel_X : IN std_logic_vector(9 downto 0)
		);
END bola;

architecture funcional of bola is
   -- Señales para el tamaño de la bola y su desplazamiento
	SIGNAL Bola_on : STD_LOGIC;	-- "Dibujar" bola
	SIGNAL Desplaza_Bola_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la bola en y
	SIGNAL Desplaza_Bola_X: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la bola en x
	SIGNAL Bola_Y  : STD_LOGIC_VECTOR(9 DOWNTO 0);	-- "Eje" y de la bola
	SIGNAL Bola_X	: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- "Eje" x de la bola
	
	CONSTANT Size_X : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(4,10);	-- Tamaño del objeto en el eje x
		
BEGIN

-- Pelota gris, pala izquierda roja y pala derecha azul
Red	<= Bola_on;
Green	<= Bola_on;
Blue	<= Bola_on;

Dibujar_Bola: Process (Bola_Y, pixel_X, pixel_Y)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la bola
	-- Poner Bola_on a '1' para visualizar la bola
	IF (Bola_X <= pixel_X + Size_X) AND
		(Bola_X + Size_X >= pixel_X) AND
		(Bola_Y <= pixel_Y + Size_X) AND
		(Bola_Y + Size_X >= pixel_Y ) THEN
		
		Bola_on <= '1';
	ELSE
		Bola_on <= '0';
	END IF;
	
END process Dibujar_Bola;

Mover_Bola: PROCESS (vs)
BEGIN
	-- Actualizar la posici?n de la bola en cada refresco de pantalla
	IF vs'event and vs = '1' THEN
		-- Detectar los bordes superior e inferior de la pantalla
			IF Bola_Y  >= CONV_STD_LOGIC_VECTOR(479,10) - Size_X THEN
				Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSIF  Bola_Y <= Size_X  THEN
				Desplaza_Bola_Y <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			-- Calcular la siguiente posicion de la bola
			Bola_Y 	  	<= Bola_Y + Desplaza_Bola_Y;
			
		 --Detectar los bordes derecho e izquierdo de la pantalla
			IF Bola_X  >= CONV_STD_LOGIC_VECTOR(639,10) - Size_X THEN	
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2,10);				
			ELSIF  Bola_X <= Size_X  THEN											
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			--Calcular la siguiente posicion de la bola
			Bola_X 	  	<= Bola_X + Desplaza_Bola_X;
			
	END IF;
END process Mover_Bola;

-- Los botones están a la alta siempre que no estén pulsados

END funcional;