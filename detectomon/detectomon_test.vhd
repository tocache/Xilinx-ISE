LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY detectomon_test IS
END detectomon_test;
 
ARCHITECTURE behavior OF detectomon_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT detectomon
    PORT(
         di : IN  std_logic;
         clk : IN  std_logic;
         le : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal di : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal le : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: detectomon PORT MAP (
          di => di,
          clk => clk,
          le => le
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      -- wait for 100 ns;	

      wait for clk_period*10;
		di <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 60 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
