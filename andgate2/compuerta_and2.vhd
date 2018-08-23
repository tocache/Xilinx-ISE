library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity compuerta_and2 is
	port(	A, B	:	in	std_logic;
			C		:	out std_logic);
end compuerta_and2;

architecture chirimoya of compuerta_and2 is

begin
		C <= A and B;

end chirimoya;

