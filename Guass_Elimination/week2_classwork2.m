x1 = 1;
f_x1 = 3*x1 + sin(x1) - exp(x1);
disp(f_x1);
x0 = 0;
f_x0 = 3*x0 + sin(x0) - exp(x0);
disp(f_x0);

app_err = 9999;
prev_val = 0;
next_val = 0;
x2 = 0;
f_x = 0;
n = 1;
while(app_err > 0.0005)
 prev_val = x2;
x2 = x0 - ((x1 - x0)/(f_x1 - f_x0))*f_x0;
arr(n) = x2;
n = n+1;
next_val = x2;

f_x = 3*x2 + sin(x2) - exp(x2);


app_err = (next_val - prev_val)/next_val;
app_err = abs(app_err * 100);
arr1(n) = app_err;
if(f_x*f_x0>0)
    x0 = x2;
else
    x1 = x2;
end

end
disp(x2);
plot(arr);
plot(arr1);