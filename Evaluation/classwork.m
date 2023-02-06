clc;
clear all;

x = [3 4 5 6];
y = [2.7 6.4 12.5 21.6];

n = length(x);

%forward difference table

%del_y = diff(y)
%del_sq = diff(del_y);
%diff(del_sq)

diff(y,n-1)
del_y = zeros(1,n);
%o diye allocate korlam jayga
for(i=1:n-1)
    temp = diff(y,i);
    del_y(i) = temp(1);
end
x0 = x(1);
h = x(2) - x(1);
find_x = 3.5;

p = (find_x-x0)/h;

find_y = y(1);

%newton's forward Interpolation

for i=2:n-1
    k = p;
    product = 1;
    
    for(j=1:i-1)
        product = product*k;
        k = p - j;
    end
    find_y = find_y + (product/ factorial(i-1))*del_y(i-1)

end




        

