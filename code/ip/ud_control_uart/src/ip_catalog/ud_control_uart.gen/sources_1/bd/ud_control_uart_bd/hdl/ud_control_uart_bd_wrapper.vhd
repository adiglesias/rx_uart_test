--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Feb 21 15:25:46 2024
--Host        : GRAD0421 running 64-bit major release  (build 9200)
--Command     : generate_target ud_control_uart_bd_wrapper.bd
--Design      : ud_control_uart_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ud_control_uart_bd_wrapper is
  port (
    bit_8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    en_incr_ciclos : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_incr_contador : out STD_LOGIC_VECTOR ( 0 to 0 );
    estado_actual : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fin_recepcion : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_bit : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_salida : out STD_LOGIC_VECTOR ( 0 to 0 );
    mitad_pulso : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_sincrono : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fe : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ud_control_uart_bd_wrapper;

architecture STRUCTURE of ud_control_uart_bd_wrapper is
  component ud_control_uart_bd is
  port (
    bit_8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    en_incr_ciclos : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_incr_contador : out STD_LOGIC_VECTOR ( 0 to 0 );
    estado_actual : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fin_recepcion : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_bit : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_salida : out STD_LOGIC_VECTOR ( 0 to 0 );
    mitad_pulso : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_sincrono : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fe : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ud_control_uart_bd;
begin
ud_control_uart_bd_i: component ud_control_uart_bd
     port map (
      bit_8(0) => bit_8(0),
      clk => clk,
      en_incr_ciclos(0) => en_incr_ciclos(0),
      en_incr_contador(0) => en_incr_contador(0),
      estado_actual(2 downto 0) => estado_actual(2 downto 0),
      fin_recepcion(0) => fin_recepcion(0),
      load_bit(0) => load_bit(0),
      load_salida(0) => load_salida(0),
      mitad_pulso(0) => mitad_pulso(0),
      rst_sincrono(0) => rst_sincrono(0),
      rx_fe(0) => rx_fe(0)
    );
end STRUCTURE;
