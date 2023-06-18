library IEEE;
use IEEE.std_logic_1164.all;

entity LogHora is

	port(
		
		Q2, Q1, Q0: in std_logic;
		D2, D1, D0: out std_logic
		
	);
	
end LogHora;

architecture archLogHora of LogHora is

	begin
	
	D2 <= not Q2 and not Q1 and not Q0;
	D1 <= Q2 or (Q1 and Q0);
	D0 <= q2 or (Q1 and not Q0);
	
end archLogHora;