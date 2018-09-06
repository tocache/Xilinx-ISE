LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sesiondh_test IS
END sesiondh_test;
 
ARCHITECTURE behavior OF sesiondh_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sesiondh
    PORT(
         clk : IN  std_logic;
         ud : IN  std_logic;
         rst : IN  std_logic;
         p7s : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ud : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal p7s : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sesiondh PORT MAP (
          clk => clk,
          ud => ud,
          rst => rst,
          p7s => p7s
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
