library ieee;

use ieee.std_logic_1164.all;

entity somador_bp8 is
	port(
		a, b : in std_logic_vector(7 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(7 downto 0);
		cout : out std_logic
	);
end somador_bp8;

architecture logic of somador_bp8 is
	
	component somador_completo is
		port(
			a, b, cin : in std_logic;
			s, cout : out std_logic
		);
	end component;
	
	signal c : std_logic_vector(6 downto 0);
	
begin
	
	cmp1 : somador_completo port map(a => a(0), b => b(0), cin => cin, s => s(0), cout => c(0));
	cmp2 : somador_completo port map(a => a(1), b => b(1), cin => c(0), s => s(1), cout => c(1));
	cmp3 : somador_completo port map(a => a(2), b => b(2), cin => c(1), s => s(2), cout => c(2));
	cmp4 : somador_completo port map(a => a(3), b => b(3), cin => c(2), s => s(3), cout => c(3));
	cmp5 : somador_completo port map(a => a(4), b => b(4), cin => c(3), s => s(4), cout => c(4));
	cmp6 : somador_completo port map(a => a(5), b => b(5), cin => c(4), s => s(5), cout => c(5));
	cmp7 : somador_completo port map(a => a(6), b => b(6), cin => c(5), s => s(6), cout => c(6));
	cmp8 : somador_completo port map(a => a(7), b => b(7), cin => c(6), s => s(7), cout => cout);
	
end logic;