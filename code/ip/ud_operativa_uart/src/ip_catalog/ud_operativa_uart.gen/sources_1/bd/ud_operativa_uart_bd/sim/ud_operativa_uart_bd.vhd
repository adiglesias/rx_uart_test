--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Feb 21 15:26:28 2024
--Host        : GRAD0421 running 64-bit major release  (build 9200)
--Command     : generate_target ud_operativa_uart_bd.bd
--Design      : ud_operativa_uart_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ud_operativa_uart_bd is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ud_operativa_uart_bd : entity is "ud_operativa_uart_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ud_operativa_uart_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ud_operativa_uart_bd : entity is "ud_operativa_uart_bd.hwdef";
end ud_operativa_uart_bd;

architecture STRUCTURE of ud_operativa_uart_bd is
  component ud_operativa_uart_bd_ud_operativa_uart_1_0 is
  port (
    en_incr_ciclos : in STD_LOGIC_VECTOR ( 0 to 0 );
    en_incr_contador : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_bits : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_salida : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_sincrono : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    bit_8 : out STD_LOGIC_VECTOR ( 0 to 0 );
    data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mitad_pulso : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fe : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ud_operativa_uart_bd_ud_operativa_uart_1_0;
  signal clk_1 : STD_LOGIC;
  signal en_incr_ciclos_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal en_incr_contador_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal load_bits_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal load_salida_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_sincrono_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_data_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_operativa_uart_1_bit_8 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_operativa_uart_1_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ud_operativa_uart_1_mitad_pulso : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ud_operativa_uart_1_rx_fe : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN ud_operativa_uart_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of bit_8 : signal is "xilinx.com:signal:data:1.0 DATA.BIT_8 DATA";
  attribute X_INTERFACE_PARAMETER of bit_8 : signal is "XIL_INTERFACENAME DATA.BIT_8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of data : signal is "xilinx.com:signal:data:1.0 DATA.DATA DATA";
  attribute X_INTERFACE_PARAMETER of data : signal is "XIL_INTERFACENAME DATA.DATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of en_incr_ciclos : signal is "xilinx.com:signal:data:1.0 DATA.EN_INCR_CICLOS DATA";
  attribute X_INTERFACE_PARAMETER of en_incr_ciclos : signal is "XIL_INTERFACENAME DATA.EN_INCR_CICLOS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of en_incr_contador : signal is "xilinx.com:signal:data:1.0 DATA.EN_INCR_CONTADOR DATA";
  attribute X_INTERFACE_PARAMETER of en_incr_contador : signal is "XIL_INTERFACENAME DATA.EN_INCR_CONTADOR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of load_bits : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_BITS DATA";
  attribute X_INTERFACE_PARAMETER of load_bits : signal is "XIL_INTERFACENAME DATA.LOAD_BITS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of load_salida : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_SALIDA DATA";
  attribute X_INTERFACE_PARAMETER of load_salida : signal is "XIL_INTERFACENAME DATA.LOAD_SALIDA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of mitad_pulso : signal is "xilinx.com:signal:data:1.0 DATA.MITAD_PULSO DATA";
  attribute X_INTERFACE_PARAMETER of mitad_pulso : signal is "XIL_INTERFACENAME DATA.MITAD_PULSO, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of rst_sincrono : signal is "xilinx.com:signal:data:1.0 DATA.RST_SINCRONO DATA";
  attribute X_INTERFACE_PARAMETER of rst_sincrono : signal is "XIL_INTERFACENAME DATA.RST_SINCRONO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rx_data : signal is "xilinx.com:signal:data:1.0 DATA.RX_DATA DATA";
  attribute X_INTERFACE_PARAMETER of rx_data : signal is "XIL_INTERFACENAME DATA.RX_DATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rx_fe : signal is "xilinx.com:signal:data:1.0 DATA.RX_FE DATA";
  attribute X_INTERFACE_PARAMETER of rx_fe : signal is "XIL_INTERFACENAME DATA.RX_FE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  bit_8(0) <= ud_operativa_uart_1_bit_8(0);
  clk_1 <= clk;
  data(7 downto 0) <= ud_operativa_uart_1_data(7 downto 0);
  en_incr_ciclos_1(0) <= en_incr_ciclos(0);
  en_incr_contador_1(0) <= en_incr_contador(0);
  load_bits_1(0) <= load_bits(0);
  load_salida_1(0) <= load_salida(0);
  mitad_pulso(0) <= ud_operativa_uart_1_mitad_pulso(0);
  rst_sincrono_1(0) <= rst_sincrono(0);
  rx_data_1(0) <= rx_data(0);
  rx_fe(0) <= ud_operativa_uart_1_rx_fe(0);
ud_operativa_uart_1: component ud_operativa_uart_bd_ud_operativa_uart_1_0
     port map (
      bit_8(0) => ud_operativa_uart_1_bit_8(0),
      clk => clk_1,
      data(7 downto 0) => ud_operativa_uart_1_data(7 downto 0),
      en_incr_ciclos(0) => en_incr_ciclos_1(0),
      en_incr_contador(0) => en_incr_contador_1(0),
      load_bits(0) => load_bits_1(0),
      load_salida(0) => load_salida_1(0),
      mitad_pulso(0) => ud_operativa_uart_1_mitad_pulso(0),
      rst_sincrono(0) => rst_sincrono_1(0),
      rx_data(0) => rx_data_1(0),
      rx_fe(0) => ud_operativa_uart_1_rx_fe(0)
    );
end STRUCTURE;
