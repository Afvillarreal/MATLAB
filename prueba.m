A= 10;
f=3200;
cantper = 2;
n=500;

%------PROCESS--------
T=1/f;
t = linspace(0,cantper*T,500);

cuadrada=0;

for indica=1:2:(n*2-1)
    cuadrada= cuadrada+(A/indica) * sin(2 * pi * (indica * f) * t);
end

plot(t,cuadrada);