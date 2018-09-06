library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity cont_bacan is
	port (	clk, ud, rst	:	in std_logic;
				Q					:	out std_logic_vector(3 downto 0));
end cont_bacan;

architecture lechuguita of cont_bacan is
signal feos	:	std_logic_vector(3 downto 0):="0010";

begin
		process(clk,ud,rst)
		begin
			if rst = '1' then
				feos <= "0010";
			else
				if rising_edge(clk) then
					if ud = '1' then
						if feos = "0111" then
							feos <= "0010";
						else
							feos <= feos + 1;
						end if;
					else
						if feos = "0010" then
							feos <= "0111";
						else
							feos <= feos - 1;
						end if;
					end if;
				end if;
			end if;
		end process;
		Q <= feos;
end lechuguita;

