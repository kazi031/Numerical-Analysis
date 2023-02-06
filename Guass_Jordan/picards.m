clc;
clear all;

syms x y;

fg = @(y) y;

f = fg;

a = 0;
b = 1;
n = 3;

y0 = 1;

h = (b-a)/n;

x0 = 0;
%intigrating f with respect x from x0 to x
%disp(int(f,x,x0,x));
%substituting y by y0
f = y0 + subs(int(f,x,x0,x),y,1);
disp(f);
for j = a : h : b
    fn = subs(f,y,f);
    f = y0 + int(fn,x0,x);
    disp(f);
    ezplot(f,1,5);
    hold on;
end