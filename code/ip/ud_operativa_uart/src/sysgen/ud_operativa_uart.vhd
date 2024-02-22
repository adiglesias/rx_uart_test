-- Generated from Simulink block top_uart/ud operativa uart_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ud_operativa_uart_struct is
  port (
    en_incr_ciclos : in std_logic_vector( 1-1 downto 0 );
    en_incr_contador : in std_logic_vector( 1-1 downto 0 );
    load_bits : in std_logic_vector( 1-1 downto 0 );
    load_salida : in std_logic_vector( 1-1 downto 0 );
    rst_sincrono : in std_logic_vector( 1-1 downto 0 );
    rx_data : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    bit_8 : out std_logic_vector( 1-1 downto 0 );
    data : out std_logic_vector( 8-1 downto 0 );
    mitad_pulso : out std_logic_vector( 1-1 downto 0 );
    rx_fe : out std_logic_vector( 1-1 downto 0 )
  );
end ud_operativa_uart_struct;
architecture structural of ud_operativa_uart_struct is 
  signal en_incr_ciclos_net : std_logic_vector( 1-1 downto 0 );
  signal load_bits_net : std_logic_vector( 1-1 downto 0 );
  signal rst_sincrono_net : std_logic_vector( 1-1 downto 0 );
  signal rx_data_net : std_logic_vector( 1-1 downto 0 );
  signal mcode1_z_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 8-1 downto 0 );
  signal en_incr_contador_net : std_logic_vector( 1-1 downto 0 );
  signal load_salida_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_z_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 3-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal black_box_q_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 9-1 downto 0 );
  signal clk_net : std_logic;
  signal contador_bits_op_net : std_logic_vector( 3-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal contador_cliclos_op_net : std_logic_vector( 10-1 downto 0 );
begin
  bit_8 <= mcode1_z_net;
  data <= register_q_net;
  en_incr_ciclos_net <= en_incr_ciclos;
  en_incr_contador_net <= en_incr_contador;
  load_bits_net <= load_bits;
  load_salida_net <= load_salida;
  mitad_pulso <= mcode_z_net;
  rst_sincrono_net <= rst_sincrono;
  rx_data_net <= rx_data;
  rx_fe <= logical_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  black_box : entity xil_defaultlib.shift_register 
  port map (
    rst => rst_sincrono_net(0),
    d => rx_data_net(0),
    en => load_bits_net(0),
    q => black_box_q_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_cf01f4fd4b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_dcd0299836 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  delay1 : entity xil_defaultlib.ud_operativa_uart_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => rx_data_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_4c0a8a29d5 
  port map (
    clr => '0',
    ip => rx_data_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_d7cb23fa99 
  port map (
    clr => '0',
    d0 => delay1_q_net,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mcode : entity xil_defaultlib.sysgen_mcode_block_7042de71ad 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    x => contador_cliclos_op_net,
    y => constant_op_net,
    z => mcode_z_net
  );
  mcode1 : entity xil_defaultlib.sysgen_mcode_block_6805740eb9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    x => contador_bits_op_net,
    y => constant1_op_net,
    z => mcode1_z_net
  );
  register_x0 : entity xil_defaultlib.ud_operativa_uart_xlregister 
  generic map (
    d_width => 8,
    init_value => b"00000000"
  )
  port map (
    rst => "0",
    d => black_box_q_net,
    en => load_salida_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  contador_bits : entity xil_defaultlib.ud_operativa_uart_xlcounter_limit 
  generic map (
    cnt_15_0 => 7,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "ud_operativa_uart_c_counter_binary_v12_0_i0",
    count_limited => 0,
    op_arith => xlUnsigned,
    op_width => 3
  )
  port map (
    clr => '0',
    rst => rst_sincrono_net,
    en => en_incr_contador_net,
    clk => clk_net,
    ce => ce_net,
    op => contador_bits_op_net
  );
  contador_cliclos : entity xil_defaultlib.ud_operativa_uart_xlcounter_limit 
  generic map (
    cnt_15_0 => 867,
    cnt_31_16 => 0,
    cnt_47_32 => 0,
    cnt_63_48 => 0,
    core_name0 => "ud_operativa_uart_c_counter_binary_v12_0_i1",
    count_limited => 1,
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => rst_sincrono_net,
    en => en_incr_ciclos_net,
    clk => clk_net,
    ce => ce_net,
    op => contador_cliclos_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ud_operativa_uart_default_clock_driver is
  port (
    ud_operativa_uart_sysclk : in std_logic;
    ud_operativa_uart_sysce : in std_logic;
    ud_operativa_uart_sysclr : in std_logic;
    ud_operativa_uart_clk1 : out std_logic;
    ud_operativa_uart_ce1 : out std_logic
  );
end ud_operativa_uart_default_clock_driver;
architecture structural of ud_operativa_uart_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => ud_operativa_uart_sysclk,
    sysce => ud_operativa_uart_sysce,
    sysclr => ud_operativa_uart_sysclr,
    clk => ud_operativa_uart_clk1,
    ce => ud_operativa_uart_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity ud_operativa_uart is
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
end ud_operativa_uart;
architecture structural of ud_operativa_uart is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "ud_operativa_uart,sysgen_core_2023_2,{,compilation=IP Catalog,block_icon_display=Default,family=artix7,part=xc7a100t,speed=-1,package=csg324,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00018,blackbox2=1,constant=2,counter=2,delay=1,inv=1,logical=1,mcode=2,register=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  ud_operativa_uart_default_clock_driver : entity xil_defaultlib.ud_operativa_uart_default_clock_driver 
  port map (
    ud_operativa_uart_sysclk => clk,
    ud_operativa_uart_sysce => '1',
    ud_operativa_uart_sysclr => '0',
    ud_operativa_uart_clk1 => clk_1_net,
    ud_operativa_uart_ce1 => ce_1_net
  );
  ud_operativa_uart_struct : entity xil_defaultlib.ud_operativa_uart_struct 
  port map (
    en_incr_ciclos => en_incr_ciclos,
    en_incr_contador => en_incr_contador,
    load_bits => load_bits,
    load_salida => load_salida,
    rst_sincrono => rst_sincrono,
    rx_data => rx_data,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    bit_8 => bit_8,
    data => data,
    mitad_pulso => mitad_pulso,
    rx_fe => rx_fe
  );
end structural;
