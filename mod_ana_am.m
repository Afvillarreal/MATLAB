clc, clear all, close all

%Modulacion en AM
%----- DATA IN ------

%datos analogos
Ax = 2;     %amplitud
fx = 3400;  %frecuencia
cpx = 2; % cantidad de periodos de x

%carrier (portador)
Ac = 10;     %amplitud
fc = 1000e3;  %frecuencia
cpc = 10; % cantidad de periodos de c

%modulacion AM
m = 0.4; % al valor de m esta entre 0 y 1 y mayor a 0


%----- PROCCES ------

%carrier
%T = 1/f; periodo igual que cpc/fc 
tc = linspace(0,cpc/fc,500);
carrier = Ac*sin(2*pi*fc*tc);

%datos analogos
tx = linspace(0,cpx/fx,500);
xt = Ax*sin(2*pi*fx*tx);

%modulacion AM
Am = (1+ m*xt).*carrier; %xt y carrier son vectores, (.*)es una multiplicacion entre matrices punto a punto

%----- OUTPUD ------
figure(1)
subplot(3,1,1), plot(tc,carrier), title('carrier')
subplot(3,1,2), plot(tx,xt), title('datos analogicos')
subplot(3,1,3), plot (tc,Am), title('señal AM')