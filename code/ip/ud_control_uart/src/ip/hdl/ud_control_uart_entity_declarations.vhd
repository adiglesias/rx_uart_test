-------------------------------------------------------------------
-- Vitis Model Composer version 2023.2 VHDL source file.
--
-- Copyright(C) 1995-2022 by Xilinx, Inc. All rights reserved.
-- Copyright(C) 2022-2023 by Advanced Micro Devices, Inc. All rights reserved.
--
-- This text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.
-------------------------------------------------------------------

library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_mcode_block_05f5597f09 is
  port (
    mitad_pulso : in std_logic_vector((1 - 1) downto 0);
    rx_fe : in std_logic_vector((1 - 1) downto 0);
    bit_8 : in std_logic_vector((1 - 1) downto 0);
    load_bit : out std_logic_vector((1 - 1) downto 0);
    rst_sincrono : out std_logic_vector((1 - 1) downto 0);
    en_incr_ciclos : out std_logic_vector((1 - 1) downto 0);
    en_incr_contador : out std_logic_vector((1 - 1) downto 0);
    load_salida : out std_logic_vector((1 - 1) downto 0);
    fin_recepcion : out std_logic_vector((1 - 1) downto 0);
    estado_actual : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_mcode_block_05f5597f09;
architecture behavior of sysgen_mcode_block_05f5597f09
is
  signal mitad_pulso_1_131: unsigned((1 - 1) downto 0);
  signal rx_fe_1_144: unsigned((1 - 1) downto 0);
  signal bit_8_1_151: unsigned((1 - 1) downto 0);
  signal state_12_19_next: unsigned((3 - 1) downto 0);
  signal state_12_19: unsigned((3 - 1) downto 0) := "000";
  signal rel_24_12: boolean;
  signal state_join_24_9: unsigned((1 - 1) downto 0);
  signal rel_33_12: boolean;
  signal state_join_33_9: unsigned((2 - 1) downto 0);
  signal rel_40_12: boolean;
  signal state_join_40_9: unsigned((2 - 1) downto 0);
  signal rel_47_12: boolean;
  signal state_join_47_9: unsigned((3 - 1) downto 0);
  signal en_incr_ciclos_join_22_1: boolean;
  signal rst_sincrono_join_22_1: boolean;
  signal state_join_22_1: unsigned((3 - 1) downto 0);
  signal load_bit_join_22_1: boolean;
  signal en_incr_contador_join_22_1: boolean;
  signal load_salida_join_22_1: boolean;
  signal fin_recepcion_join_22_1: boolean;
begin
  mitad_pulso_1_131 <= std_logic_vector_to_unsigned(mitad_pulso);
  rx_fe_1_144 <= std_logic_vector_to_unsigned(rx_fe);
  bit_8_1_151 <= std_logic_vector_to_unsigned(bit_8);
  proc_state_12_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        state_12_19 <= state_12_19_next;
      end if;
    end if;
  end process proc_state_12_19;
  rel_24_12 <= rx_fe_1_144 = std_logic_vector_to_unsigned("1");
  proc_if_24_9: process (rel_24_12)
  is
  begin
    if rel_24_12 then
      state_join_24_9 <= std_logic_vector_to_unsigned("1");
    else 
      state_join_24_9 <= std_logic_vector_to_unsigned("0");
    end if;
  end process proc_if_24_9;
  rel_33_12 <= mitad_pulso_1_131 = std_logic_vector_to_unsigned("1");
  proc_if_33_9: process (rel_33_12)
  is
  begin
    if rel_33_12 then
      state_join_33_9 <= std_logic_vector_to_unsigned("10");
    else 
      state_join_33_9 <= std_logic_vector_to_unsigned("01");
    end if;
  end process proc_if_33_9;
  rel_40_12 <= mitad_pulso_1_131 = std_logic_vector_to_unsigned("1");
  proc_if_40_9: process (rel_40_12)
  is
  begin
    if rel_40_12 then
      state_join_40_9 <= std_logic_vector_to_unsigned("11");
    else 
      state_join_40_9 <= std_logic_vector_to_unsigned("10");
    end if;
  end process proc_if_40_9;
  rel_47_12 <= bit_8_1_151 = std_logic_vector_to_unsigned("1");
  proc_if_47_9: process (rel_47_12)
  is
  begin
    if rel_47_12 then
      state_join_47_9 <= std_logic_vector_to_unsigned("100");
    else 
      state_join_47_9 <= std_logic_vector_to_unsigned("010");
    end if;
  end process proc_if_47_9;
  proc_switch_22_1: process (state_12_19, state_join_24_9, state_join_33_9, state_join_40_9, state_join_47_9)
  is
  begin
    case state_12_19 is 
      when "000" =>
        en_incr_ciclos_join_22_1 <= false;
        rst_sincrono_join_22_1 <= true;
        state_join_22_1 <= u2u_cast(state_join_24_9, 0, 3, 0);
        load_bit_join_22_1 <= false;
        en_incr_contador_join_22_1 <= false;
        load_salida_join_22_1 <= false;
        fin_recepcion_join_22_1 <= false;
      when "001" =>
        en_incr_ciclos_join_22_1 <= true;
        rst_sincrono_join_22_1 <= false;
        state_join_22_1 <= u2u_cast(state_join_33_9, 0, 3, 0);
        load_bit_join_22_1 <= false;
        en_incr_contador_join_22_1 <= false;
        load_salida_join_22_1 <= false;
        fin_recepcion_join_22_1 <= false;
      when "010" =>
        en_incr_ciclos_join_22_1 <= true;
        rst_sincrono_join_22_1 <= false;
        state_join_22_1 <= u2u_cast(state_join_40_9, 0, 3, 0);
        load_bit_join_22_1 <= false;
        en_incr_contador_join_22_1 <= false;
        load_salida_join_22_1 <= false;
        fin_recepcion_join_22_1 <= false;
      when "011" =>
        en_incr_ciclos_join_22_1 <= true;
        rst_sincrono_join_22_1 <= false;
        state_join_22_1 <= state_join_47_9;
        load_bit_join_22_1 <= true;
        en_incr_contador_join_22_1 <= true;
        load_salida_join_22_1 <= false;
        fin_recepcion_join_22_1 <= false;
      when "100" =>
        en_incr_ciclos_join_22_1 <= true;
        rst_sincrono_join_22_1 <= false;
        state_join_22_1 <= std_logic_vector_to_unsigned("101");
        load_bit_join_22_1 <= false;
        en_incr_contador_join_22_1 <= false;
        load_salida_join_22_1 <= true;
        fin_recepcion_join_22_1 <= false;
      when "101" =>
        en_incr_ciclos_join_22_1 <= true;
        rst_sincrono_join_22_1 <= false;
        state_join_22_1 <= std_logic_vector_to_unsigned("000");
        load_bit_join_22_1 <= false;
        en_incr_contador_join_22_1 <= false;
        load_salida_join_22_1 <= false;
        fin_recepcion_join_22_1 <= true;
      when others =>
        en_incr_ciclos_join_22_1 <= true;
        rst_sincrono_join_22_1 <= false;
        state_join_22_1 <= std_logic_vector_to_unsigned("000");
        load_bit_join_22_1 <= false;
        en_incr_contador_join_22_1 <= false;
        load_salida_join_22_1 <= false;
        fin_recepcion_join_22_1 <= false;
    end case;
  end process proc_switch_22_1;
  state_12_19_next <= state_join_22_1;
  load_bit <= boolean_to_vector(load_bit_join_22_1);
  rst_sincrono <= boolean_to_vector(rst_sincrono_join_22_1);
  en_incr_ciclos <= boolean_to_vector(en_incr_ciclos_join_22_1);
  en_incr_contador <= boolean_to_vector(en_incr_contador_join_22_1);
  load_salida <= boolean_to_vector(load_salida_join_22_1);
  fin_recepcion <= boolean_to_vector(fin_recepcion_join_22_1);
  estado_actual <= unsigned_to_std_logic_vector(state_join_22_1);
end behavior;

