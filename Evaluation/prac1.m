clc;
clear all;


% data points 
x = [1 2 3 4 5];
y = [2 5 9 12 20];

x_at = 1;

h = x(2) - x(1);

p_val = (x_at - x(1)) / h;

len = length(x);

x_index = 1;
for i=1:len
    if(x_at == x(i))
        x_index = i;
        break;
    end
end

%forward difference table

%y(2:4)

new_y = y(x_index:len);

diff_y = zeros(1,len - x_index);

%diff([1 2 3 4 5])

%del_y = diff(y);
%ans 3 4 3 8



for i=1:len - x_index
    temp = diff(new_y,i);
    diff_y(i) = temp(1);
end

disp(diff_y);
%diifferentiation in matlab 

syms p

%p = p*(p-1)
%diff(p)

%First order derivative
%p
%p*(p-1)
%p*(p-1)*(p-2)

product_p = 1;

sum = 0;

for i=1:len-x_index
    
    product_p = product_p * (p-(i-1));
    diff_p = diff(product_p,2);
    
    co_eff = (diff_p / factorial(i))*diff_y(i);
    
    %eachTermVal = subs(co_eff,p,p_val);
    eachTermVal = vpa(subs(co_eff,p,p_val));
    sum = sum + eachTermVal;

end

sum = sum/h*h








