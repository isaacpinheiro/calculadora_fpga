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

-- DATE "08/15/2018 16:55:10"

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

ENTITY 	bcd7seg IS
    PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	display : OUT std_logic_vector(6 DOWNTO 0)
	);
END bcd7seg;

-- Design Ports Information
-- display[0]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[2]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[3]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[4]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[5]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[6]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bcd[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bcd7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \display[0]$latch~combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \display[1]$latch~combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \display[2]$latch~combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \display[3]$latch~combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \display[4]$latch~combout\ : std_logic;
SIGNAL \comb~16_combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \display[5]$latch~combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \comb~15_combout\ : std_logic;
SIGNAL \display[6]$latch~combout\ : std_logic;
SIGNAL \bcd~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_bcd <= bcd;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_bcd(0),
	combout => \bcd~combout\(0));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_bcd(1),
	combout => \bcd~combout\(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_bcd(2),
	combout => \bcd~combout\(2));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_bcd(3),
	combout => \bcd~combout\(3));

-- Location: LCCOMB_X15_Y6_N24
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\bcd~combout\(3) & (((!\bcd~combout\(1) & !\bcd~combout\(2))))) # (!\bcd~combout\(3) & ((\bcd~combout\(1) $ (\bcd~combout\(2))) # (!\bcd~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~4_combout\);

-- Location: LCCOMB_X15_Y6_N26
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\bcd~combout\(0) & (!\bcd~combout\(3) & (\bcd~combout\(1) $ (!\bcd~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~5_combout\);

-- Location: LCCOMB_X15_Y6_N4
\display[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[0]$latch~combout\ = (!\comb~4_combout\ & ((\display[0]$latch~combout\) # (\comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~4_combout\,
	datac => \display[0]$latch~combout\,
	datad => \comb~5_combout\,
	combout => \display[0]$latch~combout\);

-- Location: LCCOMB_X15_Y6_N22
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\bcd~combout\(3) & (((\bcd~combout\(0) & \bcd~combout\(1))) # (!\bcd~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~7_combout\);

-- Location: LCCOMB_X15_Y6_N12
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\bcd~combout\(1) & (!\bcd~combout\(0) & (\bcd~combout\(2) & !\bcd~combout\(3)))) # (!\bcd~combout\(1) & ((\bcd~combout\(2) $ (\bcd~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~6_combout\);

-- Location: LCCOMB_X15_Y7_N0
\display[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[1]$latch~combout\ = (!\comb~6_combout\ & ((\comb~7_combout\) # (\display[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~7_combout\,
	datac => \comb~6_combout\,
	datad => \display[1]$latch~combout\,
	combout => \display[1]$latch~combout\);

-- Location: LCCOMB_X15_Y6_N8
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\bcd~combout\(0) & ((\bcd~combout\(1) & ((!\bcd~combout\(3)))) # (!\bcd~combout\(1) & (!\bcd~combout\(2) & \bcd~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~8_combout\);

-- Location: LCCOMB_X15_Y6_N10
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\bcd~combout\(0) & (((!\bcd~combout\(1) & !\bcd~combout\(2))) # (!\bcd~combout\(3)))) # (!\bcd~combout\(0) & (!\bcd~combout\(1) & ((!\bcd~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~9_combout\);

-- Location: LCCOMB_X15_Y9_N0
\display[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[2]$latch~combout\ = (!\comb~8_combout\ & ((\comb~9_combout\) # (\display[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datac => \comb~9_combout\,
	datad => \display[2]$latch~combout\,
	combout => \display[2]$latch~combout\);

-- Location: LCCOMB_X15_Y6_N20
\comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\bcd~combout\(2) & (!\bcd~combout\(3) & (\bcd~combout\(0) $ (\bcd~combout\(1))))) # (!\bcd~combout\(2) & ((\bcd~combout\(1) $ (\bcd~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~10_combout\);

-- Location: LCCOMB_X15_Y6_N30
\comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (!\bcd~combout\(3) & (\bcd~combout\(1) $ (((!\bcd~combout\(2)) # (!\bcd~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~11_combout\);

-- Location: LCCOMB_X15_Y13_N0
\display[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[3]$latch~combout\ = (!\comb~10_combout\ & ((\comb~11_combout\) # (\display[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~10_combout\,
	datac => \comb~11_combout\,
	datad => \display[3]$latch~combout\,
	combout => \display[3]$latch~combout\);

-- Location: LCCOMB_X15_Y6_N18
\comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\bcd~combout\(0)) # ((\bcd~combout\(2)) # (\bcd~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~13_combout\);

-- Location: LCCOMB_X15_Y6_N16
\comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\bcd~combout\(2) & (((!\bcd~combout\(3))))) # (!\bcd~combout\(2) & ((\bcd~combout\(3) & ((!\bcd~combout\(1)))) # (!\bcd~combout\(3) & (\bcd~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~12_combout\);

-- Location: LCCOMB_X14_Y5_N0
\display[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[4]$latch~combout\ = (!\comb~12_combout\ & ((\display[4]$latch~combout\) # (!\comb~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~13_combout\,
	datac => \comb~12_combout\,
	datad => \display[4]$latch~combout\,
	combout => \display[4]$latch~combout\);

-- Location: LCCOMB_X15_Y6_N0
\comb~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~16_combout\ = (\bcd~combout\(1) & (!\bcd~combout\(3) & ((\bcd~combout\(0)) # (!\bcd~combout\(2))))) # (!\bcd~combout\(1) & (\bcd~combout\(2) $ (((\bcd~combout\(0)) # (\bcd~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~16_combout\);

-- Location: LCCOMB_X15_Y6_N2
\comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = (!\bcd~combout\(3) & ((\bcd~combout\(0) & (!\bcd~combout\(1) & \bcd~combout\(2))) # (!\bcd~combout\(0) & (\bcd~combout\(1) $ (!\bcd~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~17_combout\);

-- Location: LCCOMB_X27_Y8_N0
\display[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[5]$latch~combout\ = (!\comb~16_combout\ & ((\comb~17_combout\) # (\display[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~16_combout\,
	datac => \comb~17_combout\,
	datad => \display[5]$latch~combout\,
	combout => \display[5]$latch~combout\);

-- Location: LCCOMB_X15_Y6_N28
\comb~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = (\bcd~combout\(1) & (((!\bcd~combout\(3))))) # (!\bcd~combout\(1) & ((\bcd~combout\(2) & (\bcd~combout\(0) & !\bcd~combout\(3))) # (!\bcd~combout\(2) & ((\bcd~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~14_combout\);

-- Location: LCCOMB_X15_Y6_N14
\comb~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~15_combout\ = (!\bcd~combout\(1) & (!\bcd~combout\(3) & ((!\bcd~combout\(2)) # (!\bcd~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~combout\(0),
	datab => \bcd~combout\(1),
	datac => \bcd~combout\(2),
	datad => \bcd~combout\(3),
	combout => \comb~15_combout\);

-- Location: LCCOMB_X15_Y6_N6
\display[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \display[6]$latch~combout\ = (!\comb~14_combout\ & ((\comb~15_combout\) # (\display[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~14_combout\,
	datac => \comb~15_combout\,
	datad => \display[6]$latch~combout\,
	combout => \display[6]$latch~combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[0]~I\ : cycloneii_io
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
	datain => \display[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[1]~I\ : cycloneii_io
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
	datain => \display[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(1));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[2]~I\ : cycloneii_io
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
	datain => \display[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(2));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[3]~I\ : cycloneii_io
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
	datain => \display[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[4]~I\ : cycloneii_io
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
	datain => \display[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(4));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[5]~I\ : cycloneii_io
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
	datain => \display[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(5));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[6]~I\ : cycloneii_io
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
	datain => \display[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(6));
END structure;


