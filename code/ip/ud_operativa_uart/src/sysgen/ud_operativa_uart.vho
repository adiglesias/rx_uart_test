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
