--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Feb 21 15:26:28 2024
--Host        : GRAD0421 running 64-bit major release  (build 9200)
--Command     : generate_target ud_operativa_uart_bd_wrapper.bd
--Design      : ud_operativa_uart_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ud_operativa_uart_bd_wrapper is
  port (
    bit_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    en_incr_ciclos : in STD_LOGIC_VECTOR ( 0 to 0 );
    en_incr_contador : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_bits : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_salida : in STD_LOGIC_VECTOR ( 0 to 0 );
    mitad_pulso : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_sincrono : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fe : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ud_operativa_uart_bd_wrapper;

architecture STRUCTURE of ud_operativa_uart_bd_wrapper is
  component ud_operativa_uart_bd is
  port (
    bit_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    en_incr_ciclos : in STD_LOGIC_VECTOR ( 0 to 0 );
    en_incr_contador : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_bits : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_salida : in STD_LOGIC_VECTOR ( 0 to 0 );
    mitad_pulso : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_sincrono : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fe : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ud_operativa_uart_bd;
begin
ud_operativa_uart_bd_i: component ud_operativa_uart_bd
     port map (
      bit_8(0) => bit_8(0),
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      en_incr_ciclos(0) => en_incr_ciclos(0),
      en_incr_contador(0) => en_incr_contador(0),
      load_bits(0) => load_bits(0),
      load_salida(0) => load_salida(0),
      mitad_pulso(0) => mitad_pulso(0),
      rst_sincrono(0) => rst_sincrono(0),
      rx_data(0) => rx_data(0),
      rx_fe(0) => rx_fe(0)
    );
end STRUCTURE;
