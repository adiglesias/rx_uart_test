-- Generated from Simulink block top_uart/ud control uart_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ud_control_uart_struct is
  port (
    bit_8 : in std_logic_vector( 1-1 downto 0 );
    mitad_pulso : in std_logic_vector( 1-1 downto 0 );
    rx_fe : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    en_incr_ciclos : out std_logic_vector( 1-1 downto 0 );
    en_incr_contador : out std_logic_vector( 1-1 downto 0 );
    estado_actual : out std_logic_vector( 3-1 downto 0 );
    fin_recepcion : out std_logic_vector( 1-1 downto 0 );
    load_bit : out std_logic_vector( 1-1 downto 0 );
    load_salida : out std_logic_vector( 1-1 downto 0 );
    rst_sincrono : out std_logic_vector( 1-1 downto 0 )
  );
end ud_control_uart_struct;
architecture structural of ud_control_uart_struct is 
  signal ce_net : std_logic;
  signal mcode_en_incr_contador_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal mcode_load_salida_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_en_incr_ciclos_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_fin_recepcion_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_load_bit_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_estado_actual_net : std_logic_vector( 3-1 downto 0 );
  signal rx_fe_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mitad_pulso_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mcode_rst_sincrono_net : std_logic_vector( 1-1 downto 0 );
  signal bit_8_net_x0 : std_logic_vector( 1-1 downto 0 );
begin
  bit_8_net_x0 <= bit_8;
  en_incr_ciclos <= mcode_en_incr_ciclos_net;
  en_incr_contador <= mcode_en_incr_contador_net;
  estado_actual <= mcode_estado_actual_net;
  fin_recepcion <= mcode_fin_recepcion_net;
  load_bit <= mcode_load_bit_net;
  load_salida <= mcode_load_salida_net;
  mitad_pulso_net_x0 <= mitad_pulso;
  rst_sincrono <= mcode_rst_sincrono_net;
  rx_fe_net_x0 <= rx_fe;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mcode : entity xil_defaultlib.sysgen_mcode_block_05f5597f09 
  port map (
    clr => '0',
    mitad_pulso => mitad_pulso_net_x0,
    rx_fe => rx_fe_net_x0,
    bit_8 => bit_8_net_x0,
    clk => clk_net,
    ce => ce_net,
    load_bit => mcode_load_bit_net,
    rst_sincrono => mcode_rst_sincrono_net,
    en_incr_ciclos => mcode_en_incr_ciclos_net,
    en_incr_contador => mcode_en_incr_contador_net,
    load_salida => mcode_load_salida_net,
    fin_recepcion => mcode_fin_recepcion_net,
    estado_actual => mcode_estado_actual_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ud_control_uart_default_clock_driver is
  port (
    ud_control_uart_sysclk : in std_logic;
    ud_control_uart_sysce : in std_logic;
    ud_control_uart_sysclr : in std_logic;
    ud_control_uart_clk1 : out std_logic;
    ud_control_uart_ce1 : out std_logic
  );
end ud_control_uart_default_clock_driver;
architecture structural of ud_control_uart_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => ud_control_uart_sysclk,
    sysce => ud_control_uart_sysce,
    sysclr => ud_control_uart_sysclr,
    clk => ud_control_uart_clk1,
    ce => ud_control_uart_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ud_control_uart is
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
end ud_control_uart;
architecture structural of ud_control_uart is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "ud_control_uart,sysgen_core_2023_2,{,compilation=IP Catalog,block_icon_display=Default,family=artix7,part=xc7a100t,speed=-1,package=csg324,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00018,mcode=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  ud_control_uart_default_clock_driver : entity xil_defaultlib.ud_control_uart_default_clock_driver 
  port map (
    ud_control_uart_sysclk => clk,
    ud_control_uart_sysce => '1',
    ud_control_uart_sysclr => '0',
    ud_control_uart_clk1 => clk_1_net,
    ud_control_uart_ce1 => ce_1_net
  );
  ud_control_uart_struct : entity xil_defaultlib.ud_control_uart_struct 
  port map (
    bit_8 => bit_8,
    mitad_pulso => mitad_pulso,
    rx_fe => rx_fe,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    en_incr_ciclos => en_incr_ciclos,
    en_incr_contador => en_incr_contador,
    estado_actual => estado_actual,
    fin_recepcion => fin_recepcion,
    load_bit => load_bit,
    load_salida => load_salida,
    rst_sincrono => rst_sincrono
  );
end structural;
