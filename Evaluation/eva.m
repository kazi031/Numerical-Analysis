clc;
clear all;

x = [1 2 3 4 5];
y = [2 5 9 12 20];

n = length(x);

diff(y,n-1)
del_y = zeros(1,n);
c = n - 1;
for(i=1:n-1)
    temp = diff(y,i);
    del_y(i) = temp(c);
    c = c - 1;
end
x0 = x(1);
h = x(2) - x(1);
find_x = 3.5;

p = (find_x-x(n))/h;

find_y = y(n);
for i=2:n
    k = p;
    product = 1;
    
    for(j=1:i-1)
        product = product*k;
        k = p + j;
    end
    find_y = find_y + (product/ factorial(i-1))*del_y(i-1);

end

disp(find_y);