library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity maquinon is
	port (	clk, datain	:	in std_logic;
				qout			:	out std_logic);
end maquinon;

architecture pokemon of maquinon is

type state_type is (X0, X1, X2, X3, X4); 
signal state, next_state : state_type:=X0; 

signal interna : std_logic:='0';  -- example output signal

begin

lucuma: process (clk)
   begin
      if rising_edge(clk) then
         state <= next_state;
         qout <= interna;
      end if;
   end process;
 
 
   NEXT_STATE_DECODE: process (state, datain)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
      case (state) is
         when X0 =>
            if datain = '1' then
               next_state <= X1;
				else
					next_state <= X0;
            end if;
				interna <= '0';
         when X1 =>
            if datain = '0' then
               next_state <= X2;
				else
					next_state <= X1;
            end if;
				interna <= '0';
         when X2 =>
            if datain = '1' then
               next_state <= X3;
				else
					next_state <= X0;
            end if;
				interna <= '0';
         when X3 =>
            if datain = '1' then
               next_state <= X4;
					interna <= '1';
				else
					next_state <= X2;
					interna <= '0';
            end if;
         when X4 =>
            if datain = '1' then
               next_state <= X1;
				else
					next_state <= X2;
            end if;
				interna <= '0';
         when others =>
            next_state <= X0;
      end case;      
   end process;

end pokemon;

