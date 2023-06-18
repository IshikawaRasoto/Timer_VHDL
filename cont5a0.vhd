library IEEE;
use IEEE.std_logic_1164.all;

entity cont5a0 is

	port(
	
		Q2, Q1, Q0: in std_logic;
		D2, D1, D0: out std_logic
	
	);
	
end cont5a0;

architecture archcont5a0 of cont5a0 is

	begin
	
	D0 <= not Q0;
	D1 <= (Q1 and Q0) or (Q2 and not Q0);
	D2 <= (not Q2 and not Q1 and not Q0) or (Q2 and Q0);
	
end archcont5a0;