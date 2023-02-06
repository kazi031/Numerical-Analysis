clc;
clear all;
%c = 12.5;
g = 980;
%m = 68.1;
%F = @(t,v) g - c*v/m;
l = 100;
k = 4;
F = @(t,x1)(19.6 * (cos(x1*pi/180) - cos(k*pi/180)))^(1/2);
x0 = 0;
h = 1;
xfinal = 4;
y0 = 0;
[x,y] = ODE1(F,x0,h,xfinal,y0);
disp(x);
disp(y);
plot(x,y);