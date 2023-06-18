library IEEE;
use IEEE.std_logic_1164.all;

entity DecoderLED is

	port(
	
		Q2, Q1, Q0: in std_logic;
		L4, L3, L2, L1: out std_logic
	
	);
	
end DecoderLED;

architecture archDecoderLED of DecoderLED is

	begin
	
	L4 <= Q2 or Q1 or Q0;
	L3 <= Q1 or Q2;
	L2 <= Q2 or (Q1 and Q0);
	L1 <= Q2;
	
end archDecoderLED;