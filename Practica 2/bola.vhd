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
		pixel_Y, pixel_X : IN std_logic_vector(9 downto 0);
		up1, down1, up2, down2 : IN std_logic
		);
END bola;

architecture funcional of bola is
   -- Señales para el tamaño de la bola y su desplazamiento
	SIGNAL Bola_on : STD_LOGIC;	-- "Dibujar" bola
	SIGNAL Desplaza_Bola_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la bola en y
	SIGNAL Desplaza_Bola_X: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la bola en x
	SIGNAL Bola_Y  : STD_LOGIC_VECTOR(9 DOWNTO 0);	-- "Eje" y de la bola
	SIGNAL Bola_X	: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- "Eje" x de la bola
	
	-- Señales para el tamaño de la pala izquierda y su desplazamiento vertical	
	SIGNAL Pala_izq_on : STD_LOGIC;	-- "Dibujar" pala izquierda
	SIGNAL Desplaza_Pala_izq_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la pala izquierda en y
	SIGNAL Desplaza_Pala_izq_X: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la pala izquierda en x
	SIGNAL Pala_izq_Y : STD_LOGIC_VECTOR(9 DOWNTO 0);	-- "Eje" y de la pala izquierda
	
	-- Señales para el tamaño de la pala derecha y su desplazamiento vertical	
	SIGNAL Pala_der_on : STD_LOGIC;	-- "Dibujar" pala derecha
	SIGNAL Desplaza_Pala_der_Y: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la pala derecha en y
	SIGNAL Desplaza_Pala_der_X: STD_LOGIC_VECTOR(9 DOWNTO 0);	-- Desplazamiento en píxeles de la pala derecha en x
	SIGNAL Pala_der_Y : STD_LOGIC_VECTOR(9 DOWNTO 0);	-- "Eje" y de la pala derecha
	
	-- Señales para la red del campo
	SIGNAL Red_on : STD_LOGIC;
	SIGNAL Red_y : STD_LOGIC_VECTOR(9 DOWNTO 0);
	CONSTANT Red_x : STD_LOGIC_VECTOR(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(320,10);
	CONSTANT Size_red_y : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(479,10);
	CONSTANT Size_red_x : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(1,10);

	CONSTANT Size_X : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(4,10);	-- Tamaño del objeto en el eje x
	CONSTANT Size_Y : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(40,10); -- Tamaño del objeto en el eje y
	CONSTANT Pala_izq_X : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(40,10);	-- "Eje" x de la pala derecha, constante
	CONSTANT Pala_der_X : STD_LOGIC_VECTOR(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(600,10);	-- "Eje" x de la pala izquierda, constante
	
BEGIN

-- Pelota gris, pala izquierda roja y pala derecha azul
Red	<= Bola_on OR Pala_der_on;
Green	<= Bola_on OR Red_on;
Blue	<= Bola_on OR Pala_izq_on OR Red_on;

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

Dibujar_Pala_Izq: Process (Pala_izq_Y, pixel_X, pixel_Y)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la pala
	-- Poner Pala_on a '1' para visualizar la pala
	IF (Pala_izq_X <= pixel_X + Size_X) AND
		(Pala_izq_X + Size_X >= pixel_X) AND
		(Pala_izq_Y <= pixel_Y + Size_Y) AND
		(Pala_izq_Y + Size_Y >= pixel_Y ) THEN
		
		Pala_izq_on <= '1';
	ELSE
		Pala_izq_on <= '0';
	END IF;
END process Dibujar_Pala_Izq;

Dibujar_Pala_Der: Process (Pala_der_Y, pixel_X, pixel_Y)
BEGIN
	-- Chequear coordenadas X e Y para identificar el area de la pala
	-- Poner Pala_on a '1' para visualizar la pala
	IF (Pala_der_X <= pixel_X + Size_X) AND
		(Pala_der_X + Size_X >= pixel_X) AND
		(Pala_der_Y <= pixel_Y + Size_Y) AND
		(Pala_der_Y + Size_Y >= pixel_Y ) THEN
		
		Pala_der_on <= '1';
	ELSE
		Pala_der_on <= '0';
	END IF;
END process Dibujar_Pala_Der;

Dibujar_Red: Process(Red_Y, pixel_X, pixel_Y)
BEGIN
	IF (Red_X <= pixel_X + Size_red_X) AND
		(Red_X + Size_red_X >= pixel_X) AND
		(Red_Y <= pixel_Y + Size_red_Y) AND
		(Red_Y + Size_red_Y >= pixel_Y ) THEN
		
		Red_on <= '1';
	ELSE
		Red_on <= '0';
	END IF;
END Process Dibujar_Red;

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
			
		-- Rebote por la derecha, pala izquierda
			IF (Bola_Y + Size_X + Size_Y >= Pala_izq_Y) AND
				(Bola_Y <= Pala_izq_Y + Size_Y + Size_X) AND
				(Bola_X <= Pala_izq_X + Size_X + Size_X) THEN
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;
			
			-- Rebote por la izquierda, pala derecha			
			IF (Bola_Y + Size_X + Size_Y >= Pala_der_Y) AND
				(Bola_Y <= Pala_der_Y + Size_Y + Size_X) AND
				(Bola_X + Size_X + Size_X >= Pala_der_X) THEN
				Desplaza_Bola_X <= CONV_STD_LOGIC_VECTOR(-2,10);
			END IF;
			
	END IF;
END process Mover_Bola;

Mover_Pala_Izq: PROCESS (vs)
BEGIN
	-- Actualizar la posici?n de la bola en cada refresco de pantalla
	IF vs'event and vs = '1' THEN
		-- Detectar los bordes superior e inferior de la pantalla
			IF (down1 = '0') AND (Pala_izq_Y  <= CONV_STD_LOGIC_VECTOR(479,10) - Size_Y) THEN
				Desplaza_Pala_izq_Y <= CONV_STD_LOGIC_VECTOR(2,10);
			ELSIF  (up1 = '0') AND (Pala_izq_Y >= Size_Y) THEN
				Desplaza_Pala_izq_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSE
				Desplaza_Pala_izq_Y <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			-- Calcular la siguiente posicion de la bola
			Pala_izq_Y <= Pala_izq_Y + Desplaza_Pala_izq_Y;
	END IF;
END process Mover_Pala_Izq;

Mover_Pala_Der: PROCESS (vs)
BEGIN
	-- Actualizar la posici?n de la bola en cada refresco de pantalla
	IF vs'event and vs = '1' THEN			
		-- Detectar los bordes superior e inferior de la pantalla
			IF (down2 = '0') AND (Pala_der_Y  <= CONV_STD_LOGIC_VECTOR(479,10) - Size_Y) THEN
				Desplaza_Pala_der_Y <= CONV_STD_LOGIC_VECTOR(2,10);
			ELSIF  (up2 = '0') AND (Pala_der_Y >= Size_Y) THEN
				Desplaza_Pala_der_Y <= CONV_STD_LOGIC_VECTOR(-2,10);
			ELSE
				Desplaza_Pala_der_Y <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			
			-- Calcular la siguiente posicion de la bola
			Pala_der_Y <= Pala_der_Y + Desplaza_Pala_der_Y;
	END IF;
END process Mover_Pala_Der;

Mover_Red: PROCESS (vs)
BEGIN
	IF vs'event and vs = '1' THEN			
		Red_Y <= CONV_STD_LOGIC_VECTOR(0,10);
	END IF;
END PROCESS Mover_Red;

-- Los botones están a la alta siempre que no estén pulsados

END funcional;