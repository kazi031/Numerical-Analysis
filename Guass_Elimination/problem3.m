f = @(x)x-exp(-x);
f1 =@(x1)1+exp(-x1);
prev_val = 0;
next_val = 0;
x1 = 0;
x0 = 2;
approx_error = 9999;
n = 1;
while(approx_error > 0.00005)
prev_val = x1;
x1 = x0 - (f(x0)/f1(x0));
next_val = x1;
arr(n) = x1;
n = n + 1;
approx_error = (next_val-prev_val)/(next_val);
approx_error = abs(approx_error*100);
x0 = x1;
end
disp(x1);
plot(arr);