LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
 
ENTITY cont_bacan_test IS
END cont_bacan_test;
 
ARCHITECTURE behavior OF cont_bacan_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cont_bacan
    PORT(
         clk : IN  std_logic;
         ud : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ud : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cont_bacan PORT MAP (
          clk => clk,
          ud => ud,
          rst => rst,
          Q => Q
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

		rst <= '1' after 40ns, '0' after 50ns;
		ud <= '1' after 100ns;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
