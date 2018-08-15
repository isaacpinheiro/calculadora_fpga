library ieee;

use ieee.std_logic_1164.all;

entity bcd7seg is
	port(
		bcd : in std_logic_vector(3 downto 0);
		display : out std_logic_vector(6 downto 0)
	);
end bcd7seg;

architecture logic of bcd7seg is
begin

	display <= "1111110" when bcd = "0000" else
		"1001111" when bcd = "0001" else
		"0010010" when bcd = "0010" else
		"0000110" when bcd = "0011" else
		"1001100" when bcd = "0100" else
		"0100100" when bcd = "0101" else
		"0100000" when bcd = "0110" else
		"0001111" when bcd = "0111" else
		"0000000" when bcd = "1000" else
		"0000100" when bcd = "1001";

end logic;