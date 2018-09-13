library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detectomon is
	port	(	di, clk:	in	std_logic;
				le		:	out std_logic);
end detectomon;

architecture camucamu of detectomon is

type state_type is (T0, T1, T2, T3, T4, T5, T6); 
signal estado_presente, estado_siguiente : state_type := T0; 

signal internito : std_logic;  -- example output signal

begin

-- Proceso para detectar el reloj 
lucuma: process (clk)
   begin
      if rising_edge(clk) then
            estado_presente <= estado_siguiente;
            le <= internito;
      end if;
   end process;
 
siguiente_estado: process (estado_presente, di)
	begin
	estado_siguiente <= estado_presente;
      case (estado_presente) is
         when T0 =>
            if di = '1' then
               estado_siguiente <= T1;
					internito <= '0';
				else
					estado_siguiente <= T0;
					internito <= '0';
            end if;
         when T1 =>
            if di = '1' then
               estado_siguiente <= T1;
					internito <= '0';
				else
					estado_siguiente <= T2;
					internito <= '0';
            end if;
         when T2 =>
            if di = '1' then
               estado_siguiente <= T3;
					internito <= '0';
				else
					estado_siguiente <= T0;
					internito <= '0';
            end if;
         when T3 =>
            if di = '1' then
               estado_siguiente <= T4;
					internito <= '0';
				else
					estado_siguiente <= T2;
					internito <= '0';
            end if;	
         when T4 =>
            if di = '1' then
               estado_siguiente <= T1;
					internito <= '0';
				else
					estado_siguiente <= T5;
					internito <= '0';
            end if;
         when T5 =>
            if di = '1' then
               estado_siguiente <= T3;
					internito <= '0';
				else
					estado_siguiente <= T6;
					internito <= '1';
            end if;	
         when T6 =>
            if di = '1' then
               estado_siguiente <= T1;
					internito <= '0';
				else
					estado_siguiente <= T0;
					internito <= '0';
            end if;				
      end case;      
	end process;
end camucamu;

