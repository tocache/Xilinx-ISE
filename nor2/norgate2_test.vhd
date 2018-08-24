LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY norgate2_test IS
END norgate2_test;
 
ARCHITECTURE behavior OF norgate2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT norgate2
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
   uut: norgate2 PORT MAP (
          A => A,
          B => B,
          C => C
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	
      -- insert stimulus here 
		A <= '0', '1' after 20ns, '0' after 40ns, '1' after 80ns, '0' after 110ns;
      B <= '0', '1' after 30ns, '0' after 40ns, '1' after 90ns, '0' after 120ns;
		wait;
   end process;

END;
