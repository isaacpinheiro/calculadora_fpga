library ieee;

use ieee.std_logic_1164.all;

entity multiplicador_bp8 is
	port(
		a, b : in std_logic_vector(7 downto 0);
		m : out std_logic_vector(7 downto 0);
		cout : out std_logic
	);
end multiplicador_bp8;

architecture logic of multiplicador_bp8 is
	
	component somador_bp8 is
		port(
			a, b : in std_logic_vector(7 downto 0);
			cin : in std_logic;
			s : out std_logic_vector(7 downto 0);
			cout : out std_logic
		);
	end component;
	
	signal res : std_logic_vector(15 downto 0);
	signal aux_b0 : std_logic_vector(7 downto 0);
	signal aux_b1 : std_logic_vector(7 downto 0);
	signal aux_b2 : std_logic_vector(7 downto 0);
	signal aux_b3 : std_logic_vector(7 downto 0);
	signal aux_b4 : std_logic_vector(7 downto 0);
	signal aux_b5 : std_logic_vector(7 downto 0);
	signal aux_b6 : std_logic_vector(7 downto 0);
	signal aux_b7 : std_logic_vector(7 downto 0);
	signal aux_s1 : std_logic_vector(6 downto 0);
	signal aux_s2 : std_logic_vector(6 downto 0);
	signal aux_s3 : std_logic_vector(6 downto 0);
	signal aux_s4 : std_logic_vector(6 downto 0);
	signal aux_s5 : std_logic_vector(6 downto 0);
	signal aux_s6 : std_logic_vector(6 downto 0);
	signal aux_s7 : std_logic_vector(6 downto 0);
	signal aux_cin : std_logic_vector(6 downto 0);
	signal aux_cout : std_logic_vector(6 downto 0);
	
begin
	
	m <= res(7 downto 0);
	cout <= res(15) or res(14) or res(13) or res(12) or res(11) or res(10) or res(9) or res(8);
	
	aux_b0 <= (a(7) and b(0)) & (a(6) and b(0)) & (a(5) and b(0)) & (a(4) and b(0)) &
		(a(3) and b(0)) & (a(2) and b(0)) & (a(1) and b(0)) & (a(0) and b(0));
	
	aux_b1 <= (a(7) and b(1)) & (a(6) and b(1)) & (a(5) and b(1)) & (a(4) and b(1)) &
		(a(3) and b(1)) & (a(2) and b(1)) & (a(1) and b(1)) & (a(0) and b(1));
	
	aux_b2 <= (a(7) and b(2)) & (a(6) and b(2)) & (a(5) and b(2)) & (a(4) and b(2)) &
		(a(3) and b(2)) & (a(2) and b(2)) & (a(1) and b(2)) & (a(0) and b(2));
	
	aux_b3 <= (a(7) and b(3)) & (a(6) and b(3)) & (a(5) and b(3)) & (a(4) and b(3)) &
		(a(3) and b(3)) & (a(2) and b(3)) & (a(1) and b(3)) & (a(0) and b(3));
	
	aux_b4 <= (a(7) and b(4)) & (a(6) and b(4)) & (a(5) and b(4)) & (a(4) and b(4)) &
		(a(3) and b(4)) & (a(2) and b(4)) & (a(1) and b(4)) & (a(0) and b(4));
	
	aux_b5 <= (a(7) and b(5)) & (a(6) and b(5)) & (a(5) and b(5)) & (a(4) and b(5)) &
		(a(3) and b(5)) & (a(2) and b(5)) & (a(1) and b(5)) & (a(0) and b(5));
	
	aux_b6 <= (a(7) and b(6)) & (a(6) and b(6)) & (a(5) and b(6)) & (a(4) and b(6)) &
		(a(3) and b(6)) & (a(2) and b(6)) & (a(1) and b(6)) & (a(0) and b(6));
	
	aux_b7 <= (a(7) and b(7)) & (a(6) and b(7)) & (a(5) and b(7)) & (a(4) and b(7)) &
		(a(3) and b(7)) & (a(2) and b(7)) & (a(1) and b(7)) & (a(0) and b(7));
	
	res(0) <= aux_b0(0);
	
	cmp1 : somador_bp8 port map(
		a(7) => aux_b1(7), a(6) => aux_b1(6), a(5) => aux_b1(5), a(4) => aux_b1(4),
		a(3) => aux_b1(3), a(2) => aux_b1(2), a(1) => aux_b1(1), a(0) => aux_b1(0),
		b(7) => '0', b(6) => aux_b0(7), b(5) => aux_b0(6), b(4) => aux_b0(5),
		b(3) => aux_b0(4), b(2) => aux_b0(3), b(1) => aux_b0(2), b(0) => aux_b0(1),
		cin => '0', s(7 downto 1) => aux_s1, s(0) => res(1), cout => aux_cout(0)
	);
	
	cmp2 : somador_bp8 port map(
		a(7) => aux_b2(7), a(6) => aux_b2(6), a(5) => aux_b2(5), a(4) => aux_b2(4),
		a(3) => aux_b2(3), a(2) => aux_b2(2), a(1) => aux_b2(1), a(0) => aux_b2(0),
		b(7) => aux_cout(0), b(6) => aux_s1(6), b(5) => aux_s1(5), b(4) => aux_s1(4),
		b(3) => aux_s1(3), b(2) => aux_s1(2), b(1) => aux_s1(1), b(0) => aux_s1(0),
		cin => '0', s(7 downto 1) => aux_s2, s(0) => res(2), cout => aux_cout(1)
	);
	
	cmp3 : somador_bp8 port map(
		a(7) => aux_b3(7), a(6) => aux_b3(6), a(5) => aux_b3(5), a(4) => aux_b3(4),
		a(3) => aux_b3(3), a(2) => aux_b3(2), a(1) => aux_b3(1), a(0) => aux_b3(0),
		b(7) => aux_cout(1), b(6) => aux_s2(6), b(5) => aux_s2(5), b(4) => aux_s2(4),
		b(3) => aux_s2(3), b(2) => aux_s2(2), b(1) => aux_s2(1), b(0) => aux_s2(0),
		cin => '0', s(7 downto 1) => aux_s3, s(0) => res(3), cout => aux_cout(2)
	);
	
	cmp4 : somador_bp8 port map(
		a(7) => aux_b4(7), a(6) => aux_b4(6), a(5) => aux_b4(5), a(4) => aux_b4(4),
		a(3) => aux_b4(3), a(2) => aux_b4(2), a(1) => aux_b4(1), a(0) => aux_b4(0),
		b(7) => aux_cout(2), b(6) => aux_s3(6), b(5) => aux_s3(5), b(4) => aux_s3(4),
		b(3) => aux_s3(3), b(2) => aux_s3(2), b(1) => aux_s3(1), b(0) => aux_s3(0),
		cin => '0', s(7 downto 1) => aux_s4, s(0) => res(4), cout => aux_cout(3)
	);
	
	cmp5 : somador_bp8 port map(
		a(7) => aux_b5(7), a(6) => aux_b5(6), a(5) => aux_b5(5), a(4) => aux_b5(4),
		a(3) => aux_b5(3), a(2) => aux_b5(2), a(1) => aux_b5(1), a(0) => aux_b5(0),
		b(7) => aux_cout(3), b(6) => aux_s4(6), b(5) => aux_s4(5), b(4) => aux_s4(4),
		b(3) => aux_s4(3), b(2) => aux_s4(2), b(1) => aux_s4(1), b(0) => aux_s4(0),
		cin => '0', s(7 downto 1) => aux_s5, s(0) => res(5), cout => aux_cout(4)
	);
	
	cmp6 : somador_bp8 port map(
		a(7) => aux_b6(7), a(6) => aux_b6(6), a(5) => aux_b6(5), a(4) => aux_b6(4),
		a(3) => aux_b6(3), a(2) => aux_b6(2), a(1) => aux_b6(1), a(0) => aux_b6(0),
		b(7) => aux_cout(4), b(6) => aux_s5(6), b(5) => aux_s5(5), b(4) => aux_s5(4),
		b(3) => aux_s5(3), b(2) => aux_s5(2), b(1) => aux_s5(1), b(0) => aux_s5(0),
		cin => '0', s(7 downto 1) => aux_s6, s(0) => res(6), cout => aux_cout(5)
	);
	
	cmp7 : somador_bp8 port map(
		a(7) => aux_b7(7), a(6) => aux_b7(6), a(5) => aux_b7(5), a(4) => aux_b7(4),
		a(3) => aux_b7(3), a(2) => aux_b7(2), a(1) => aux_b7(1), a(0) => aux_b7(0),
		b(7) => aux_cout(5), b(6) => aux_s6(6), b(5) => aux_s6(5), b(4) => aux_s6(4),
		b(3) => aux_s6(3), b(2) => aux_s6(2), b(1) => aux_s6(1), b(0) => aux_s6(0),
		cin => '0', s(7 downto 1) => res(14 downto 8), s(0) => res(7), cout => aux_cout(6)
	);
	
	res(15) <= aux_cout(6);
	
end logic;