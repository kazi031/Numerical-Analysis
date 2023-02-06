clc;
clear all;
f = @(x)x^3 - 4*x + 1;
x0 = input('1st input : ');
x1 = input('second input : ');
prev_val = 0;
next_val = 0;
x2 = 0;
approx_error = 9999;
while(approx_error > 0.0005)
    prev_val = x2;
    x2 = x0 - (x1 - x0)*f(x0)/(f(x1) - f(x0));
    next_val = x2;
    approx_error = (next_val - prev_val)/next_val;
    approx_error = abs(approx_error * 100);
    
    if(f(x2)*f(x1) > 0)
        x1 = x2;
    else
        x0 = x2;
    end
    if(f(x2)*f(x0) > 0)
        x0 = x2;
    else
        x1 = x2;
    end
    
end
disp(x2);