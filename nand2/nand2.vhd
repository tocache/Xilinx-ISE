library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity nand2 is
	port(	A, B: in std_logic;
			C:		out std_logic);
end nand2;

architecture Behavioral of nand2 is
begin
		C <= A nand B;
end Behavioral;