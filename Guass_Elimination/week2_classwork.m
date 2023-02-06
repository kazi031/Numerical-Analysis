f_x1 = 1^3 - 1*4 + 1;
x1 = 1;
f_x0 = 0^3 - 4*0 + 1;
x0 = 0;
app_err = 9999;
prev_val = 0;
next_val = 0;
x2 = 0;
f_x = 0;
while(app_err > 0.0005)
 prev_val = x2;
x2 = x0 - ((x1 - x0)/(f_x1 - f_x0))*f_x0;
next_val = x2;

f_x = x2^3 - 4*x2 + 1;


app_err = (next_val - prev_val)/next_val;
app_err = abs(app_err * 100);
if(f_x*f_x1>0)
    x1 = x2;
else
    x0 = x2;
end

end
disp(x2);

