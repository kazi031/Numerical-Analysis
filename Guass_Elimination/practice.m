clear all;
clc;
f = @(x)x^2-5*x+4;
f1 =@(x)2*x-5;
prev_val = 0;
next_val = 0;
x1 = 0;
x0 = 5;
approx_error = 9999;
while(approx_error > 0.00005)
prev_val = x1;
x1 = x0 - (f(x0)/f1(x0));
disp(x1);
next_val = x1;
approx_error = (next_val-prev_val)/(next_val);
approx_error = abs(approx_error*100);
x0 = x1;
end
disp(x1);