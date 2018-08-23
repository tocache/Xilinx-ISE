LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY compuerta_and2_test IS
END compuerta_and2_test;
 
ARCHITECTURE behavior OF compuerta_and2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compuerta_and2
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compuerta_and2 PORT MAP (
          A => A,
          B => B,
          C => C
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      -- wait for 100 ns;	
		A <= '0', '1' after 10ns, '0' after 20ns, '1' after 30ns;
		B <= '0', '1' after 20ns, '0' after 40ns;

      -- insert stimulus here 

      wait;
   end process;

END;
