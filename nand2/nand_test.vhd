LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY nand_test IS
END nand_test;
 
ARCHITECTURE behavior OF nand_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nand2
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nand2 PORT MAP (
          A => A,
          B => B,
          C => C
        );

		A <= not A after 20ns;
		B <= not B after 40ns;

END;
