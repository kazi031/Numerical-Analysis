current_approx = 0;
previous_approx = 0;
app_err = 9999;
toler_err = 0.05;
n = 0;
val = 0;
while(app_err>0.05)

    previous_approx = val;
    val = val + .5^n/factorial(n);
    current_approx = val;
    app_err = (current_approx - previous_approx)/current_approx;
    app_err = app_err * 100;
    n = n + 1;
end
disp(n);
    