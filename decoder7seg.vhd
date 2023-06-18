library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity decoder7seg is
	Port(
		DM3, DM2, DM1, DM0, DMPONTO: in std_logic;
		UM3, UM2, UM1, UM0, UMPONTO: in std_logic;
		DS3, DS2, DS1, DS0, DSPONTO: in std_logic;
		US3, US2, US1, US0, USPONTO: in std_logic;
		EN1, EN0: in std_logic;
		S6, S5, S4, S3, S2, S1, S0, Sponto: out std_logic;
		DIS4, DIS3, DIS2, DIS1: out std_logic 
	);

end decoder7seg;

architecture archdecoder7seg of decoder7seg is

	signal q3, q2, q1, q0: std_logic;


	begin
	
	process(EN1, EN0)
	
		begin
		
		if(EN1 = '0' and EN0 = '0') then
			
			q3 <= US3;
			q2 <= US2;
			q1 <= US1;
			q0 <= US0;
			Sponto <= USPONTO;
			
			DIS4 <= '1';
			DIS3 <= '1';
			DIS2 <= '1';
			DIS1 <= '0';
			
		elsif(EN1 = '0' and EN0 = '1') then
		
			q3 <= DS3;
			q2 <= DS2;
			q1 <= DS1;
			q0 <= DS0;
			Sponto <= DSPONTO;
			
			DIS4 <= '1';
			DIS3 <= '1';
			DIS2 <= '0';
			DIS1 <= '1';
			
		elsif(EN1 = '1' and EN0 = '0') then
	
			q3 <= UM3;
			q2 <= UM2;
			q1 <= UM1;
			q0 <= UM0;
			Sponto <= UMPONTO;
			
			DIS4 <= '1';
			DIS3 <= '0';
			DIS2 <= '1';
			DIS1 <= '1';
			
		elsif(EN1 = '1' and EN0 = '1') then
			
			q3 <= DM3;
			q2 <= DM2;
			q1 <= DM1;
			q0 <= DM0;
			Sponto <= DMPONTO;
			
			DIS4 <= '0';
			DIS3 <= '1';
			DIS2 <= '1';
			DIS1 <= '1';
			
		end if;
		
		S0 <= (q1 and not q0) or (q2 and q1) or (q3 and not q2 and not q1) or (not q3 and (not q2 xor (q1 xor q0)));
		S1 <= (not q3 and not q2) or (not (q1 and q0) and q3 and not q2) or (not (not q3 and q2) and not q1 and q0) or(not q3 and q2 and not (q1 xor q0));
		S2 <= (q3 xor q2) or (not q1 and q0) or (not q3 and not (q1 xor q0));
		S3 <= (not q2 xor (q1 xor q0)) or (not q3 and not q2 and q1) or (q3 and not q1 and not q0);
		S4 <= (q1 and not q0) or (q3 and q1) or (not q2 and not q0) or (q3 and q2);
		S5 <= (q3 and q1) or (not q1 and (q3 xor q2)) or (q2 and q1 and not q0) or (not q3 and not q1 and not q0);
		S6 <= q3 or (q2 xor q1) or (q1 and not q0);
		
		
	end process;
		
end archdecoder7seg;