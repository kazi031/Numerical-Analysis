clc;
clear all;
x = [2 ; 3 ; 2 ; 3];
y = [4 ; 6 ; 6 ; 8];
plot(x,y,'sq');
%disp(x);
%disp(y);
n = 1;
p = polyfit(x,y,n);
disp(p);
a1 = p(1);
a0 = p(2);
regression_line = a0 + a1 * x;

plot(x,y,'o',x,regression_line);