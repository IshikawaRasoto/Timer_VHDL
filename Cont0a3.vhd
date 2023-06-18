library IEEE;
use IEEE.std_logic_1164.all;

entity Cont0a3 is

	port(
	
		Q1, Q0: in std_logic;
		D1, D0: out std_logic
	
	);
	
end Cont0a3;


architecture archCont0a3 of Cont0a3 is

	begin
	
	D0 <= not Q1;
	D1 <= Q0;
	
end archCont0a3;