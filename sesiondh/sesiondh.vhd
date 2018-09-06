library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity sesiondh is
	port(	clk,ud,rst	:	in std_logic;
			p7s			: out std_logic_vector(6 downto 0));
end sesiondh;

architecture tomate of sesiondh is
signal alpaca	:	std_logic_vector(3 downto 0);

component cont_bacan
	port (	clk, ud, rst	:	in std_logic;
				Q					:	out std_logic_vector(3 downto 0));
end component;

component decbcd7s
	port	(	i	:	in std_logic_vector(3 downto 0);
				s	:	out std_logic_vector(6 downto 0));
end component;

begin
	u1:	cont_bacan  PORT MAP (clk, ud, rst, alpaca);
	u2:	decbcd7s		PORT MAP (alpaca, p7s);

end tomate;

