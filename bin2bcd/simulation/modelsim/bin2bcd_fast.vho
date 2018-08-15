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

-- DATE "08/15/2018 17:16:50"

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

ENTITY 	bin2bcd IS
    PORT (
	bin : IN std_logic_vector(7 DOWNTO 0);
	bcd : OUT std_logic_vector(11 DOWNTO 0)
	);
END bin2bcd;

-- Design Ports Information
-- bcd[0]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[2]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[3]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[4]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[5]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[6]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[7]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[8]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[9]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[10]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[11]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bin[0]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[7]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[5]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[6]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[3]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bin2bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bcd : std_logic_vector(11 DOWNTO 0);
SIGNAL \res~4_combout\ : std_logic;
SIGNAL \res~7_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \res~3_combout\ : std_logic;
SIGNAL \res~2_combout\ : std_logic;
SIGNAL \res~6_combout\ : std_logic;
SIGNAL \res~5_combout\ : std_logic;
SIGNAL \res~10_combout\ : std_logic;
SIGNAL \res~8_combout\ : std_logic;
SIGNAL \res~9_combout\ : std_logic;
SIGNAL \res~11_combout\ : std_logic;
SIGNAL \res~12_combout\ : std_logic;
SIGNAL \res~13_combout\ : std_logic;
SIGNAL \res~14_combout\ : std_logic;
SIGNAL \res~16_combout\ : std_logic;
SIGNAL \res~25_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \res~18_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \res~19_combout\ : std_logic;
SIGNAL \res~15_combout\ : std_logic;
SIGNAL \res~17_combout\ : std_logic;
SIGNAL \res~20_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \res~21_combout\ : std_logic;
SIGNAL \res~22_combout\ : std_logic;
SIGNAL \res~23_combout\ : std_logic;
SIGNAL \res~24_combout\ : std_logic;
SIGNAL \bin~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_res~22_combout\ : std_logic;
SIGNAL \ALT_INV_res~19_combout\ : std_logic;
SIGNAL \ALT_INV_res~14_combout\ : std_logic;

BEGIN

ww_bin <= bin;
bcd <= ww_bcd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_res~22_combout\ <= NOT \res~22_combout\;
\ALT_INV_res~19_combout\ <= NOT \res~19_combout\;
\ALT_INV_res~14_combout\ <= NOT \res~14_combout\;

-- Location: LCCOMB_X3_Y4_N4
\res~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~4_combout\ = (\bin~combout\(5) & (!\bin~combout\(7) & ((\bin~combout\(4)) # (!\bin~combout\(6))))) # (!\bin~combout\(5) & (\bin~combout\(7) & ((\bin~combout\(6)) # (!\bin~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datab => \bin~combout\(5),
	datac => \bin~combout\(7),
	datad => \bin~combout\(4),
	combout => \res~4_combout\);

-- Location: LCCOMB_X4_Y5_N12
\res~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~7_combout\ = (\res~3_combout\ & ((\res~2_combout\ $ (!\bin~combout\(3))))) # (!\res~3_combout\ & (\res~2_combout\ & ((\bin~combout\(3)) # (!\res~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~4_combout\,
	datab => \res~3_combout\,
	datac => \res~2_combout\,
	datad => \bin~combout\(3),
	combout => \res~7_combout\);

-- Location: LCCOMB_X4_Y5_N28
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\res~3_combout\) # ((\res~4_combout\ & ((\res~2_combout\) # (\bin~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~4_combout\,
	datab => \res~3_combout\,
	datac => \res~2_combout\,
	datad => \bin~combout\(3),
	combout => \LessThan2~0_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[0]~I\ : cycloneii_io
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
	padio => ww_bin(0),
	combout => \bin~combout\(0));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[2]~I\ : cycloneii_io
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
	padio => ww_bin(2),
	combout => \bin~combout\(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[5]~I\ : cycloneii_io
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
	padio => ww_bin(5),
	combout => \bin~combout\(5));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[7]~I\ : cycloneii_io
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
	padio => ww_bin(7),
	combout => \bin~combout\(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[4]~I\ : cycloneii_io
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
	padio => ww_bin(4),
	combout => \bin~combout\(4));

-- Location: LCCOMB_X3_Y4_N2
\res~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~3_combout\ = (\bin~combout\(6) & (!\bin~combout\(4) & (\bin~combout\(5) $ (!\bin~combout\(7))))) # (!\bin~combout\(6) & (!\bin~combout\(5) & (\bin~combout\(7) & \bin~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datab => \bin~combout\(5),
	datac => \bin~combout\(7),
	datad => \bin~combout\(4),
	combout => \res~3_combout\);

-- Location: LCCOMB_X3_Y4_N0
\res~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~2_combout\ = (\bin~combout\(6) & ((\bin~combout\(5) & (!\bin~combout\(7) & !\bin~combout\(4))) # (!\bin~combout\(5) & (\bin~combout\(7) & \bin~combout\(4))))) # (!\bin~combout\(6) & (\bin~combout\(4) $ (((!\bin~combout\(5) & \bin~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datab => \bin~combout\(5),
	datac => \bin~combout\(7),
	datad => \bin~combout\(4),
	combout => \res~2_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[3]~I\ : cycloneii_io
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
	padio => ww_bin(3),
	combout => \bin~combout\(3));

-- Location: LCCOMB_X4_Y5_N26
\res~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~6_combout\ = (\res~4_combout\ & (((!\res~2_combout\ & !\bin~combout\(3))))) # (!\res~4_combout\ & (\res~3_combout\ & ((\res~2_combout\) # (\bin~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~4_combout\,
	datab => \res~3_combout\,
	datac => \res~2_combout\,
	datad => \bin~combout\(3),
	combout => \res~6_combout\);

-- Location: LCCOMB_X4_Y5_N0
\res~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~5_combout\ = (\res~4_combout\ & (!\bin~combout\(3) & ((\res~3_combout\) # (\res~2_combout\)))) # (!\res~4_combout\ & (\res~3_combout\ $ (((\bin~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~4_combout\,
	datab => \res~3_combout\,
	datac => \res~2_combout\,
	datad => \bin~combout\(3),
	combout => \res~5_combout\);

-- Location: LCCOMB_X4_Y5_N10
\res~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~10_combout\ = (\bin~combout\(2) & (((\res~5_combout\)))) # (!\bin~combout\(2) & ((\res~6_combout\ & ((!\res~5_combout\))) # (!\res~6_combout\ & (!\res~7_combout\ & \res~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~7_combout\,
	datab => \bin~combout\(2),
	datac => \res~6_combout\,
	datad => \res~5_combout\,
	combout => \res~10_combout\);

-- Location: LCCOMB_X4_Y5_N30
\res~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~8_combout\ = (\res~7_combout\ & (!\bin~combout\(2) & ((\res~6_combout\) # (\res~5_combout\)))) # (!\res~7_combout\ & (\bin~combout\(2) $ ((\res~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~7_combout\,
	datab => \bin~combout\(2),
	datac => \res~6_combout\,
	datad => \res~5_combout\,
	combout => \res~8_combout\);

-- Location: LCCOMB_X4_Y5_N8
\res~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~9_combout\ = (\res~7_combout\ & (!\bin~combout\(2) & ((!\res~5_combout\)))) # (!\res~7_combout\ & (\res~6_combout\ & ((\bin~combout\(2)) # (\res~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~7_combout\,
	datab => \bin~combout\(2),
	datac => \res~6_combout\,
	datad => \res~5_combout\,
	combout => \res~9_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[1]~I\ : cycloneii_io
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
	padio => ww_bin(1),
	combout => \bin~combout\(1));

-- Location: LCCOMB_X4_Y5_N20
\res~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~11_combout\ = (\res~10_combout\ & (!\bin~combout\(1) & ((\res~8_combout\) # (\res~9_combout\)))) # (!\res~10_combout\ & ((\res~9_combout\ $ (\bin~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~10_combout\,
	datab => \res~8_combout\,
	datac => \res~9_combout\,
	datad => \bin~combout\(1),
	combout => \res~11_combout\);

-- Location: LCCOMB_X4_Y5_N22
\res~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~12_combout\ = (\res~8_combout\ & ((\bin~combout\(1)) # ((!\res~10_combout\ & !\res~9_combout\)))) # (!\res~8_combout\ & (((\res~9_combout\ & !\bin~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~10_combout\,
	datab => \res~8_combout\,
	datac => \res~9_combout\,
	datad => \bin~combout\(1),
	combout => \res~12_combout\);

-- Location: LCCOMB_X4_Y5_N24
\res~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~13_combout\ = (\res~10_combout\ & (!\res~8_combout\ & ((!\bin~combout\(1))))) # (!\res~10_combout\ & (\res~9_combout\ & ((\res~8_combout\) # (\bin~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~10_combout\,
	datab => \res~8_combout\,
	datac => \res~9_combout\,
	datad => \bin~combout\(1),
	combout => \res~13_combout\);

-- Location: LCCOMB_X4_Y5_N18
\res~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~14_combout\ = \res~9_combout\ $ ((((!\res~8_combout\ & !\bin~combout\(1))) # (!\res~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~10_combout\,
	datab => \res~8_combout\,
	datac => \res~9_combout\,
	datad => \bin~combout\(1),
	combout => \res~14_combout\);

-- Location: LCCOMB_X4_Y5_N16
\res~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~16_combout\ = \res~3_combout\ $ ((((!\res~2_combout\ & !\bin~combout\(3))) # (!\res~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~4_combout\,
	datab => \res~3_combout\,
	datac => \res~2_combout\,
	datad => \bin~combout\(3),
	combout => \res~16_combout\);

-- Location: LCCOMB_X3_Y4_N30
\res~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~25_combout\ = (\bin~combout\(7) & (\res~16_combout\ & ((\bin~combout\(6)) # (\bin~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datab => \bin~combout\(5),
	datac => \bin~combout\(7),
	datad => \res~16_combout\,
	combout => \res~25_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin[6]~I\ : cycloneii_io
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
	padio => ww_bin(6),
	combout => \bin~combout\(6));

-- Location: LCCOMB_X3_Y4_N24
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\bin~combout\(5)) # (\bin~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin~combout\(5),
	datad => \bin~combout\(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y4_N6
\res~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~18_combout\ = (\bin~combout\(6) & ((\bin~combout\(5) & ((\bin~combout\(4)) # (!\bin~combout\(7)))) # (!\bin~combout\(5) & (!\bin~combout\(7) & \bin~combout\(4))))) # (!\bin~combout\(6) & (!\bin~combout\(5) & (\bin~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datab => \bin~combout\(5),
	datac => \bin~combout\(7),
	datad => \bin~combout\(4),
	combout => \res~18_combout\);

-- Location: LCCOMB_X3_Y4_N16
\LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\res~18_combout\ & (\LessThan6~0_combout\ & ((!\LessThan0~0_combout\) # (!\res~25_combout\)))) # (!\res~18_combout\ & (((\res~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \res~25_combout\,
	datac => \LessThan0~0_combout\,
	datad => \res~18_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X4_Y5_N6
\LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\LessThan2~0_combout\ & ((\res~2_combout\ & (\bin~combout\(2) & \bin~combout\(3))) # (!\res~2_combout\ & ((!\bin~combout\(3)))))) # (!\LessThan2~0_combout\ & (\res~2_combout\ & ((\bin~combout\(2)) # (\bin~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \bin~combout\(2),
	datac => \res~2_combout\,
	datad => \bin~combout\(3),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X3_Y4_N10
\res~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~19_combout\ = \res~6_combout\ $ (\LessThan6~1_combout\ $ (!\LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res~6_combout\,
	datac => \LessThan6~1_combout\,
	datad => \LessThan3~0_combout\,
	combout => \res~19_combout\);

-- Location: LCCOMB_X3_Y4_N14
\res~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~15_combout\ = (\bin~combout\(6) & (\bin~combout\(5) & (\bin~combout\(7) & \bin~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datab => \bin~combout\(5),
	datac => \bin~combout\(7),
	datad => \bin~combout\(4),
	combout => \res~15_combout\);

-- Location: LCCOMB_X3_Y4_N18
\res~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~17_combout\ = (\res~15_combout\) # ((!\res~16_combout\ & ((!\bin~combout\(7)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \res~15_combout\,
	datac => \bin~combout\(7),
	datad => \res~16_combout\,
	combout => \res~17_combout\);

-- Location: LCCOMB_X3_Y4_N20
\res~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~20_combout\ = \res~17_combout\ $ (((\LessThan6~1_combout\ & (\res~6_combout\ $ (!\LessThan3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~1_combout\,
	datab => \res~17_combout\,
	datac => \res~6_combout\,
	datad => \LessThan3~0_combout\,
	combout => \res~20_combout\);

-- Location: LCCOMB_X3_Y4_N12
\LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\res~17_combout\) # (\res~6_combout\ $ (\LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res~17_combout\,
	datac => \res~6_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X3_Y4_N22
\res~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~21_combout\ = (\LessThan6~0_combout\ & (\res~25_combout\ & ((!\res~18_combout\)))) # (!\LessThan6~0_combout\ & (\res~18_combout\ & ((!\LessThan0~0_combout\) # (!\res~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \res~25_combout\,
	datac => \LessThan0~0_combout\,
	datad => \res~18_combout\,
	combout => \res~21_combout\);

-- Location: LCCOMB_X3_Y4_N8
\res~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~22_combout\ = (\res~18_combout\ & (((\res~25_combout\ & \LessThan0~0_combout\)) # (!\LessThan6~0_combout\))) # (!\res~18_combout\ & (((!\res~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \res~25_combout\,
	datac => \LessThan0~0_combout\,
	datad => \res~18_combout\,
	combout => \res~22_combout\);

-- Location: LCCOMB_X3_Y4_N26
\res~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~23_combout\ = (\bin~combout\(6) & \bin~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(6),
	datac => \bin~combout\(7),
	combout => \res~23_combout\);

-- Location: LCCOMB_X3_Y4_N28
\res~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \res~24_combout\ = (\res~23_combout\ & ((\bin~combout\(4)) # ((\bin~combout\(5)) # (\bin~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin~combout\(4),
	datab => \bin~combout\(5),
	datac => \bin~combout\(3),
	datad => \res~23_combout\,
	combout => \res~24_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[0]~I\ : cycloneii_io
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
	datain => \bin~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[1]~I\ : cycloneii_io
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
	datain => \res~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(1));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[2]~I\ : cycloneii_io
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
	datain => \res~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(2));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[3]~I\ : cycloneii_io
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
	datain => \res~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(3));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_res~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(4));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_res~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(5));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[6]~I\ : cycloneii_io
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
	datain => \res~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(6));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[7]~I\ : cycloneii_io
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
	datain => \res~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[8]~I\ : cycloneii_io
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
	datain => \ALT_INV_res~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(8));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[9]~I\ : cycloneii_io
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
	datain => \res~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(9));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(10));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bcd[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bcd(11));
END structure;


