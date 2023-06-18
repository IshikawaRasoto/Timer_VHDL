library IEEE;
use IEEE.std_logic_1164.all;

entity Cont9a0 is

	port(
		
		Q3, Q2, Q1, Q0: in std_logic;
		D3, D2, D1, D0: out std_logic
		
	);
	
end Cont9a0;

architecture archCont9a0 of Cont9a0 is

	begin
	
	D0 <= not Q0;
	D1 <= (Q1 and Q0) or (not Q1 and not Q0 and (Q3 or Q2));
	D2 <= (Q2 and (Q1 or Q0)) or (Q3 and not Q2 and not Q0);
	D3 <= (not Q3 and not Q2 and not Q1 and not Q0) or (Q3 and Q0);
	
end archCont9a0;