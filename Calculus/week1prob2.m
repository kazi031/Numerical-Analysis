clc;
clear all;
current_approx = 0;
prev_approx = 0;
approx_err = 0;
val = 0;
term = 0;
x = 1;
ex = 0;
while(term < 12)
    prev_approx = val;
    if(mod(term,2)~= 0)
        val = val - x^ex/factorial(ex);
    else
        val = val +  x^ex/factorial(ex);
    end
    current_approx = val;
    approx_error = (current_approx - prev_approx)/current_approx;
    approx_error = approx_error * 100;
    ex = ex + 2;
    term = term + 1;
end
disp(approx_error);
disp(val);