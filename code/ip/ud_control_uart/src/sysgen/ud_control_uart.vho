  sysgen_dut : entity xil_defaultlib.ud_control_uart 
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
