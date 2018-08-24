library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity compuerta_xor2 is
	port(	R, S	:	in std_logic;
			T		:	out std_logic_vector(7 downto 0));
end compuerta_xor2;

architecture papaya of compuerta_xor2 is
signal conexion: std_logic_vector(1 downto 0);
begin
		conexion <= R & S;
		with conexion select
			T <=  (others => '0') when "00",
					(others => '1') when "01",
					(others => '1') when "10",
					(others => '0') when "11",
					(others => 'Z') when others;
end papaya;

