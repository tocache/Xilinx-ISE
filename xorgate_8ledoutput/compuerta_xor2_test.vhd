LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
 
ENTITY compuerta_xor2_test IS
END compuerta_xor2_test;
 
ARCHITECTURE behavior OF compuerta_xor2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compuerta_xor2
    PORT(
         R : IN  std_logic;
         S : IN  std_logic;
         T : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal T : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compuerta_xor2 PORT MAP (
          R => R,
          S => S,
          T => T
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      -- wait for 100 ns;	
		R <= '0', '1' after 20ns, '0' after 40ns, '1' after 60ns, '0' after 80ns, '1' after 100ns;
		S <= '0', '1' after 40ns, '1' after 80ns, '0' after 120ns, '1' after 160ns;

      -- insert stimulus here 

      wait;
   end process;

END;
