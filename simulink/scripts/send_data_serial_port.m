%% PERMITE RECIBIR DATOS EN LA FPGA ENVIADOS DESDE MATLAB
% Configuración del puerto serie, en función del COM establecido por el driver
Port='COM4'; 
FPGA_COM=serial(Port,'BaudRate',115200); %Fijamos 115200 baudios
set(FPGA_COM,'StopBits',1);% 1 bit de STOP y no hay bit de paridad
fopen(FPGA_COM);

%load('Signal.mat');
%Senal = Signal;

 % for i=1:1:size(Senal,2)
 %    fwrite(FPGA_COM,Senal(i),'uchar'); %Escribe el número decimal como un número de 8 bits sin signo
 % end

fwrite(FPGA_COM,107,'uchar'); %Escribe el número decimal como un número de 8 bits sin signo

fclose(FPGA_COM);