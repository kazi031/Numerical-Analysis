clear all;
clc;

g = 980;
l = 100;

k = 4;

F = @(t,x1)(19.6 * (cos(x1*pi/180) - cos(k*pi/180)))^(1/2);

x0 = 0;

x_final = 4;

h = 1;

y0 = 0;

[x,y] = ODE(F,x0,h,x_final,y0);

disp(x);
disp(y);
plot(x,y,'sq');