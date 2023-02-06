clc;

clear all;

x = [3 4 5 6 7];

y = [2.7 6.4 12.5 21.6 34.3];

h = x(2) - x(1);

x_val = 6.5;

n = length(x);

p = (x_val - x(n))/h;

%temp = diff(y , 2)

del_y = zeros(1,n);

for(i = 1 : n-1)
    
    temp = diff( y , i);
    
    del_y(i) = temp(n-i);

end

find_y = y(n);

for (i = 2 : n-1)

    k = p;
    
    product = 1;
    
    for (j = 1 : i-1)
        
        product = product * k;
        
        k = p + j;
    
    end
    
    find_y = find_y + ( product * del_y(i-1) )/factorial(i-1);
end



disp(find_y);




