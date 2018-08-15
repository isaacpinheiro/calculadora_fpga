library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bin2bcd is
	port(
		bin : in std_logic_vector(7 downto 0);
		bcd : out std_logic_vector(11 downto 0)
	);
end bin2bcd;

architecture logic of bin2bcd is
begin
	
	process(bin)
		
		variable aux : std_logic_vector(7 downto 0);
		variable res : std_logic_vector(11 downto 0);
		
	begin
		
		aux := bin;
		res := "000000000000";
		
		for i in 0 to 7 loop
			
			if (res(3 downto 0) > "0100") then
				res(3 downto 0) := res(3 downto 0) + "0011";
			end if;
			
			if (res(7 downto 4) > "0100") then
				res(7 downto 4) := res(7 downto 4) + "0011";
			end if;
			
			if (res(11 downto 8) > "0100") then
				res(11 downto 8) := res(11 downto 8) + "0011";
			end if;
			
			res := res(10 downto 0) & aux(7);
			aux := aux(6 downto 0) & '0';
			
		end loop;
		
		bcd <= res;
		
	end process;
	
end logic;