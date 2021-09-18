clc, clear

%%Solucion por metodo grafico
m = 80; %68.1
g = 9.81;
t = 10;
v = 40;
c = 2:0.1:50;

f_c = factor_c(c,m,g,t,v);



%Solucion por metodo de biseccion
x1 = 2;
x2 = 50;
error_minimo = 0.001;

[fc_bi, er,x_r] = metodo_biseccion(x1,x2,m,g,t,v,error_minimo);
disp('Biseccion');
disp(fc_bi)
disp(er)
disp('Falsa posicion');

%Solucion por metodo de falsa posicion
[fc_bi2, er2,x_r2] = metodo_falsa_posicion(x1,x2,m,g,t,v,error_minimo);
disp(fc_bi2)
disp(er2)

plot(c,f_c)
grid on
hold on
plot(x_r,factor_c(x_r,m,g,t,v))