x = [1 2 3 4 5 6 7];
y = [2 5 10 17 26 37 50];
h = x(2)-x(1);
n = length(x);
I = (h/3) * (y(1)+y(n));
product = 0;
product1 = 0;
for i=2:2:n-1
    product = product + y(i);
    if i<n-2
    product1 = product1 + y(i+1);
    end
end
I = I + (h/3)*4*product + 2*(h/3)*product1;
disp(I);