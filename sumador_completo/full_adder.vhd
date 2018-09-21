library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity full_adder is
    Port ( Cin : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Suma : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin

	Suma <= (A xor B) xor Cin;
	Cout <= (A and B) or ((A xor B) and Cin);

end Behavioral;

