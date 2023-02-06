f = @(x)(667.38/x)*(1-exp(-(x/68.1)*10))-40;
x0 = input('1st Input : ');
disp(f(x0));
x1 = input('2nd Input : ');
disp(f(x1));
app_err = 9999;
prev_val = 0;
next_val = 0;
x2 = 0;
f_x = 0;
n = 1;



while(app_err > 0.0000005)
prev_val = x2;
x2 = x0 - ((x1 - x0)/(f(x1) - f(x0))*f(x0));
arr(n) = x2;

next_val = x2;
app_err = (next_val - prev_val)/next_val;
app_err = abs(app_err * 100);
arr1(n) = app_err;
n = n+1;
if(f(x1)*f(x2)>0)
    x1 = x2;
else
    x0 = x2;
end

end
disp(x2);
disp(n);
plot(arr);
plot(arr1);

