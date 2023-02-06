x1 = 2;
f_x1 = x1*log10(x1) - 1.2;
disp(f_x1);
x0 = 3;
f_x0 = x0*log10(x0) - 1.2;
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
next_val = x2;

f_x = x2*log10(x2) - 1.2;


app_err = (next_val - prev_val)/next_val;
app_err = abs(app_err * 100);
arr(n) = app_err;
n = n + 1;
if(f_x*f_x1>0)
    x1 = x2;
else
    x0 = x2;
end

end
disp(x2);
plot(arr);