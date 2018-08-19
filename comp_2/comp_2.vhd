library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comp_2 is
	port(
		x : in std_logic_vector(7 downto 0);
		y : out std_logic_vector(7 downto 0)
	);
end comp_2;

architecture logic of comp_2 is
begin
	y <= (not x) + '1';
end logic;