library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pwm is
	port(
		enable, clock: in std_logic;
		duty : in std_logic_vector(7 downto 0);
		output : out std_logic
	);
end pwm;

architecture logic of pwm is

	signal count : std_logic_vector(7 downto 0);

begin
	
	process(enable, clock)
	begin
		if (enable = '0') then
			output <= '1';
			count <= "00000000";
		elsif (clock'event and clock = '1') then
			
			count <= count + '1';
			
			if (count <= duty) then
				output <= '0';
			else
				output <= '1';
			end if;
			
		end if;
	end process;
	
end logic;