-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/19/2018 22:39:28"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplicador_bp8 IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	m : OUT std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic
	);
END multiplicador_bp8;

-- Design Ports Information
-- m[0]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[1]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[2]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[4]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[5]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[6]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[7]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplicador_bp8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \cmp1|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp1|cmp5|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp4|cmp1|s~combout\ : std_logic;
SIGNAL \cmp3|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cmp4|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp5|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp7|cmp1|s~2_combout\ : std_logic;
SIGNAL \cmp5|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp8|cmp1|s~0_combout\ : std_logic;
SIGNAL \cmp2|cmp8|cmp1|s~1_combout\ : std_logic;
SIGNAL \cmp5|cmp5|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp8|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp8|cout~1_combout\ : std_logic;
SIGNAL \cmp3|cmp7|cout~0_combout\ : std_logic;
SIGNAL \cmp3|cmp8|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp8|cmp1|s~combout\ : std_logic;
SIGNAL \cmp4|cmp7|cmp1|s~combout\ : std_logic;
SIGNAL \cmp5|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp7|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp5|cmp7|cout~0_combout\ : std_logic;
SIGNAL \cmp7|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp7|cmp7|cout~0_combout\ : std_logic;
SIGNAL \aux_b0~0_combout\ : std_logic;
SIGNAL \cmp1|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp1|cmp2|cmp2|s~0_combout\ : std_logic;
SIGNAL \cmp1|cmp2|cmp2|s~1_combout\ : std_logic;
SIGNAL \cmp2|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp1|cmp2|cout~1_combout\ : std_logic;
SIGNAL \cmp1|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cmp2|cmp2|cmp2|s~combout\ : std_logic;
SIGNAL \cmp3|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp1|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp1|cmp4|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cmp3|cmp2|cmp2|s~combout\ : std_logic;
SIGNAL \cmp4|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp4|cmp2|cmp2|s~combout\ : std_logic;
SIGNAL \cmp5|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp1|cmp6|cmp1|s~combout\ : std_logic;
SIGNAL \cmp1|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp1|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp5|cmp1|s~combout\ : std_logic;
SIGNAL \cmp3|cmp4|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp3|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp3|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cmp5|cmp2|cmp2|s~combout\ : std_logic;
SIGNAL \cmp6|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp3|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp4|cmp1|s~combout\ : std_logic;
SIGNAL \cmp4|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp5|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cmp6|cmp2|cmp2|s~combout\ : std_logic;
SIGNAL \cmp7|cmp1|cmp1|s~combout\ : std_logic;
SIGNAL \cmp1|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp1|cmp7|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp6|cmp1|s~combout\ : std_logic;
SIGNAL \cmp2|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp3|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp3|cmp6|cmp1|s~combout\ : std_logic;
SIGNAL \cmp3|cmp5|cmp1|s~combout\ : std_logic;
SIGNAL \cmp4|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp5|cmp1|s~combout\ : std_logic;
SIGNAL \cmp5|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp7|cmp1|s~0_combout\ : std_logic;
SIGNAL \cmp2|cmp7|cmp1|s~1_combout\ : std_logic;
SIGNAL \cmp2|cmp7|cout~0_combout\ : std_logic;
SIGNAL \cmp2|cmp7|cout~1_combout\ : std_logic;
SIGNAL \cmp3|cmp7|cmp1|s~combout\ : std_logic;
SIGNAL \cmp3|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp6|cmp1|s~combout\ : std_logic;
SIGNAL \cmp5|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp4|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp5|cmp6|cmp1|s~combout\ : std_logic;
SIGNAL \cmp6|cmp5|cmp1|s~combout\ : std_logic;
SIGNAL \cmp5|cmp4|cmp1|s~combout\ : std_logic;
SIGNAL \cmp6|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp3|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp7|cmp4|cout~0_combout\ : std_logic;
SIGNAL \cmp3|cmp8|cmp1|s~combout\ : std_logic;
SIGNAL \cmp4|cmp7|cout~0_combout\ : std_logic;
SIGNAL \cmp5|cmp7|cmp1|s~combout\ : std_logic;
SIGNAL \cmp6|cmp6|cmp1|s~combout\ : std_logic;
SIGNAL \cmp7|cmp5|cmp2|s~combout\ : std_logic;
SIGNAL \cmp6|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cmp7|cmp2|cmp2|s~combout\ : std_logic;
SIGNAL \cmp4|cmp8|cout~0_combout\ : std_logic;
SIGNAL \cmp5|cmp8|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp8|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp8|cmp1|s~combout\ : std_logic;
SIGNAL \cmp5|cmp8|cmp1|s~combout\ : std_logic;
SIGNAL \cmp6|cmp5|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp7|cout~0_combout\ : std_logic;
SIGNAL \cmp6|cmp7|cmp1|s~combout\ : std_logic;
SIGNAL \cmp7|cmp6|cout~0_combout\ : std_logic;
SIGNAL \cmp7|cmp7|cmp2|s~combout\ : std_logic;
SIGNAL \cmp7|cmp6|cmp2|s~combout\ : std_logic;
SIGNAL \cmp7|cmp4|cmp2|s~combout\ : std_logic;
SIGNAL \cout~1_combout\ : std_logic;
SIGNAL \cout~2_combout\ : std_logic;
SIGNAL \cmp6|cmp4|cmp1|s~combout\ : std_logic;
SIGNAL \cmp7|cmp2|cout~0_combout\ : std_logic;
SIGNAL \cmp7|cmp3|cmp2|s~combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL aux_b7 : std_logic_vector(7 DOWNTO 0);
SIGNAL aux_b6 : std_logic_vector(7 DOWNTO 0);
SIGNAL aux_b5 : std_logic_vector(7 DOWNTO 0);
SIGNAL aux_b4 : std_logic_vector(7 DOWNTO 0);
SIGNAL aux_b3 : std_logic_vector(7 DOWNTO 0);
SIGNAL aux_b2 : std_logic_vector(7 DOWNTO 0);
SIGNAL aux_b0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
m <= ww_m;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X14_Y7_N12
\aux_b3[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(0) = (\a~combout\(0) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(3),
	combout => aux_b3(0));

-- Location: LCCOMB_X22_Y4_N6
\cmp1|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp2|cout~0_combout\ = (\a~combout\(1) & \b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(0),
	combout => \cmp1|cmp2|cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N18
\aux_b0[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b0(3) = (\b~combout\(0) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datad => \a~combout\(3),
	combout => aux_b0(3));

-- Location: LCCOMB_X22_Y4_N20
\aux_b2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b2(2) = (\b~combout\(2) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datad => \a~combout\(2),
	combout => aux_b2(2));

-- Location: LCCOMB_X15_Y3_N24
\aux_b5[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(0) = (\b~combout\(5) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(5),
	datad => \a~combout\(0),
	combout => aux_b5(0));

-- Location: LCCOMB_X14_Y9_N0
\cmp1|cmp5|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp5|cmp1|s~combout\ = (\b~combout\(0) & (\a~combout\(5) $ (((\a~combout\(4) & \b~combout\(1)))))) # (!\b~combout\(0) & (\a~combout\(4) & ((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(4),
	datac => \a~combout\(5),
	datad => \b~combout\(1),
	combout => \cmp1|cmp5|cmp1|s~combout\);

-- Location: LCCOMB_X14_Y10_N20
\cmp2|cmp4|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp4|cmp1|s~combout\ = \cmp1|cmp4|cout~0_combout\ $ (\cmp1|cmp5|cmp1|s~combout\ $ (((\a~combout\(3) & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \cmp1|cmp4|cout~0_combout\,
	datac => \b~combout\(2),
	datad => \cmp1|cmp5|cmp1|s~combout\,
	combout => \cmp2|cmp4|cmp1|s~combout\);

-- Location: LCCOMB_X14_Y10_N6
\cmp3|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp3|cmp2|s~combout\ = \cmp2|cmp4|cmp1|s~combout\ $ (\cmp2|cmp3|cout~0_combout\ $ (aux_b3(2) $ (\cmp3|cmp2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp4|cmp1|s~combout\,
	datab => \cmp2|cmp3|cout~0_combout\,
	datac => aux_b3(2),
	datad => \cmp3|cmp2|cout~0_combout\,
	combout => \cmp3|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X14_Y7_N2
\cmp4|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp2|cout~0_combout\ = (aux_b4(1) & ((\cmp3|cmp3|cmp2|s~combout\) # ((aux_b4(0) & \cmp3|cmp2|cmp2|s~combout\)))) # (!aux_b4(1) & (aux_b4(0) & (\cmp3|cmp2|cmp2|s~combout\ & \cmp3|cmp3|cmp2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b4(0),
	datab => aux_b4(1),
	datac => \cmp3|cmp2|cmp2|s~combout\,
	datad => \cmp3|cmp3|cmp2|s~combout\,
	combout => \cmp4|cmp2|cout~0_combout\);

-- Location: LCCOMB_X15_Y3_N16
\aux_b7[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(0) = (\a~combout\(0) & \b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datad => \b~combout\(7),
	combout => aux_b7(0));

-- Location: LCCOMB_X15_Y3_N26
\aux_b6[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(1) = (\b~combout\(6) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datac => \a~combout\(1),
	combout => aux_b6(1));

-- Location: LCCOMB_X14_Y10_N24
\aux_b2[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b2(4) = (\b~combout\(2) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(4),
	combout => aux_b2(4));

-- Location: LCCOMB_X15_Y3_N20
\cmp5|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp2|cout~0_combout\ = (\cmp4|cmp3|cmp2|s~combout\ & ((aux_b5(1)) # ((aux_b5(0) & \cmp4|cmp2|cmp2|s~combout\)))) # (!\cmp4|cmp3|cmp2|s~combout\ & (aux_b5(0) & (\cmp4|cmp2|cmp2|s~combout\ & aux_b5(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b5(0),
	datab => \cmp4|cmp2|cmp2|s~combout\,
	datac => \cmp4|cmp3|cmp2|s~combout\,
	datad => aux_b5(1),
	combout => \cmp5|cmp2|cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N14
\cmp2|cmp7|cmp1|s~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp7|cmp1|s~2_combout\ = \cmp2|cmp7|cmp1|s~0_combout\ $ (((\a~combout\(6) & ((\b~combout\(2)))) # (!\a~combout\(6) & (\cmp2|cmp7|cmp1|s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp7|cmp1|s~1_combout\,
	datab => \cmp2|cmp7|cmp1|s~0_combout\,
	datac => \b~combout\(2),
	datad => \a~combout\(6),
	combout => \cmp2|cmp7|cmp1|s~2_combout\);

-- Location: LCCOMB_X14_Y9_N16
\aux_b2[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b2(5) = (\b~combout\(2) & \a~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(5),
	combout => aux_b2(5));

-- Location: LCCOMB_X15_Y3_N12
\cmp5|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp3|cout~0_combout\ = (\cmp5|cmp2|cout~0_combout\ & ((aux_b5(2)) # (\cmp4|cmp4|cmp1|s~combout\ $ (\cmp4|cmp3|cout~0_combout\)))) # (!\cmp5|cmp2|cout~0_combout\ & (aux_b5(2) & (\cmp4|cmp4|cmp1|s~combout\ $ (\cmp4|cmp3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp2|cout~0_combout\,
	datab => \cmp4|cmp4|cmp1|s~combout\,
	datac => \cmp4|cmp3|cout~0_combout\,
	datad => aux_b5(2),
	combout => \cmp5|cmp3|cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N4
\cmp2|cmp8|cmp1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp8|cmp1|s~0_combout\ = (\cmp1|cmp6|cout~0_combout\ & ((\b~combout\(0)) # (\a~combout\(6)))) # (!\cmp1|cmp6|cout~0_combout\ & (\b~combout\(0) & \a~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp1|cmp6|cout~0_combout\,
	datac => \b~combout\(0),
	datad => \a~combout\(6),
	combout => \cmp2|cmp8|cmp1|s~0_combout\);

-- Location: LCCOMB_X14_Y9_N6
\cmp2|cmp8|cmp1|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp8|cmp1|s~1_combout\ = (\a~combout\(7) & (\b~combout\(2) $ (((\cmp2|cmp8|cmp1|s~0_combout\ & \b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \cmp2|cmp8|cmp1|s~0_combout\,
	datac => \b~combout\(2),
	datad => \b~combout\(1),
	combout => \cmp2|cmp8|cmp1|s~1_combout\);

-- Location: LCCOMB_X15_Y9_N6
\aux_b4[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(4) = (\b~combout\(4) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datad => \a~combout\(4),
	combout => aux_b4(4));

-- Location: LCCOMB_X15_Y9_N10
\cmp5|cmp5|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp5|cmp1|s~combout\ = \cmp4|cmp6|cmp1|s~combout\ $ (\cmp4|cmp5|cout~0_combout\ $ (((\b~combout\(5) & \a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp6|cmp1|s~combout\,
	datab => \cmp4|cmp5|cout~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(4),
	combout => \cmp5|cmp5|cmp1|s~combout\);

-- Location: LCCOMB_X18_Y9_N16
\aux_b7[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(2) = (\b~combout\(7) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datac => \a~combout\(2),
	combout => aux_b7(2));

-- Location: LCCOMB_X14_Y9_N28
\cmp2|cmp8|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp8|cout~0_combout\ = (\b~combout\(1) & ((\a~combout\(6) & ((\cmp1|cmp6|cout~0_combout\) # (\b~combout\(0)))) # (!\a~combout\(6) & (\cmp1|cmp6|cout~0_combout\ & \b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \cmp1|cmp6|cout~0_combout\,
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp2|cmp8|cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N22
\cmp2|cmp8|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp8|cout~1_combout\ = (\a~combout\(7) & ((\cmp2|cmp8|cout~0_combout\ & ((\b~combout\(2)) # (\cmp2|cmp7|cout~1_combout\))) # (!\cmp2|cmp8|cout~0_combout\ & (\b~combout\(2) & \cmp2|cmp7|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \cmp2|cmp8|cout~0_combout\,
	datac => \b~combout\(2),
	datad => \cmp2|cmp7|cout~1_combout\,
	combout => \cmp2|cmp8|cout~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\aux_b3[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(6) = (\a~combout\(6) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(6),
	datad => \b~combout\(3),
	combout => aux_b3(6));

-- Location: LCCOMB_X20_Y9_N12
\cmp3|cmp7|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp7|cout~0_combout\ = (\cmp3|cmp6|cout~0_combout\ & ((aux_b3(6)) # (\cmp2|cmp7|cout~1_combout\ $ (\cmp2|cmp8|cmp1|s~1_combout\)))) # (!\cmp3|cmp6|cout~0_combout\ & (aux_b3(6) & (\cmp2|cmp7|cout~1_combout\ $ (\cmp2|cmp8|cmp1|s~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp7|cout~1_combout\,
	datab => \cmp3|cmp6|cout~0_combout\,
	datac => \cmp2|cmp8|cmp1|s~1_combout\,
	datad => aux_b3(6),
	combout => \cmp3|cmp7|cout~0_combout\);

-- Location: LCCOMB_X20_Y9_N6
\cmp3|cmp8|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp8|cout~0_combout\ = (\cmp3|cmp7|cout~0_combout\ & ((\cmp2|cmp8|cout~1_combout\) # ((\a~combout\(7) & \b~combout\(3))))) # (!\cmp3|cmp7|cout~0_combout\ & (\a~combout\(7) & (\cmp2|cmp8|cout~1_combout\ & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp7|cout~0_combout\,
	datab => \a~combout\(7),
	datac => \cmp2|cmp8|cout~1_combout\,
	datad => \b~combout\(3),
	combout => \cmp3|cmp8|cout~0_combout\);

-- Location: LCCOMB_X20_Y9_N16
\cmp4|cmp8|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp8|cmp1|s~combout\ = \cmp3|cmp8|cout~0_combout\ $ (((\b~combout\(4) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp8|cout~0_combout\,
	datab => \b~combout\(4),
	datac => \a~combout\(7),
	combout => \cmp4|cmp8|cmp1|s~combout\);

-- Location: LCCOMB_X20_Y9_N4
\cmp4|cmp7|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp7|cmp1|s~combout\ = \cmp3|cmp7|cout~0_combout\ $ (\cmp3|cmp8|cmp1|s~combout\ $ (((\a~combout\(6) & \b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp7|cout~0_combout\,
	datab => \a~combout\(6),
	datac => \b~combout\(4),
	datad => \cmp3|cmp8|cmp1|s~combout\,
	combout => \cmp4|cmp7|cmp1|s~combout\);

-- Location: LCCOMB_X19_Y9_N18
\aux_b5[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(5) = (\b~combout\(5) & \a~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(5),
	datac => \a~combout\(5),
	combout => aux_b5(5));

-- Location: LCCOMB_X15_Y9_N12
\aux_b5[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(4) = (\b~combout\(5) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(5),
	datad => \a~combout\(4),
	combout => aux_b5(4));

-- Location: LCCOMB_X19_Y9_N12
\cmp5|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp6|cout~0_combout\ = (aux_b5(5) & ((\cmp5|cmp5|cout~0_combout\) # (\cmp4|cmp7|cmp1|s~combout\ $ (\cmp4|cmp6|cout~0_combout\)))) # (!aux_b5(5) & (\cmp5|cmp5|cout~0_combout\ & (\cmp4|cmp7|cmp1|s~combout\ $ (\cmp4|cmp6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp7|cmp1|s~combout\,
	datab => aux_b5(5),
	datac => \cmp5|cmp5|cout~0_combout\,
	datad => \cmp4|cmp6|cout~0_combout\,
	combout => \cmp5|cmp6|cout~0_combout\);

-- Location: LCCOMB_X18_Y9_N12
\cmp7|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp3|cout~0_combout\ = (aux_b7(2) & ((\cmp7|cmp2|cout~0_combout\) # (\cmp6|cmp3|cout~0_combout\ $ (\cmp6|cmp4|cmp1|s~combout\)))) # (!aux_b7(2) & (\cmp7|cmp2|cout~0_combout\ & (\cmp6|cmp3|cout~0_combout\ $ (\cmp6|cmp4|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b7(2),
	datab => \cmp6|cmp3|cout~0_combout\,
	datac => \cmp6|cmp4|cmp1|s~combout\,
	datad => \cmp7|cmp2|cout~0_combout\,
	combout => \cmp7|cmp3|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N26
\aux_b5[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(6) = (\b~combout\(5) & \a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(5),
	datad => \a~combout\(6),
	combout => aux_b5(6));

-- Location: LCCOMB_X19_Y9_N0
\cmp5|cmp7|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp7|cout~0_combout\ = (\cmp5|cmp6|cout~0_combout\ & ((aux_b5(6)) # (\cmp4|cmp7|cout~0_combout\ $ (\cmp4|cmp8|cmp1|s~combout\)))) # (!\cmp5|cmp6|cout~0_combout\ & (aux_b5(6) & (\cmp4|cmp7|cout~0_combout\ $ (\cmp4|cmp8|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp6|cout~0_combout\,
	datab => \cmp4|cmp7|cout~0_combout\,
	datac => \cmp4|cmp8|cmp1|s~combout\,
	datad => aux_b5(6),
	combout => \cmp5|cmp7|cout~0_combout\);

-- Location: LCCOMB_X19_Y9_N2
\cmp7|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp5|cout~0_combout\ = (\cmp7|cmp4|cout~0_combout\ & ((aux_b7(4)) # (\cmp6|cmp5|cout~0_combout\ $ (\cmp6|cmp6|cmp1|s~combout\)))) # (!\cmp7|cmp4|cout~0_combout\ & (aux_b7(4) & (\cmp6|cmp5|cout~0_combout\ $ (\cmp6|cmp6|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp6|cmp5|cout~0_combout\,
	datab => \cmp7|cmp4|cout~0_combout\,
	datac => aux_b7(4),
	datad => \cmp6|cmp6|cmp1|s~combout\,
	combout => \cmp7|cmp5|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N18
\aux_b7[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(6) = (\a~combout\(6) & \b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datad => \b~combout\(7),
	combout => aux_b7(6));

-- Location: LCCOMB_X20_Y10_N6
\cmp7|cmp7|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp7|cout~0_combout\ = (aux_b7(6) & ((\cmp7|cmp6|cout~0_combout\) # (\cmp6|cmp8|cmp1|s~combout\ $ (\cmp6|cmp7|cout~0_combout\)))) # (!aux_b7(6) & (\cmp7|cmp6|cout~0_combout\ & (\cmp6|cmp8|cmp1|s~combout\ $ (\cmp6|cmp7|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b7(6),
	datab => \cmp6|cmp8|cmp1|s~combout\,
	datac => \cmp6|cmp7|cout~0_combout\,
	datad => \cmp7|cmp6|cout~0_combout\,
	combout => \cmp7|cmp7|cout~0_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X14_Y7_N8
\aux_b0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux_b0~0_combout\ = (\b~combout\(0) & \a~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \a~combout\(0),
	combout => \aux_b0~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X14_Y7_N10
\cmp1|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp1|cmp1|s~combout\ = (\b~combout\(0) & (\a~combout\(1) $ (((\a~combout\(0) & \b~combout\(1)))))) # (!\b~combout\(0) & (((\a~combout\(0) & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp1|cmp1|cmp1|s~combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X22_Y4_N26
\cmp1|cmp2|cmp2|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp2|cmp2|s~0_combout\ = (\a~combout\(1) & \b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \cmp1|cmp2|cmp2|s~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X22_Y4_N12
\cmp1|cmp2|cmp2|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp2|cmp2|s~1_combout\ = (\b~combout\(0) & (\a~combout\(2) $ (((\cmp1|cmp2|cmp2|s~0_combout\ & !\a~combout\(0)))))) # (!\b~combout\(0) & (\cmp1|cmp2|cmp2|s~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \cmp1|cmp2|cmp2|s~0_combout\,
	datac => \a~combout\(0),
	datad => \a~combout\(2),
	combout => \cmp1|cmp2|cmp2|s~1_combout\);

-- Location: LCCOMB_X22_Y4_N22
\cmp2|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp1|cmp1|s~combout\ = \cmp1|cmp2|cmp2|s~1_combout\ $ (((\b~combout\(2) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datac => \a~combout\(0),
	datad => \cmp1|cmp2|cmp2|s~1_combout\,
	combout => \cmp2|cmp1|cmp1|s~combout\);

-- Location: LCCOMB_X22_Y4_N8
\cmp1|cmp2|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp2|cout~1_combout\ = (\cmp1|cmp2|cout~0_combout\ & (\b~combout\(1) & ((\a~combout\(2)) # (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|cmp2|cout~0_combout\,
	datab => \a~combout\(2),
	datac => \a~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp1|cmp2|cout~1_combout\);

-- Location: LCCOMB_X22_Y4_N28
\cmp1|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp3|cmp2|s~combout\ = aux_b0(3) $ (\cmp1|cmp2|cout~1_combout\ $ (((\a~combout\(2) & \b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b0(3),
	datab => \a~combout\(2),
	datac => \cmp1|cmp2|cout~1_combout\,
	datad => \b~combout\(1),
	combout => \cmp1|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X22_Y4_N14
\aux_b2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b2(1) = (\a~combout\(1) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(2),
	combout => aux_b2(1));

-- Location: LCCOMB_X22_Y4_N0
\aux_b2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b2(0) = (\a~combout\(0) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(2),
	combout => aux_b2(0));

-- Location: LCCOMB_X22_Y4_N16
\cmp2|cmp2|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp2|cmp2|s~combout\ = \cmp1|cmp3|cmp2|s~combout\ $ (aux_b2(1) $ (((\cmp1|cmp2|cmp2|s~1_combout\ & aux_b2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|cmp2|cmp2|s~1_combout\,
	datab => \cmp1|cmp3|cmp2|s~combout\,
	datac => aux_b2(1),
	datad => aux_b2(0),
	combout => \cmp2|cmp2|cmp2|s~combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X14_Y7_N22
\cmp3|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp1|cmp1|s~combout\ = \cmp2|cmp2|cmp2|s~combout\ $ (((\a~combout\(0) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp2|cmp2|s~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(3),
	combout => \cmp3|cmp1|cmp1|s~combout\);

-- Location: LCCOMB_X14_Y7_N0
\aux_b3[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(1) = (\a~combout\(1) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(3),
	combout => aux_b3(1));

-- Location: LCCOMB_X22_Y4_N30
\cmp2|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp2|cout~0_combout\ = (\cmp1|cmp3|cmp2|s~combout\ & ((aux_b2(1)) # ((\cmp1|cmp2|cmp2|s~1_combout\ & aux_b2(0))))) # (!\cmp1|cmp3|cmp2|s~combout\ & (\cmp1|cmp2|cmp2|s~1_combout\ & (aux_b2(1) & aux_b2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|cmp2|cmp2|s~1_combout\,
	datab => \cmp1|cmp3|cmp2|s~combout\,
	datac => aux_b2(1),
	datad => aux_b2(0),
	combout => \cmp2|cmp2|cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\cmp1|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp3|cout~0_combout\ = (aux_b0(3) & ((\cmp1|cmp2|cout~1_combout\) # ((\a~combout\(2) & \b~combout\(1))))) # (!aux_b0(3) & (\a~combout\(2) & (\cmp1|cmp2|cout~1_combout\ & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b0(3),
	datab => \a~combout\(2),
	datac => \cmp1|cmp2|cout~1_combout\,
	datad => \b~combout\(1),
	combout => \cmp1|cmp3|cout~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X22_Y4_N10
\cmp1|cmp4|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp4|cmp1|s~combout\ = (\a~combout\(4) & (\b~combout\(0) $ (((\a~combout\(3) & \b~combout\(1)))))) # (!\a~combout\(4) & (\a~combout\(3) & ((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \a~combout\(3),
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp1|cmp4|cmp1|s~combout\);

-- Location: LCCOMB_X22_Y4_N2
\cmp2|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp3|cmp2|s~combout\ = aux_b2(2) $ (\cmp2|cmp2|cout~0_combout\ $ (\cmp1|cmp3|cout~0_combout\ $ (\cmp1|cmp4|cmp1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b2(2),
	datab => \cmp2|cmp2|cout~0_combout\,
	datac => \cmp1|cmp3|cout~0_combout\,
	datad => \cmp1|cmp4|cmp1|s~combout\,
	combout => \cmp2|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X14_Y7_N18
\cmp3|cmp2|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp2|cmp2|s~combout\ = aux_b3(1) $ (\cmp2|cmp3|cmp2|s~combout\ $ (((aux_b3(0) & \cmp2|cmp2|cmp2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b3(0),
	datab => aux_b3(1),
	datac => \cmp2|cmp2|cmp2|s~combout\,
	datad => \cmp2|cmp3|cmp2|s~combout\,
	combout => \cmp3|cmp2|cmp2|s~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X14_Y7_N24
\cmp4|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp1|cmp1|s~combout\ = \cmp3|cmp2|cmp2|s~combout\ $ (((\a~combout\(0) & \b~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp3|cmp2|cmp2|s~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(4),
	combout => \cmp4|cmp1|cmp1|s~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X14_Y7_N14
\aux_b4[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(0) = (\a~combout\(0) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(0),
	datad => \b~combout\(4),
	combout => aux_b4(0));

-- Location: LCCOMB_X14_Y7_N28
\aux_b4[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(1) = (\a~combout\(1) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(4),
	combout => aux_b4(1));

-- Location: LCCOMB_X14_Y7_N16
\cmp4|cmp2|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp2|cmp2|s~combout\ = \cmp3|cmp3|cmp2|s~combout\ $ (aux_b4(1) $ (((\cmp3|cmp2|cmp2|s~combout\ & aux_b4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp3|cmp2|s~combout\,
	datab => \cmp3|cmp2|cmp2|s~combout\,
	datac => aux_b4(0),
	datad => aux_b4(1),
	combout => \cmp4|cmp2|cmp2|s~combout\);

-- Location: LCCOMB_X15_Y3_N8
\cmp5|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp1|cmp1|s~combout\ = \cmp4|cmp2|cmp2|s~combout\ $ (((\a~combout\(0) & \b~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(5),
	datad => \cmp4|cmp2|cmp2|s~combout\,
	combout => \cmp5|cmp1|cmp1|s~combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X14_Y9_N10
\cmp1|cmp6|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp6|cmp1|s~combout\ = (\a~combout\(6) & (\b~combout\(0) $ (((\a~combout\(5) & \b~combout\(1)))))) # (!\a~combout\(6) & (\a~combout\(5) & ((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \a~combout\(5),
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp1|cmp6|cmp1|s~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X14_Y10_N8
\aux_b0[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b0(4) = (\b~combout\(0) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \a~combout\(4),
	combout => aux_b0(4));

-- Location: LCCOMB_X14_Y10_N26
\cmp1|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp4|cout~0_combout\ = (\cmp1|cmp3|cout~0_combout\ & ((aux_b0(4)) # ((\a~combout\(3) & \b~combout\(1))))) # (!\cmp1|cmp3|cout~0_combout\ & (\a~combout\(3) & (aux_b0(4) & \b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \cmp1|cmp3|cout~0_combout\,
	datac => aux_b0(4),
	datad => \b~combout\(1),
	combout => \cmp1|cmp4|cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\aux_b0[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b0(5) = (\b~combout\(0) & \a~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \a~combout\(5),
	combout => aux_b0(5));

-- Location: LCCOMB_X14_Y10_N10
\cmp1|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp5|cout~0_combout\ = (\cmp1|cmp4|cout~0_combout\ & ((aux_b0(5)) # ((\b~combout\(1) & \a~combout\(4))))) # (!\cmp1|cmp4|cout~0_combout\ & (\b~combout\(1) & (\a~combout\(4) & aux_b0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \cmp1|cmp4|cout~0_combout\,
	datac => \a~combout\(4),
	datad => aux_b0(5),
	combout => \cmp1|cmp5|cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\cmp2|cmp5|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp5|cmp1|s~combout\ = \cmp1|cmp6|cmp1|s~combout\ $ (\cmp1|cmp5|cout~0_combout\ $ (((\b~combout\(2) & \a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \cmp1|cmp6|cmp1|s~combout\,
	datac => \a~combout\(4),
	datad => \cmp1|cmp5|cout~0_combout\,
	combout => \cmp2|cmp5|cmp1|s~combout\);

-- Location: LCCOMB_X14_Y10_N2
\cmp3|cmp4|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp4|cmp1|s~combout\ = \cmp2|cmp4|cout~0_combout\ $ (\cmp2|cmp5|cmp1|s~combout\ $ (((\b~combout\(3) & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp4|cout~0_combout\,
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \cmp2|cmp5|cmp1|s~combout\,
	combout => \cmp3|cmp4|cmp1|s~combout\);

-- Location: LCCOMB_X20_Y9_N10
\aux_b4[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(2) = (\b~combout\(4) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \a~combout\(2),
	combout => aux_b4(2));

-- Location: LCCOMB_X22_Y4_N4
\cmp2|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp3|cout~0_combout\ = (aux_b2(2) & ((\cmp2|cmp2|cout~0_combout\) # (\cmp1|cmp3|cout~0_combout\ $ (\cmp1|cmp4|cmp1|s~combout\)))) # (!aux_b2(2) & (\cmp2|cmp2|cout~0_combout\ & (\cmp1|cmp3|cout~0_combout\ $ (\cmp1|cmp4|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b2(2),
	datab => \cmp2|cmp2|cout~0_combout\,
	datac => \cmp1|cmp3|cout~0_combout\,
	datad => \cmp1|cmp4|cmp1|s~combout\,
	combout => \cmp2|cmp3|cout~0_combout\);

-- Location: LCCOMB_X20_Y9_N0
\aux_b3[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(2) = (\b~combout\(3) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(2),
	combout => aux_b3(2));

-- Location: LCCOMB_X14_Y7_N6
\cmp3|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp2|cout~0_combout\ = (aux_b3(1) & ((\cmp2|cmp3|cmp2|s~combout\) # ((aux_b3(0) & \cmp2|cmp2|cmp2|s~combout\)))) # (!aux_b3(1) & (aux_b3(0) & (\cmp2|cmp2|cmp2|s~combout\ & \cmp2|cmp3|cmp2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b3(0),
	datab => aux_b3(1),
	datac => \cmp2|cmp2|cmp2|s~combout\,
	datad => \cmp2|cmp3|cmp2|s~combout\,
	combout => \cmp3|cmp2|cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N28
\cmp3|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp3|cout~0_combout\ = (aux_b3(2) & ((\cmp3|cmp2|cout~0_combout\) # (\cmp2|cmp4|cmp1|s~combout\ $ (\cmp2|cmp3|cout~0_combout\)))) # (!aux_b3(2) & (\cmp3|cmp2|cout~0_combout\ & (\cmp2|cmp4|cmp1|s~combout\ $ (\cmp2|cmp3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp4|cmp1|s~combout\,
	datab => \cmp2|cmp3|cout~0_combout\,
	datac => aux_b3(2),
	datad => \cmp3|cmp2|cout~0_combout\,
	combout => \cmp3|cmp3|cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\cmp4|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp3|cmp2|s~combout\ = \cmp4|cmp2|cout~0_combout\ $ (\cmp3|cmp4|cmp1|s~combout\ $ (aux_b4(2) $ (\cmp3|cmp3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp2|cout~0_combout\,
	datab => \cmp3|cmp4|cmp1|s~combout\,
	datac => aux_b4(2),
	datad => \cmp3|cmp3|cout~0_combout\,
	combout => \cmp4|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X15_Y3_N28
\aux_b5[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(1) = (\a~combout\(1) & \b~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \b~combout\(5),
	combout => aux_b5(1));

-- Location: LCCOMB_X15_Y3_N30
\cmp5|cmp2|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp2|cmp2|s~combout\ = \cmp4|cmp3|cmp2|s~combout\ $ (aux_b5(1) $ (((aux_b5(0) & \cmp4|cmp2|cmp2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b5(0),
	datab => \cmp4|cmp2|cmp2|s~combout\,
	datac => \cmp4|cmp3|cmp2|s~combout\,
	datad => aux_b5(1),
	combout => \cmp5|cmp2|cmp2|s~combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCCOMB_X15_Y3_N10
\cmp6|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp1|cmp1|s~combout\ = \cmp5|cmp2|cmp2|s~combout\ $ (((\a~combout\(0) & \b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \cmp5|cmp2|cmp2|s~combout\,
	datac => \b~combout\(6),
	combout => \cmp6|cmp1|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y3_N2
\aux_b6[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(0) = (\a~combout\(0) & \b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(6),
	combout => aux_b6(0));

-- Location: LCCOMB_X15_Y9_N18
\aux_b3[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(3) = (\a~combout\(3) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => aux_b3(3));

-- Location: LCCOMB_X14_Y10_N4
\cmp3|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp4|cout~0_combout\ = (\cmp3|cmp3|cout~0_combout\ & ((aux_b3(3)) # (\cmp2|cmp4|cout~0_combout\ $ (\cmp2|cmp5|cmp1|s~combout\)))) # (!\cmp3|cmp3|cout~0_combout\ & (aux_b3(3) & (\cmp2|cmp4|cout~0_combout\ $ (\cmp2|cmp5|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp4|cout~0_combout\,
	datab => \cmp3|cmp3|cout~0_combout\,
	datac => aux_b3(3),
	datad => \cmp2|cmp5|cmp1|s~combout\,
	combout => \cmp3|cmp4|cout~0_combout\);

-- Location: LCCOMB_X15_Y9_N4
\cmp4|cmp4|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp4|cmp1|s~combout\ = \cmp3|cmp5|cmp1|s~combout\ $ (\cmp3|cmp4|cout~0_combout\ $ (((\a~combout\(3) & \b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp5|cmp1|s~combout\,
	datab => \a~combout\(3),
	datac => \cmp3|cmp4|cout~0_combout\,
	datad => \b~combout\(4),
	combout => \cmp4|cmp4|cmp1|s~combout\);

-- Location: LCCOMB_X14_Y10_N30
\cmp4|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp3|cout~0_combout\ = (\cmp4|cmp2|cout~0_combout\ & ((aux_b4(2)) # (\cmp3|cmp4|cmp1|s~combout\ $ (\cmp3|cmp3|cout~0_combout\)))) # (!\cmp4|cmp2|cout~0_combout\ & (aux_b4(2) & (\cmp3|cmp4|cmp1|s~combout\ $ (\cmp3|cmp3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp2|cout~0_combout\,
	datab => \cmp3|cmp4|cmp1|s~combout\,
	datac => aux_b4(2),
	datad => \cmp3|cmp3|cout~0_combout\,
	combout => \cmp4|cmp3|cout~0_combout\);

-- Location: LCCOMB_X20_Y9_N28
\aux_b5[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(2) = (\b~combout\(5) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datad => \a~combout\(2),
	combout => aux_b5(2));

-- Location: LCCOMB_X15_Y3_N22
\cmp5|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp3|cmp2|s~combout\ = \cmp5|cmp2|cout~0_combout\ $ (\cmp4|cmp4|cmp1|s~combout\ $ (\cmp4|cmp3|cout~0_combout\ $ (aux_b5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp2|cout~0_combout\,
	datab => \cmp4|cmp4|cmp1|s~combout\,
	datac => \cmp4|cmp3|cout~0_combout\,
	datad => aux_b5(2),
	combout => \cmp5|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X15_Y3_N0
\cmp6|cmp2|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp2|cmp2|s~combout\ = aux_b6(1) $ (\cmp5|cmp3|cmp2|s~combout\ $ (((aux_b6(0) & \cmp5|cmp2|cmp2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b6(1),
	datab => aux_b6(0),
	datac => \cmp5|cmp2|cmp2|s~combout\,
	datad => \cmp5|cmp3|cmp2|s~combout\,
	combout => \cmp6|cmp2|cmp2|s~combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X15_Y3_N4
\cmp7|cmp1|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp1|cmp1|s~combout\ = \cmp6|cmp2|cmp2|s~combout\ $ (((\a~combout\(0) & \b~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \cmp6|cmp2|cmp2|s~combout\,
	datad => \b~combout\(7),
	combout => \cmp7|cmp1|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y3_N6
\aux_b7[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(3) = (\a~combout\(3) & \b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(7),
	combout => aux_b7(3));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X14_Y7_N20
\aux_b0[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b0(6) = (\b~combout\(0) & \a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datac => \a~combout\(6),
	combout => aux_b0(6));

-- Location: LCCOMB_X14_Y9_N30
\cmp1|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp6|cout~0_combout\ = (aux_b0(6) & ((\cmp1|cmp5|cout~0_combout\) # ((\b~combout\(1) & \a~combout\(5))))) # (!aux_b0(6) & (\b~combout\(1) & (\a~combout\(5) & \cmp1|cmp5|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => aux_b0(6),
	datac => \a~combout\(5),
	datad => \cmp1|cmp5|cout~0_combout\,
	combout => \cmp1|cmp6|cout~0_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X14_Y9_N12
\cmp1|cmp7|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp1|cmp7|cmp1|s~combout\ = (\a~combout\(6) & (\b~combout\(1) $ (((\a~combout\(7) & \b~combout\(0)))))) # (!\a~combout\(6) & (\a~combout\(7) & (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \a~combout\(7),
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp1|cmp7|cmp1|s~combout\);

-- Location: LCCOMB_X14_Y9_N24
\cmp2|cmp6|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp6|cmp1|s~combout\ = \cmp1|cmp6|cout~0_combout\ $ (\cmp1|cmp7|cmp1|s~combout\ $ (((\b~combout\(2) & \a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \cmp1|cmp6|cout~0_combout\,
	datac => \a~combout\(5),
	datad => \cmp1|cmp7|cmp1|s~combout\,
	combout => \cmp2|cmp6|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y9_N8
\aux_b3[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(4) = (\a~combout\(4) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datad => \b~combout\(3),
	combout => aux_b3(4));

-- Location: LCCOMB_X14_Y10_N14
\aux_b2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b2(3) = (\a~combout\(3) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \b~combout\(2),
	combout => aux_b2(3));

-- Location: LCCOMB_X14_Y10_N16
\cmp2|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp4|cout~0_combout\ = (aux_b2(3) & ((\cmp2|cmp3|cout~0_combout\) # (\cmp1|cmp5|cmp1|s~combout\ $ (\cmp1|cmp4|cout~0_combout\)))) # (!aux_b2(3) & (\cmp2|cmp3|cout~0_combout\ & (\cmp1|cmp5|cmp1|s~combout\ $ (\cmp1|cmp4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|cmp5|cmp1|s~combout\,
	datab => \cmp1|cmp4|cout~0_combout\,
	datac => aux_b2(3),
	datad => \cmp2|cmp3|cout~0_combout\,
	combout => \cmp2|cmp4|cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\cmp2|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp5|cout~0_combout\ = (aux_b2(4) & ((\cmp2|cmp4|cout~0_combout\) # (\cmp1|cmp6|cmp1|s~combout\ $ (\cmp1|cmp5|cout~0_combout\)))) # (!aux_b2(4) & (\cmp2|cmp4|cout~0_combout\ & (\cmp1|cmp6|cmp1|s~combout\ $ (\cmp1|cmp5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b2(4),
	datab => \cmp1|cmp6|cmp1|s~combout\,
	datac => \cmp2|cmp4|cout~0_combout\,
	datad => \cmp1|cmp5|cout~0_combout\,
	combout => \cmp2|cmp5|cout~0_combout\);

-- Location: LCCOMB_X15_Y9_N26
\cmp3|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp5|cout~0_combout\ = (\cmp3|cmp4|cout~0_combout\ & ((aux_b3(4)) # (\cmp2|cmp6|cmp1|s~combout\ $ (\cmp2|cmp5|cout~0_combout\)))) # (!\cmp3|cmp4|cout~0_combout\ & (aux_b3(4) & (\cmp2|cmp6|cmp1|s~combout\ $ (\cmp2|cmp5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp4|cout~0_combout\,
	datab => \cmp2|cmp6|cmp1|s~combout\,
	datac => aux_b3(4),
	datad => \cmp2|cmp5|cout~0_combout\,
	combout => \cmp3|cmp5|cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N18
\cmp2|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp6|cout~0_combout\ = (aux_b2(5) & ((\cmp2|cmp5|cout~0_combout\) # (\cmp1|cmp6|cout~0_combout\ $ (\cmp1|cmp7|cmp1|s~combout\)))) # (!aux_b2(5) & (\cmp2|cmp5|cout~0_combout\ & (\cmp1|cmp6|cout~0_combout\ $ (\cmp1|cmp7|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b2(5),
	datab => \cmp1|cmp6|cout~0_combout\,
	datac => \cmp2|cmp5|cout~0_combout\,
	datad => \cmp1|cmp7|cmp1|s~combout\,
	combout => \cmp2|cmp6|cout~0_combout\);

-- Location: LCCOMB_X15_Y9_N14
\cmp3|cmp6|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp6|cmp1|s~combout\ = \cmp2|cmp7|cmp1|s~2_combout\ $ (\cmp2|cmp6|cout~0_combout\ $ (((\a~combout\(5) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp7|cmp1|s~2_combout\,
	datab => \cmp2|cmp6|cout~0_combout\,
	datac => \a~combout\(5),
	datad => \b~combout\(3),
	combout => \cmp3|cmp6|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y9_N30
\aux_b4[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(3) = (\a~combout\(3) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(4),
	combout => aux_b4(3));

-- Location: LCCOMB_X15_Y9_N24
\cmp3|cmp5|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp5|cmp1|s~combout\ = \cmp2|cmp5|cout~0_combout\ $ (\cmp2|cmp6|cmp1|s~combout\ $ (((\a~combout\(4) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp5|cout~0_combout\,
	datab => \a~combout\(4),
	datac => \b~combout\(3),
	datad => \cmp2|cmp6|cmp1|s~combout\,
	combout => \cmp3|cmp5|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y9_N16
\cmp4|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp4|cout~0_combout\ = (\cmp4|cmp3|cout~0_combout\ & ((aux_b4(3)) # (\cmp3|cmp5|cmp1|s~combout\ $ (\cmp3|cmp4|cout~0_combout\)))) # (!\cmp4|cmp3|cout~0_combout\ & (aux_b4(3) & (\cmp3|cmp5|cmp1|s~combout\ $ (\cmp3|cmp4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp3|cout~0_combout\,
	datab => aux_b4(3),
	datac => \cmp3|cmp5|cmp1|s~combout\,
	datad => \cmp3|cmp4|cout~0_combout\,
	combout => \cmp4|cmp4|cout~0_combout\);

-- Location: LCCOMB_X15_Y9_N0
\cmp4|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp5|cout~0_combout\ = (aux_b4(4) & ((\cmp4|cmp4|cout~0_combout\) # (\cmp3|cmp5|cout~0_combout\ $ (\cmp3|cmp6|cmp1|s~combout\)))) # (!aux_b4(4) & (\cmp4|cmp4|cout~0_combout\ & (\cmp3|cmp5|cout~0_combout\ $ (\cmp3|cmp6|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b4(4),
	datab => \cmp3|cmp5|cout~0_combout\,
	datac => \cmp3|cmp6|cmp1|s~combout\,
	datad => \cmp4|cmp4|cout~0_combout\,
	combout => \cmp4|cmp5|cout~0_combout\);

-- Location: LCCOMB_X15_Y9_N20
\cmp4|cmp5|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp5|cmp1|s~combout\ = \cmp3|cmp5|cout~0_combout\ $ (\cmp3|cmp6|cmp1|s~combout\ $ (((\b~combout\(4) & \a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \cmp3|cmp5|cout~0_combout\,
	datac => \cmp3|cmp6|cmp1|s~combout\,
	datad => \a~combout\(4),
	combout => \cmp4|cmp5|cmp1|s~combout\);

-- Location: LCCOMB_X18_Y9_N26
\aux_b5[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b5(3) = (\b~combout\(5) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(5),
	datac => \a~combout\(3),
	combout => aux_b5(3));

-- Location: LCCOMB_X18_Y9_N28
\cmp5|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp4|cout~0_combout\ = (\cmp5|cmp3|cout~0_combout\ & ((aux_b5(3)) # (\cmp4|cmp4|cout~0_combout\ $ (\cmp4|cmp5|cmp1|s~combout\)))) # (!\cmp5|cmp3|cout~0_combout\ & (aux_b5(3) & (\cmp4|cmp4|cout~0_combout\ $ (\cmp4|cmp5|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp3|cout~0_combout\,
	datab => \cmp4|cmp4|cout~0_combout\,
	datac => \cmp4|cmp5|cmp1|s~combout\,
	datad => aux_b5(3),
	combout => \cmp5|cmp4|cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N26
\cmp2|cmp7|cmp1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp7|cmp1|s~0_combout\ = (\b~combout\(0) & (\cmp1|cmp6|cout~0_combout\ & (\a~combout\(7) $ (\b~combout\(1))))) # (!\b~combout\(0) & (\b~combout\(1) & (\a~combout\(7) $ (\cmp1|cmp6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \cmp1|cmp6|cout~0_combout\,
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp2|cmp7|cmp1|s~0_combout\);

-- Location: LCCOMB_X14_Y9_N20
\cmp2|cmp7|cmp1|s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp7|cmp1|s~1_combout\ = (\b~combout\(1) & (\cmp1|cmp6|cout~0_combout\ $ (((\a~combout\(7) & \b~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \cmp1|cmp6|cout~0_combout\,
	datac => \b~combout\(0),
	datad => \b~combout\(1),
	combout => \cmp2|cmp7|cmp1|s~1_combout\);

-- Location: LCCOMB_X14_Y9_N8
\cmp2|cmp7|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp7|cout~0_combout\ = \cmp2|cmp7|cmp1|s~0_combout\ $ (((\cmp2|cmp7|cmp1|s~1_combout\ & !\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp2|cmp7|cmp1|s~0_combout\,
	datac => \cmp2|cmp7|cmp1|s~1_combout\,
	datad => \a~combout\(6),
	combout => \cmp2|cmp7|cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N2
\cmp2|cmp7|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp2|cmp7|cout~1_combout\ = (\cmp2|cmp7|cout~0_combout\ & ((\cmp2|cmp6|cout~0_combout\) # ((\a~combout\(6) & \b~combout\(2))))) # (!\cmp2|cmp7|cout~0_combout\ & (\a~combout\(6) & (\b~combout\(2) & \cmp2|cmp6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \cmp2|cmp7|cout~0_combout\,
	datac => \b~combout\(2),
	datad => \cmp2|cmp6|cout~0_combout\,
	combout => \cmp2|cmp7|cout~1_combout\);

-- Location: LCCOMB_X20_Y9_N14
\cmp3|cmp7|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp7|cmp1|s~combout\ = \cmp2|cmp8|cmp1|s~1_combout\ $ (\cmp2|cmp7|cout~1_combout\ $ (((\a~combout\(6) & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp8|cmp1|s~1_combout\,
	datab => \a~combout\(6),
	datac => \cmp2|cmp7|cout~1_combout\,
	datad => \b~combout\(3),
	combout => \cmp3|cmp7|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y9_N2
\aux_b3[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b3(5) = (\a~combout\(5) & \b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(5),
	datad => \b~combout\(3),
	combout => aux_b3(5));

-- Location: LCCOMB_X15_Y9_N28
\cmp3|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp6|cout~0_combout\ = (\cmp3|cmp5|cout~0_combout\ & ((aux_b3(5)) # (\cmp2|cmp7|cmp1|s~2_combout\ $ (\cmp2|cmp6|cout~0_combout\)))) # (!\cmp3|cmp5|cout~0_combout\ & (aux_b3(5) & (\cmp2|cmp7|cmp1|s~2_combout\ $ (\cmp2|cmp6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp7|cmp1|s~2_combout\,
	datab => \cmp3|cmp5|cout~0_combout\,
	datac => \cmp2|cmp6|cout~0_combout\,
	datad => aux_b3(5),
	combout => \cmp3|cmp6|cout~0_combout\);

-- Location: LCCOMB_X20_Y9_N8
\cmp4|cmp6|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp6|cmp1|s~combout\ = \cmp3|cmp7|cmp1|s~combout\ $ (\cmp3|cmp6|cout~0_combout\ $ (((\a~combout\(5) & \b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datab => \cmp3|cmp7|cmp1|s~combout\,
	datac => \b~combout\(4),
	datad => \cmp3|cmp6|cout~0_combout\,
	combout => \cmp4|cmp6|cmp1|s~combout\);

-- Location: LCCOMB_X15_Y9_N22
\cmp5|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp5|cout~0_combout\ = (aux_b5(4) & ((\cmp5|cmp4|cout~0_combout\) # (\cmp4|cmp5|cout~0_combout\ $ (\cmp4|cmp6|cmp1|s~combout\)))) # (!aux_b5(4) & (\cmp5|cmp4|cout~0_combout\ & (\cmp4|cmp5|cout~0_combout\ $ (\cmp4|cmp6|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b5(4),
	datab => \cmp4|cmp5|cout~0_combout\,
	datac => \cmp5|cmp4|cout~0_combout\,
	datad => \cmp4|cmp6|cmp1|s~combout\,
	combout => \cmp5|cmp5|cout~0_combout\);

-- Location: LCCOMB_X20_Y9_N30
\aux_b4[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(5) = (\b~combout\(4) & \a~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \a~combout\(5),
	combout => aux_b4(5));

-- Location: LCCOMB_X20_Y9_N24
\cmp4|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp6|cout~0_combout\ = (\cmp4|cmp5|cout~0_combout\ & ((aux_b4(5)) # (\cmp3|cmp6|cout~0_combout\ $ (\cmp3|cmp7|cmp1|s~combout\)))) # (!\cmp4|cmp5|cout~0_combout\ & (aux_b4(5) & (\cmp3|cmp6|cout~0_combout\ $ (\cmp3|cmp7|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp5|cout~0_combout\,
	datab => \cmp3|cmp6|cout~0_combout\,
	datac => \cmp3|cmp7|cmp1|s~combout\,
	datad => aux_b4(5),
	combout => \cmp4|cmp6|cout~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\cmp5|cmp6|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp6|cmp1|s~combout\ = \cmp4|cmp7|cmp1|s~combout\ $ (\cmp4|cmp6|cout~0_combout\ $ (((\a~combout\(5) & \b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp7|cmp1|s~combout\,
	datab => \a~combout\(5),
	datac => \b~combout\(5),
	datad => \cmp4|cmp6|cout~0_combout\,
	combout => \cmp5|cmp6|cmp1|s~combout\);

-- Location: LCCOMB_X19_Y9_N20
\cmp6|cmp5|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp5|cmp1|s~combout\ = \cmp5|cmp5|cout~0_combout\ $ (\cmp5|cmp6|cmp1|s~combout\ $ (((\b~combout\(6) & \a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \cmp5|cmp5|cout~0_combout\,
	datac => \a~combout\(4),
	datad => \cmp5|cmp6|cmp1|s~combout\,
	combout => \cmp6|cmp5|cmp1|s~combout\);

-- Location: LCCOMB_X18_Y9_N2
\cmp5|cmp4|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp4|cmp1|s~combout\ = \cmp4|cmp5|cmp1|s~combout\ $ (\cmp4|cmp4|cout~0_combout\ $ (((\b~combout\(5) & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp5|cmp1|s~combout\,
	datab => \b~combout\(5),
	datac => \a~combout\(3),
	datad => \cmp4|cmp4|cout~0_combout\,
	combout => \cmp5|cmp4|cmp1|s~combout\);

-- Location: LCCOMB_X18_Y9_N20
\aux_b6[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(2) = (\b~combout\(6) & \a~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datac => \a~combout\(2),
	combout => aux_b6(2));

-- Location: LCCOMB_X15_Y3_N18
\cmp6|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp2|cout~0_combout\ = (aux_b6(1) & ((\cmp5|cmp3|cmp2|s~combout\) # ((aux_b6(0) & \cmp5|cmp2|cmp2|s~combout\)))) # (!aux_b6(1) & (aux_b6(0) & (\cmp5|cmp2|cmp2|s~combout\ & \cmp5|cmp3|cmp2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b6(1),
	datab => aux_b6(0),
	datac => \cmp5|cmp2|cmp2|s~combout\,
	datad => \cmp5|cmp3|cmp2|s~combout\,
	combout => \cmp6|cmp2|cout~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\cmp6|cmp3|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp3|cout~0_combout\ = (aux_b6(2) & ((\cmp6|cmp2|cout~0_combout\) # (\cmp5|cmp3|cout~0_combout\ $ (\cmp5|cmp4|cmp1|s~combout\)))) # (!aux_b6(2) & (\cmp6|cmp2|cout~0_combout\ & (\cmp5|cmp3|cout~0_combout\ $ (\cmp5|cmp4|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp3|cout~0_combout\,
	datab => \cmp5|cmp4|cmp1|s~combout\,
	datac => aux_b6(2),
	datad => \cmp6|cmp2|cout~0_combout\,
	combout => \cmp6|cmp3|cout~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\aux_b6[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(3) = (\a~combout\(3) & \b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(6),
	combout => aux_b6(3));

-- Location: LCCOMB_X18_Y9_N18
\cmp6|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp4|cout~0_combout\ = (\cmp6|cmp3|cout~0_combout\ & ((aux_b6(3)) # (\cmp5|cmp5|cmp1|s~combout\ $ (\cmp5|cmp4|cout~0_combout\)))) # (!\cmp6|cmp3|cout~0_combout\ & (aux_b6(3) & (\cmp5|cmp5|cmp1|s~combout\ $ (\cmp5|cmp4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp5|cmp1|s~combout\,
	datab => \cmp6|cmp3|cout~0_combout\,
	datac => aux_b6(3),
	datad => \cmp5|cmp4|cout~0_combout\,
	combout => \cmp6|cmp4|cout~0_combout\);

-- Location: LCCOMB_X19_Y9_N30
\cmp7|cmp4|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp4|cout~0_combout\ = (\cmp7|cmp3|cout~0_combout\ & ((aux_b7(3)) # (\cmp6|cmp5|cmp1|s~combout\ $ (\cmp6|cmp4|cout~0_combout\)))) # (!\cmp7|cmp3|cout~0_combout\ & (aux_b7(3) & (\cmp6|cmp5|cmp1|s~combout\ $ (\cmp6|cmp4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|cmp3|cout~0_combout\,
	datab => aux_b7(3),
	datac => \cmp6|cmp5|cmp1|s~combout\,
	datad => \cmp6|cmp4|cout~0_combout\,
	combout => \cmp7|cmp4|cout~0_combout\);

-- Location: LCCOMB_X19_Y9_N24
\aux_b7[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(4) = (\a~combout\(4) & \b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(4),
	datac => \b~combout\(7),
	combout => aux_b7(4));

-- Location: LCCOMB_X20_Y9_N26
\cmp3|cmp8|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp3|cmp8|cmp1|s~combout\ = \cmp2|cmp8|cout~1_combout\ $ (((\a~combout\(7) & \b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp2|cmp8|cout~1_combout\,
	datab => \a~combout\(7),
	datad => \b~combout\(3),
	combout => \cmp3|cmp8|cmp1|s~combout\);

-- Location: LCCOMB_X20_Y9_N20
\aux_b4[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b4(6) = (\b~combout\(4) & \a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datac => \a~combout\(6),
	combout => aux_b4(6));

-- Location: LCCOMB_X20_Y9_N18
\cmp4|cmp7|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp7|cout~0_combout\ = (aux_b4(6) & ((\cmp4|cmp6|cout~0_combout\) # (\cmp3|cmp7|cout~0_combout\ $ (\cmp3|cmp8|cmp1|s~combout\)))) # (!aux_b4(6) & (\cmp4|cmp6|cout~0_combout\ & (\cmp3|cmp7|cout~0_combout\ $ (\cmp3|cmp8|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp7|cout~0_combout\,
	datab => \cmp3|cmp8|cmp1|s~combout\,
	datac => aux_b4(6),
	datad => \cmp4|cmp6|cout~0_combout\,
	combout => \cmp4|cmp7|cout~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\cmp5|cmp7|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp7|cmp1|s~combout\ = \cmp4|cmp8|cmp1|s~combout\ $ (\cmp4|cmp7|cout~0_combout\ $ (((\b~combout\(5) & \a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp4|cmp8|cmp1|s~combout\,
	datab => \cmp4|cmp7|cout~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(6),
	combout => \cmp5|cmp7|cmp1|s~combout\);

-- Location: LCCOMB_X19_Y9_N6
\cmp6|cmp6|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp6|cmp1|s~combout\ = \cmp5|cmp6|cout~0_combout\ $ (\cmp5|cmp7|cmp1|s~combout\ $ (((\a~combout\(5) & \b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp6|cout~0_combout\,
	datab => \a~combout\(5),
	datac => \cmp5|cmp7|cmp1|s~combout\,
	datad => \b~combout\(6),
	combout => \cmp6|cmp6|cmp1|s~combout\);

-- Location: LCCOMB_X19_Y9_N4
\cmp7|cmp5|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp5|cmp2|s~combout\ = \cmp6|cmp5|cout~0_combout\ $ (\cmp7|cmp4|cout~0_combout\ $ (aux_b7(4) $ (\cmp6|cmp6|cmp1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp6|cmp5|cout~0_combout\,
	datab => \cmp7|cmp4|cout~0_combout\,
	datac => aux_b7(4),
	datad => \cmp6|cmp6|cmp1|s~combout\,
	combout => \cmp7|cmp5|cmp2|s~combout\);

-- Location: LCCOMB_X18_Y9_N30
\cmp6|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp3|cmp2|s~combout\ = \cmp5|cmp3|cout~0_combout\ $ (\cmp5|cmp4|cmp1|s~combout\ $ (aux_b6(2) $ (\cmp6|cmp2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp3|cout~0_combout\,
	datab => \cmp5|cmp4|cmp1|s~combout\,
	datac => aux_b6(2),
	datad => \cmp6|cmp2|cout~0_combout\,
	combout => \cmp6|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X18_Y9_N8
\aux_b7[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(1) = (\a~combout\(1) & \b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(1),
	datad => \b~combout\(7),
	combout => aux_b7(1));

-- Location: LCCOMB_X18_Y9_N0
\cmp7|cmp2|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp2|cmp2|s~combout\ = \cmp6|cmp3|cmp2|s~combout\ $ (aux_b7(1) $ (((aux_b7(0) & \cmp6|cmp2|cmp2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b7(0),
	datab => \cmp6|cmp3|cmp2|s~combout\,
	datac => aux_b7(1),
	datad => \cmp6|cmp2|cmp2|s~combout\,
	combout => \cmp7|cmp2|cmp2|s~combout\);

-- Location: LCCOMB_X20_Y9_N22
\cmp4|cmp8|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp4|cmp8|cout~0_combout\ = (\cmp3|cmp8|cout~0_combout\ & ((\cmp4|cmp7|cout~0_combout\) # ((\a~combout\(7) & \b~combout\(4))))) # (!\cmp3|cmp8|cout~0_combout\ & (\a~combout\(7) & (\b~combout\(4) & \cmp4|cmp7|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp3|cmp8|cout~0_combout\,
	datab => \a~combout\(7),
	datac => \b~combout\(4),
	datad => \cmp4|cmp7|cout~0_combout\,
	combout => \cmp4|cmp8|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N30
\cmp5|cmp8|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp8|cout~0_combout\ = (\cmp5|cmp7|cout~0_combout\ & ((\cmp4|cmp8|cout~0_combout\) # ((\b~combout\(5) & \a~combout\(7))))) # (!\cmp5|cmp7|cout~0_combout\ & (\cmp4|cmp8|cout~0_combout\ & (\b~combout\(5) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp7|cout~0_combout\,
	datab => \cmp4|cmp8|cout~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(7),
	combout => \cmp5|cmp8|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N24
\cmp6|cmp8|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp8|cout~0_combout\ = (\cmp6|cmp7|cout~0_combout\ & ((\cmp5|cmp8|cout~0_combout\) # ((\b~combout\(6) & \a~combout\(7))))) # (!\cmp6|cmp7|cout~0_combout\ & (\cmp5|cmp8|cout~0_combout\ & (\b~combout\(6) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp6|cmp7|cout~0_combout\,
	datab => \cmp5|cmp8|cout~0_combout\,
	datac => \b~combout\(6),
	datad => \a~combout\(7),
	combout => \cmp6|cmp8|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N0
\cmp6|cmp8|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp8|cmp1|s~combout\ = \cmp5|cmp8|cout~0_combout\ $ (((\b~combout\(6) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp5|cmp8|cout~0_combout\,
	datac => \b~combout\(6),
	datad => \a~combout\(7),
	combout => \cmp6|cmp8|cmp1|s~combout\);

-- Location: LCCOMB_X20_Y10_N8
\cmp5|cmp8|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp5|cmp8|cmp1|s~combout\ = \cmp4|cmp8|cout~0_combout\ $ (((\b~combout\(5) & \a~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmp4|cmp8|cout~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(7),
	combout => \cmp5|cmp8|cmp1|s~combout\);

-- Location: LCCOMB_X19_Y9_N28
\aux_b6[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(5) = (\a~combout\(5) & \b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(5),
	datad => \b~combout\(6),
	combout => aux_b6(5));

-- Location: LCCOMB_X19_Y9_N8
\aux_b6[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(4) = (\b~combout\(6) & \a~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datac => \a~combout\(4),
	combout => aux_b6(4));

-- Location: LCCOMB_X19_Y9_N10
\cmp6|cmp5|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp5|cout~0_combout\ = (\cmp6|cmp4|cout~0_combout\ & ((aux_b6(4)) # (\cmp5|cmp5|cout~0_combout\ $ (\cmp5|cmp6|cmp1|s~combout\)))) # (!\cmp6|cmp4|cout~0_combout\ & (aux_b6(4) & (\cmp5|cmp5|cout~0_combout\ $ (\cmp5|cmp6|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp5|cout~0_combout\,
	datab => \cmp6|cmp4|cout~0_combout\,
	datac => aux_b6(4),
	datad => \cmp5|cmp6|cmp1|s~combout\,
	combout => \cmp6|cmp5|cout~0_combout\);

-- Location: LCCOMB_X19_Y9_N14
\cmp6|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp6|cout~0_combout\ = (aux_b6(5) & ((\cmp6|cmp5|cout~0_combout\) # (\cmp5|cmp6|cout~0_combout\ $ (\cmp5|cmp7|cmp1|s~combout\)))) # (!aux_b6(5) & (\cmp6|cmp5|cout~0_combout\ & (\cmp5|cmp6|cout~0_combout\ $ (\cmp5|cmp7|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp6|cout~0_combout\,
	datab => aux_b6(5),
	datac => \cmp5|cmp7|cmp1|s~combout\,
	datad => \cmp6|cmp5|cout~0_combout\,
	combout => \cmp6|cmp6|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N10
\aux_b6[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b6(6) = (\b~combout\(6) & \a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(6),
	datad => \a~combout\(6),
	combout => aux_b6(6));

-- Location: LCCOMB_X20_Y10_N20
\cmp6|cmp7|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp7|cout~0_combout\ = (\cmp6|cmp6|cout~0_combout\ & ((aux_b6(6)) # (\cmp5|cmp7|cout~0_combout\ $ (\cmp5|cmp8|cmp1|s~combout\)))) # (!\cmp6|cmp6|cout~0_combout\ & (aux_b6(6) & (\cmp5|cmp7|cout~0_combout\ $ (\cmp5|cmp8|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp7|cout~0_combout\,
	datab => \cmp5|cmp8|cmp1|s~combout\,
	datac => \cmp6|cmp6|cout~0_combout\,
	datad => aux_b6(6),
	combout => \cmp6|cmp7|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N14
\aux_b7[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux_b7(5) = (\a~combout\(5) & \b~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(5),
	datad => \b~combout\(7),
	combout => aux_b7(5));

-- Location: LCCOMB_X20_Y10_N12
\cmp6|cmp7|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp7|cmp1|s~combout\ = \cmp5|cmp7|cout~0_combout\ $ (\cmp5|cmp8|cmp1|s~combout\ $ (((\b~combout\(6) & \a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp7|cout~0_combout\,
	datab => \cmp5|cmp8|cmp1|s~combout\,
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \cmp6|cmp7|cmp1|s~combout\);

-- Location: LCCOMB_X20_Y10_N28
\cmp7|cmp6|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp6|cout~0_combout\ = (\cmp7|cmp5|cout~0_combout\ & ((aux_b7(5)) # (\cmp6|cmp6|cout~0_combout\ $ (\cmp6|cmp7|cmp1|s~combout\)))) # (!\cmp7|cmp5|cout~0_combout\ & (aux_b7(5) & (\cmp6|cmp6|cout~0_combout\ $ (\cmp6|cmp7|cmp1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|cmp5|cout~0_combout\,
	datab => aux_b7(5),
	datac => \cmp6|cmp6|cout~0_combout\,
	datad => \cmp6|cmp7|cmp1|s~combout\,
	combout => \cmp7|cmp6|cout~0_combout\);

-- Location: LCCOMB_X20_Y10_N2
\cmp7|cmp7|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp7|cmp2|s~combout\ = aux_b7(6) $ (\cmp6|cmp8|cmp1|s~combout\ $ (\cmp6|cmp7|cout~0_combout\ $ (\cmp7|cmp6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b7(6),
	datab => \cmp6|cmp8|cmp1|s~combout\,
	datac => \cmp6|cmp7|cout~0_combout\,
	datad => \cmp7|cmp6|cout~0_combout\,
	combout => \cmp7|cmp7|cmp2|s~combout\);

-- Location: LCCOMB_X20_Y10_N16
\cmp7|cmp6|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp6|cmp2|s~combout\ = \cmp7|cmp5|cout~0_combout\ $ (aux_b7(5) $ (\cmp6|cmp6|cout~0_combout\ $ (\cmp6|cmp7|cmp1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|cmp5|cout~0_combout\,
	datab => aux_b7(5),
	datac => \cmp6|cmp6|cout~0_combout\,
	datad => \cmp6|cmp7|cmp1|s~combout\,
	combout => \cmp7|cmp6|cmp2|s~combout\);

-- Location: LCCOMB_X19_Y9_N22
\cmp7|cmp4|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp4|cmp2|s~combout\ = \cmp7|cmp3|cout~0_combout\ $ (aux_b7(3) $ (\cmp6|cmp5|cmp1|s~combout\ $ (\cmp6|cmp4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|cmp3|cout~0_combout\,
	datab => aux_b7(3),
	datac => \cmp6|cmp5|cmp1|s~combout\,
	datad => \cmp6|cmp4|cout~0_combout\,
	combout => \cmp7|cmp4|cmp2|s~combout\);

-- Location: LCCOMB_X20_Y10_N4
\cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~1_combout\ = (\cmp7|cmp7|cout~0_combout\) # ((\cmp7|cmp7|cmp2|s~combout\) # ((\cmp7|cmp6|cmp2|s~combout\) # (\cmp7|cmp4|cmp2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|cmp7|cout~0_combout\,
	datab => \cmp7|cmp7|cmp2|s~combout\,
	datac => \cmp7|cmp6|cmp2|s~combout\,
	datad => \cmp7|cmp4|cmp2|s~combout\,
	combout => \cout~1_combout\);

-- Location: LCCOMB_X20_Y10_N22
\cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~2_combout\ = (\cmp6|cmp8|cout~0_combout\) # ((\cout~1_combout\) # ((\a~combout\(7) & \b~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datab => \cmp6|cmp8|cout~0_combout\,
	datac => \cout~1_combout\,
	datad => \b~combout\(7),
	combout => \cout~2_combout\);

-- Location: LCCOMB_X18_Y9_N14
\cmp6|cmp4|cmp1|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp6|cmp4|cmp1|s~combout\ = \cmp5|cmp5|cmp1|s~combout\ $ (\cmp5|cmp4|cout~0_combout\ $ (((\a~combout\(3) & \b~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp5|cmp5|cmp1|s~combout\,
	datab => \cmp5|cmp4|cout~0_combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(6),
	combout => \cmp6|cmp4|cmp1|s~combout\);

-- Location: LCCOMB_X18_Y9_N10
\cmp7|cmp2|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp2|cout~0_combout\ = (\cmp6|cmp3|cmp2|s~combout\ & ((aux_b7(1)) # ((aux_b7(0) & \cmp6|cmp2|cmp2|s~combout\)))) # (!\cmp6|cmp3|cmp2|s~combout\ & (aux_b7(0) & (aux_b7(1) & \cmp6|cmp2|cmp2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b7(0),
	datab => \cmp6|cmp3|cmp2|s~combout\,
	datac => aux_b7(1),
	datad => \cmp6|cmp2|cmp2|s~combout\,
	combout => \cmp7|cmp2|cout~0_combout\);

-- Location: LCCOMB_X18_Y9_N22
\cmp7|cmp3|cmp2|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \cmp7|cmp3|cmp2|s~combout\ = aux_b7(2) $ (\cmp6|cmp3|cout~0_combout\ $ (\cmp6|cmp4|cmp1|s~combout\ $ (\cmp7|cmp2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux_b7(2),
	datab => \cmp6|cmp3|cout~0_combout\,
	datac => \cmp6|cmp4|cmp1|s~combout\,
	datad => \cmp7|cmp2|cout~0_combout\,
	combout => \cmp7|cmp3|cmp2|s~combout\);

-- Location: LCCOMB_X18_Y9_N6
\cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\cmp7|cmp5|cmp2|s~combout\) # ((\cmp7|cmp2|cmp2|s~combout\) # ((\cout~2_combout\) # (\cmp7|cmp3|cmp2|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp7|cmp5|cmp2|s~combout\,
	datab => \cmp7|cmp2|cmp2|s~combout\,
	datac => \cout~2_combout\,
	datad => \cmp7|cmp3|cmp2|s~combout\,
	combout => \cout~0_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aux_b0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp1|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp2|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp3|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(3));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp4|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(4));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp5|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(5));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp6|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(6));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cmp7|cmp1|cmp1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m(7));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);
END structure;


