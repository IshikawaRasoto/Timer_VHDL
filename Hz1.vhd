library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Hz1 is

	port(
		
		ClockIn: in std_logic;
		ClockOut: out std_logic
		
	);
	
end Hz1;

architecture LogHz1 of Hz1 is
 
	signal saida: std_logic := '0';
	signal contador: integer := 1;

	begin
	
	
		process (ClockIn)
		
		begin
		
			if(ClockIn'event and ClockIn = '1') then
			
				contador <= contador + 1;
				
				if(contador = 25000000/1) then -- 1Hz
					
					saida <= not saida;
					contador <= 1;
					
				end if;
			
			end if;
			
			ClockOut <= saida;
			
		end process;
	
end LogHz1;