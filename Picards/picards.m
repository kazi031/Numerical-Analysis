clc;
clear all;

syms x y;

fg = @(y)y;
a = 0;
b = 1;
n = 3;
h = (b - a) / n;
x0 = 0;
y0 = 1;
f = y0 + subs((int(fg,x,x0,x)),y,y0);

disp(f);
ezplot(f,1,5);
hold on;
for i = 0 : h : 1
    fn = subs(f,y,f);
    f = y0 + int(fn,x0,x);
    disp(f);
    ezplot(f,1,5);
    hold on;
end