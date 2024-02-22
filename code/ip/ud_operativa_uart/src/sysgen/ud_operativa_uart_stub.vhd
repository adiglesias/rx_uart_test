-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity ud_operativa_uart_stub is
  port (
    en_incr_ciclos : in std_logic_vector( 1-1 downto 0 );
    en_incr_contador : in std_logic_vector( 1-1 downto 0 );
    load_bits : in std_logic_vector( 1-1 downto 0 );
    load_salida : in std_logic_vector( 1-1 downto 0 );
    rst_sincrono : in std_logic_vector( 1-1 downto 0 );
    rx_data : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    bit_8 : out std_logic_vector( 1-1 downto 0 );
    data : out std_logic_vector( 8-1 downto 0 );
    mitad_pulso : out std_logic_vector( 1-1 downto 0 );
    rx_fe : out std_logic_vector( 1-1 downto 0 )
  );
end ud_operativa_uart_stub;
architecture structural of ud_operativa_uart_stub is 
begin
  sysgen_dut : entity xil_defaultlib.ud_operativa_uart 
  port map (
    en_incr_ciclos => en_incr_ciclos,
    en_incr_contador => en_incr_contador,
    load_bits => load_bits,
    load_salida => load_salida,
    rst_sincrono => rst_sincrono,
    rx_data => rx_data,
    clk => clk,
    bit_8 => bit_8,
    data => data,
    mitad_pulso => mitad_pulso,
    rx_fe => rx_fe
  );
end structural;
