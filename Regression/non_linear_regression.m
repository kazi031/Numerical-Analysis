clc;
clear all;

x = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
y = [23, 45, 60, 82, 111, 140, 167, 198, 200, 220];

%plot(x,y,'sq');

n = 2;

p = polyfit(x,y,n);

a2 = p(1);
a1 = p(2);
a0 = p(3);

%regression_line = a0 + a1*x + a2*x.^2;

y_model = polyval(p,x);
%disp(y_model);

plot(x,y,'o',x,y_model);