f = @(x)x^6-x^4-x^3-1;
f1 =@(x)6*x^5-4*x^3-3*x^2;
prev_val = 0;
next_val = 0;
x1 = 0;
x0 = input('1st Input : ');
approx_error = 9999;
n = 1;
while(approx_error > 0.00005)
prev_val = x1;

x1 = x0 - (f(x0)/f1(x0));
x1 = floor(x1*10^6);
x1 = x1/10^6;
arr1(n) = x1/10^6;
next_val = x1;

n = n + 1;
approx_error = (next_val-prev_val)/(next_val);
approx_error = abs(approx_error*100);
arr(n) = approx_error;
x0 = x1;
end
disp(x1/10^6);
disp(n);
plot(arr1);