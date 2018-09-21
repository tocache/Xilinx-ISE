----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:39:34 04/16/2015 
-- Design Name: 
-- Module Name:    maquinon - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity maquinon is
    Port ( clk : in  STD_LOGIC;
           datain : in  STD_LOGIC;
           validate : out  STD_LOGIC);
end maquinon;

architecture Behavioral of maquinon is

TYPE STATE_TYPE IS (state_A, state_B, state_C, state_D, state_E);
SIGNAL state: STATE_TYPE;

begin

PROCESS (clk)
BEGIN
    IF clk 'EVENT AND clk = '1' THEN         CASE state IS
            WHEN state_A =>
                IF datain = '1' THEN
                    state <= state_B;
                ELSE
                    state <= state_A;
                END IF;
            WHEN state_B =>
                IF datain = '0' THEN
                    state <= state_C;
                ELSE
                    state <= state_B;
                END IF;
            WHEN state_C =>
                IF datain = '1' THEN
                    state <= state_D;
                ELSE
                    state <= state_A;
                END IF;
            WHEN state_D =>
                IF datain = '1' THEN
                    state <= state_E;
                ELSE
                    state <= state_C;
                END IF;
            WHEN state_E =>
                IF Input1 = '1' THEN
                    state <= state_B;
                ELSE
                    state <= state_A;
                END IF;
            WHEN OTHERS =>
                state <= state_A;
        END CASE;
    END IF;
END PROCESS;

WITH state SELECT -- Define State Machine Outputs
    validate <='0' WHEN state_A,
               '0' WHEN state_B,
               '0' WHEN state_C;                '0' WHEN state_D;                '1' WHEN state_E; 
End Behavioral;

