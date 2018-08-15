library ieee;

use ieee.std_logic_1164.all;

entity somador_completo is
	port(
		a, b, cin : in std_logic;
		s, cout : out std_logic
	);
end somador_completo;

architecture logic of somador_completo is
	
	component meio_somador is
		port(
			a, b : in std_logic;
			s, cout : out std_logic
		);
	end component;
	
	signal aux1, aux2, aux3 : std_logic;
	
begin
	cmp1 : meio_somador port map(a => a, b => b, s => aux1, cout => aux2);
	cmp2 : meio_somador port map(a => cin, b => aux1, s => s, cout => aux3);
	cout <= aux2 or aux3;
end logic;