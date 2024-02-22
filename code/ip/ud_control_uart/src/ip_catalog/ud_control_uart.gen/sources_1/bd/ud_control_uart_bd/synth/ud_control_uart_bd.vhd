--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Feb 21 15:25:46 2024
--Host        : GRAD0421 running 64-bit major release  (build 9200)
--Command     : generate_target ud_control_uart_bd.bd
--Design      : ud_control_uart_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ud_control_uart_bd is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ud_control_uart_bd : entity is "ud_control_uart_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ud_control_uart_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ud_control_uart_bd : entity is "ud_control_uart_bd.hwdef";
end ud_control_uart_bd;

architecture STRUCTURE of ud_control_uart_bd is
  component ud_control_uart_bd_ud_control_uart_1_0 is
  port (
    bit_8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    mitad_pulso : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fe : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    en_incr_ciclos : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_incr_contador : out STD_LOGIC_VECTOR ( 0 to 0 );
    estado_actual : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fin_recepcion : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_bit : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_salida : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_sincrono : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ud_control_uart_bd_ud_control_uart_1_0;
  signal bit_8_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal mitad_pulso_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_fe_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_control_uart_1_en_incr_ciclos : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_control_uart_1_en_incr_contador : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_control_uart_1_estado_actual : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ud_control_uart_1_fin_recepcion : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_control_uart_1_load_bit : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_control_uart_1_load_salida : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_control_uart_1_rst_sincrono : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN ud_control_uart_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of bit_8 : signal is "xilinx.com:signal:data:1.0 DATA.BIT_8 DATA";
  attribute X_INTERFACE_PARAMETER of bit_8 : signal is "XIL_INTERFACENAME DATA.BIT_8, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of en_incr_ciclos : signal is "xilinx.com:signal:data:1.0 DATA.EN_INCR_CICLOS DATA";
  attribute X_INTERFACE_PARAMETER of en_incr_ciclos : signal is "XIL_INTERFACENAME DATA.EN_INCR_CICLOS, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of en_incr_contador : signal is "xilinx.com:signal:data:1.0 DATA.EN_INCR_CONTADOR DATA";
  attribute X_INTERFACE_PARAMETER of en_incr_contador : signal is "XIL_INTERFACENAME DATA.EN_INCR_CONTADOR, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of estado_actual : signal is "xilinx.com:signal:data:1.0 DATA.ESTADO_ACTUAL DATA";
  attribute X_INTERFACE_PARAMETER of estado_actual : signal is "XIL_INTERFACENAME DATA.ESTADO_ACTUAL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of fin_recepcion : signal is "xilinx.com:signal:data:1.0 DATA.FIN_RECEPCION DATA";
  attribute X_INTERFACE_PARAMETER of fin_recepcion : signal is "XIL_INTERFACENAME DATA.FIN_RECEPCION, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of load_bit : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_BIT DATA";
  attribute X_INTERFACE_PARAMETER of load_bit : signal is "XIL_INTERFACENAME DATA.LOAD_BIT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of load_salida : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_SALIDA DATA";
  attribute X_INTERFACE_PARAMETER of load_salida : signal is "XIL_INTERFACENAME DATA.LOAD_SALIDA, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of mitad_pulso : signal is "xilinx.com:signal:data:1.0 DATA.MITAD_PULSO DATA";
  attribute X_INTERFACE_PARAMETER of mitad_pulso : signal is "XIL_INTERFACENAME DATA.MITAD_PULSO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rst_sincrono : signal is "xilinx.com:signal:data:1.0 DATA.RST_SINCRONO DATA";
  attribute X_INTERFACE_PARAMETER of rst_sincrono : signal is "XIL_INTERFACENAME DATA.RST_SINCRONO, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of rx_fe : signal is "xilinx.com:signal:data:1.0 DATA.RX_FE DATA";
  attribute X_INTERFACE_PARAMETER of rx_fe : signal is "XIL_INTERFACENAME DATA.RX_FE, LAYERED_METADATA undef";
begin
  bit_8_1(0) <= bit_8(0);
  clk_1 <= clk;
  en_incr_ciclos(0) <= ud_control_uart_1_en_incr_ciclos(0);
  en_incr_contador(0) <= ud_control_uart_1_en_incr_contador(0);
  estado_actual(2 downto 0) <= ud_control_uart_1_estado_actual(2 downto 0);
  fin_recepcion(0) <= ud_control_uart_1_fin_recepcion(0);
  load_bit(0) <= ud_control_uart_1_load_bit(0);
  load_salida(0) <= ud_control_uart_1_load_salida(0);
  mitad_pulso_1(0) <= mitad_pulso(0);
  rst_sincrono(0) <= ud_control_uart_1_rst_sincrono(0);
  rx_fe_1(0) <= rx_fe(0);
ud_control_uart_1: component ud_control_uart_bd_ud_control_uart_1_0
     port map (
      bit_8(0) => bit_8_1(0),
      clk => clk_1,
      en_incr_ciclos(0) => ud_control_uart_1_en_incr_ciclos(0),
      en_incr_contador(0) => ud_control_uart_1_en_incr_contador(0),
      estado_actual(2 downto 0) => ud_control_uart_1_estado_actual(2 downto 0),
      fin_recepcion(0) => ud_control_uart_1_fin_recepcion(0),
      load_bit(0) => ud_control_uart_1_load_bit(0),
      load_salida(0) => ud_control_uart_1_load_salida(0),
      mitad_pulso(0) => mitad_pulso_1(0),
      rst_sincrono(0) => ud_control_uart_1_rst_sincrono(0),
      rx_fe(0) => rx_fe_1(0)
    );
end STRUCTURE;
