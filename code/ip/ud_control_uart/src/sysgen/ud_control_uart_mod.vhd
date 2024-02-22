-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity ud_control_uart_stub is
  port (
    bit_8 : in std_logic_vector( 1-1 downto 0 );
    mitad_pulso : in std_logic_vector( 1-1 downto 0 );
    rx_fe : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    en_incr_ciclos : out std_logic_vector( 1-1 downto 0 );
    en_incr_contador : out std_logic_vector( 1-1 downto 0 );
    estado_actual : out std_logic_vector( 3-1 downto 0 );
    fin_recepcion : out std_logic_vector( 1-1 downto 0 );
    load_bit : out std_logic_vector( 1-1 downto 0 );
    load_salida : out std_logic_vector( 1-1 downto 0 );
    rst_sincrono : out std_logic_vector( 1-1 downto 0 )
  );
end ud_control_uart_stub;
architecture structural of ud_control_uart_stub is 
begin
  sysgen_dut : entity xil_defaultlib.ud_control_uart_0 
  port map (
    bit_8 => bit_8,
    mitad_pulso => mitad_pulso,
    rx_fe => rx_fe,
    clk => clk,
    en_incr_ciclos => en_incr_ciclos,
    en_incr_contador => en_incr_contador,
    estado_actual => estado_actual,
    fin_recepcion => fin_recepcion,
    load_bit => load_bit,
    load_salida => load_salida,
    rst_sincrono => rst_sincrono
  );
end structural;
