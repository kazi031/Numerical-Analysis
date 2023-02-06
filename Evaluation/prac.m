clc;
clear all;

a = input('Lower Limit : ');
b = input('upper Limit : ');


h = input('Step Size : ');


n = (b - a) / h;
disp(n);


f = @(x)exp(-x);

x = zeros(1,n);
y = zeros(1,n);

x(1) = a;
y(1) = f(x(1));
for i=2:n
    x(i) = x(i-1) + h;
    y(i) = f(x(i));
end


I = (h/3) * (y(1)+y(n));
product = 0;
product1 = 0;
for i=2:2:n-1
    product = product + y(i);
    if i<n-2
    product1 = product1 + y(i+1);
    end
end
I = I + (h/3)*4*product + 2*product1;
disp(I);




