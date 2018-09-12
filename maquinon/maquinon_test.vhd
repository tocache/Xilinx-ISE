LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY maquinon_test IS
END maquinon_test;
 
ARCHITECTURE behavior OF maquinon_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT maquinon
    PORT(
         clk : IN  std_logic;
         datain : IN  std_logic;
         qout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal datain : std_logic := '0';

 	--Outputs
   signal qout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: maquinon PORT MAP (
          clk => clk,
          datain => datain,
          qout => qout
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

      -- wait for clk_period*10;

      -- insert stimulus here
		datain <= '1' after 100 ns, '0' after 120 ns, '1' after 140 ns, '0' after 160 ns, '1' after 180 ns;

      wait;
   end process;

END;
