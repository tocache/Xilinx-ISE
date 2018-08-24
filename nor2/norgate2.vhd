library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity norgate2 is
	port(	A, B:	in std_logic;
			C:		out std_logic);
end norgate2;

architecture chocolate of norgate2 is
begin
	process(A, B)
	begin
		if A = '0' and B = '0' then
			C <= '1';
		else
			C <= '0';
		end if;
	end process;
end chocolate;

