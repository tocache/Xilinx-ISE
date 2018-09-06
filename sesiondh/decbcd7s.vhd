library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decbcd7s is
	port	(	i	:	in std_logic_vector(3 downto 0);
				s	:	out std_logic_vector(6 downto 0));
end decbcd7s;

architecture Behavioral of decbcd7s is
begin
		with i select
			s <=  "0111111" when "0000",
					"0000110" when "0001",
					"1011011" when "0010",
					"1001111" when "0011",
					"1100110" when "0100",
					"1101101" when "0101",
					"1111101" when "0110",
					"1000111" when "0111",
					"1111111" when "1000",
					"1100111" when "1001",
					"ZZZZZZZ" when others;
end Behavioral;

