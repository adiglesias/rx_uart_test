# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set VHDL2008Support 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7a100t}
	set DSPFamily {artix7}
	set DSPPackage {csg324}
	set DSPSpeed {-1}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/adiglesias/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {Vitis Model Composer}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {VMC}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {ud_control_uart}
	set IP_Revision {339434731}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {ud_control_uart}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{ud_control_uart_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{ud_control_uart.vhd} -lib {xil_defaultlib}}
		{{ud_control_uart_clock.xdc}}
		{{ud_control_uart.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 0.00018
	set SimulationTime {180210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Users/adiglesias/Desktop/code/ip/ud_control_uart/src}
	set TopLevelModule {ud_control_uart}
	set TopLevelSimulinkHandle 5.00061
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface rx_fe Name {rx_fe}
	dict set TopLevelPortInterface rx_fe Type UFix_1_0
	dict set TopLevelPortInterface rx_fe ArithmeticType xlUnsigned
	dict set TopLevelPortInterface rx_fe BinaryPoint 0
	dict set TopLevelPortInterface rx_fe Width 1
	dict set TopLevelPortInterface rx_fe DatFile {top_uart_ud_control_uart_rx_fe.dat}
	dict set TopLevelPortInterface rx_fe IconText {rx fe}
	dict set TopLevelPortInterface rx_fe Direction in
	dict set TopLevelPortInterface rx_fe Period 1
	dict set TopLevelPortInterface rx_fe Interface 0
	dict set TopLevelPortInterface rx_fe InterfaceName {}
	dict set TopLevelPortInterface rx_fe InterfaceString {DATA}
	dict set TopLevelPortInterface rx_fe ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface rx_fe Locs {}
	dict set TopLevelPortInterface rx_fe IOStandard {}
	dict set TopLevelPortInterface mitad_pulso Name {mitad_pulso}
	dict set TopLevelPortInterface mitad_pulso Type UFix_1_0
	dict set TopLevelPortInterface mitad_pulso ArithmeticType xlUnsigned
	dict set TopLevelPortInterface mitad_pulso BinaryPoint 0
	dict set TopLevelPortInterface mitad_pulso Width 1
	dict set TopLevelPortInterface mitad_pulso DatFile {top_uart_ud_control_uart_mitad_pulso.dat}
	dict set TopLevelPortInterface mitad_pulso IconText {mitad pulso}
	dict set TopLevelPortInterface mitad_pulso Direction in
	dict set TopLevelPortInterface mitad_pulso Period 1
	dict set TopLevelPortInterface mitad_pulso Interface 0
	dict set TopLevelPortInterface mitad_pulso InterfaceName {}
	dict set TopLevelPortInterface mitad_pulso InterfaceString {DATA}
	dict set TopLevelPortInterface mitad_pulso ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface mitad_pulso Locs {}
	dict set TopLevelPortInterface mitad_pulso IOStandard {}
	dict set TopLevelPortInterface bit_8 Name {bit_8}
	dict set TopLevelPortInterface bit_8 Type UFix_1_0
	dict set TopLevelPortInterface bit_8 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface bit_8 BinaryPoint 0
	dict set TopLevelPortInterface bit_8 Width 1
	dict set TopLevelPortInterface bit_8 DatFile {top_uart_ud_control_uart_bit_8.dat}
	dict set TopLevelPortInterface bit_8 IconText {bit 8}
	dict set TopLevelPortInterface bit_8 Direction in
	dict set TopLevelPortInterface bit_8 Period 1
	dict set TopLevelPortInterface bit_8 Interface 0
	dict set TopLevelPortInterface bit_8 InterfaceName {}
	dict set TopLevelPortInterface bit_8 InterfaceString {DATA}
	dict set TopLevelPortInterface bit_8 ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface bit_8 Locs {}
	dict set TopLevelPortInterface bit_8 IOStandard {}
	dict set TopLevelPortInterface en_incr_ciclos Name {en_incr_ciclos}
	dict set TopLevelPortInterface en_incr_ciclos Type Bool
	dict set TopLevelPortInterface en_incr_ciclos ArithmeticType xlUnsigned
	dict set TopLevelPortInterface en_incr_ciclos BinaryPoint 0
	dict set TopLevelPortInterface en_incr_ciclos Width 1
	dict set TopLevelPortInterface en_incr_ciclos DatFile {top_uart_ud_control_uart_en_incr_ciclos.dat}
	dict set TopLevelPortInterface en_incr_ciclos IconText {en incr ciclos}
	dict set TopLevelPortInterface en_incr_ciclos Direction out
	dict set TopLevelPortInterface en_incr_ciclos Period 1
	dict set TopLevelPortInterface en_incr_ciclos Interface 0
	dict set TopLevelPortInterface en_incr_ciclos InterfaceName {}
	dict set TopLevelPortInterface en_incr_ciclos InterfaceString {DATA}
	dict set TopLevelPortInterface en_incr_ciclos ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface en_incr_ciclos Locs {}
	dict set TopLevelPortInterface en_incr_ciclos IOStandard {}
	dict set TopLevelPortInterface en_incr_contador Name {en_incr_contador}
	dict set TopLevelPortInterface en_incr_contador Type Bool
	dict set TopLevelPortInterface en_incr_contador ArithmeticType xlUnsigned
	dict set TopLevelPortInterface en_incr_contador BinaryPoint 0
	dict set TopLevelPortInterface en_incr_contador Width 1
	dict set TopLevelPortInterface en_incr_contador DatFile {top_uart_ud_control_uart_en_incr_contador.dat}
	dict set TopLevelPortInterface en_incr_contador IconText {en incr contador}
	dict set TopLevelPortInterface en_incr_contador Direction out
	dict set TopLevelPortInterface en_incr_contador Period 1
	dict set TopLevelPortInterface en_incr_contador Interface 0
	dict set TopLevelPortInterface en_incr_contador InterfaceName {}
	dict set TopLevelPortInterface en_incr_contador InterfaceString {DATA}
	dict set TopLevelPortInterface en_incr_contador ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface en_incr_contador Locs {}
	dict set TopLevelPortInterface en_incr_contador IOStandard {}
	dict set TopLevelPortInterface estado_actual Name {estado_actual}
	dict set TopLevelPortInterface estado_actual Type UFix_3_0
	dict set TopLevelPortInterface estado_actual ArithmeticType xlUnsigned
	dict set TopLevelPortInterface estado_actual BinaryPoint 0
	dict set TopLevelPortInterface estado_actual Width 3
	dict set TopLevelPortInterface estado_actual DatFile {top_uart_ud_control_uart_estado_actual.dat}
	dict set TopLevelPortInterface estado_actual IconText {estado actual}
	dict set TopLevelPortInterface estado_actual Direction out
	dict set TopLevelPortInterface estado_actual Period 1
	dict set TopLevelPortInterface estado_actual Interface 0
	dict set TopLevelPortInterface estado_actual InterfaceName {}
	dict set TopLevelPortInterface estado_actual InterfaceString {DATA}
	dict set TopLevelPortInterface estado_actual ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface estado_actual Locs {}
	dict set TopLevelPortInterface estado_actual IOStandard {}
	dict set TopLevelPortInterface fin_recepcion Name {fin_recepcion}
	dict set TopLevelPortInterface fin_recepcion Type Bool
	dict set TopLevelPortInterface fin_recepcion ArithmeticType xlUnsigned
	dict set TopLevelPortInterface fin_recepcion BinaryPoint 0
	dict set TopLevelPortInterface fin_recepcion Width 1
	dict set TopLevelPortInterface fin_recepcion DatFile {top_uart_ud_control_uart_fin_recepcion.dat}
	dict set TopLevelPortInterface fin_recepcion IconText {fin recepcion}
	dict set TopLevelPortInterface fin_recepcion Direction out
	dict set TopLevelPortInterface fin_recepcion Period 1
	dict set TopLevelPortInterface fin_recepcion Interface 0
	dict set TopLevelPortInterface fin_recepcion InterfaceName {}
	dict set TopLevelPortInterface fin_recepcion InterfaceString {DATA}
	dict set TopLevelPortInterface fin_recepcion ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface fin_recepcion Locs {}
	dict set TopLevelPortInterface fin_recepcion IOStandard {}
	dict set TopLevelPortInterface load_bit Name {load_bit}
	dict set TopLevelPortInterface load_bit Type Bool
	dict set TopLevelPortInterface load_bit ArithmeticType xlUnsigned
	dict set TopLevelPortInterface load_bit BinaryPoint 0
	dict set TopLevelPortInterface load_bit Width 1
	dict set TopLevelPortInterface load_bit DatFile {top_uart_ud_control_uart_load_bit.dat}
	dict set TopLevelPortInterface load_bit IconText {load bit}
	dict set TopLevelPortInterface load_bit Direction out
	dict set TopLevelPortInterface load_bit Period 1
	dict set TopLevelPortInterface load_bit Interface 0
	dict set TopLevelPortInterface load_bit InterfaceName {}
	dict set TopLevelPortInterface load_bit InterfaceString {DATA}
	dict set TopLevelPortInterface load_bit ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface load_bit Locs {}
	dict set TopLevelPortInterface load_bit IOStandard {}
	dict set TopLevelPortInterface load_salida Name {load_salida}
	dict set TopLevelPortInterface load_salida Type Bool
	dict set TopLevelPortInterface load_salida ArithmeticType xlUnsigned
	dict set TopLevelPortInterface load_salida BinaryPoint 0
	dict set TopLevelPortInterface load_salida Width 1
	dict set TopLevelPortInterface load_salida DatFile {top_uart_ud_control_uart_load_salida.dat}
	dict set TopLevelPortInterface load_salida IconText {load salida}
	dict set TopLevelPortInterface load_salida Direction out
	dict set TopLevelPortInterface load_salida Period 1
	dict set TopLevelPortInterface load_salida Interface 0
	dict set TopLevelPortInterface load_salida InterfaceName {}
	dict set TopLevelPortInterface load_salida InterfaceString {DATA}
	dict set TopLevelPortInterface load_salida ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface load_salida Locs {}
	dict set TopLevelPortInterface load_salida IOStandard {}
	dict set TopLevelPortInterface rst_sincrono Name {rst_sincrono}
	dict set TopLevelPortInterface rst_sincrono Type Bool
	dict set TopLevelPortInterface rst_sincrono ArithmeticType xlUnsigned
	dict set TopLevelPortInterface rst_sincrono BinaryPoint 0
	dict set TopLevelPortInterface rst_sincrono Width 1
	dict set TopLevelPortInterface rst_sincrono DatFile {top_uart_ud_control_uart_rst_sincrono.dat}
	dict set TopLevelPortInterface rst_sincrono IconText {rst sincrono}
	dict set TopLevelPortInterface rst_sincrono Direction out
	dict set TopLevelPortInterface rst_sincrono Period 1
	dict set TopLevelPortInterface rst_sincrono Interface 0
	dict set TopLevelPortInterface rst_sincrono InterfaceName {}
	dict set TopLevelPortInterface rst_sincrono InterfaceString {DATA}
	dict set TopLevelPortInterface rst_sincrono ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface rst_sincrono Locs {}
	dict set TopLevelPortInterface rst_sincrono IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {ud_control_uart}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project