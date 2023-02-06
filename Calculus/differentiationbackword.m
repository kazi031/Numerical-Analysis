clc;

clear all;

x = [1 2 3 4 5];

y = [2 5 9 12 20];

len = length(x);

x_at = input('Enter the value in which you want the value of differentiation : ');

h = x(2) - x(1);

p_val = ( x_at - x(len) ) / h ;

for i = 1 : len
    
    if x(i) == x_at || x(i) < x_at && x(i+1) > x_at
        
        x_index = i;
        
    end

end

%disp(x_index);

%if x_index <=  len/2

    new_y = y(1 : x_index);

    diff_y = zeros(1 , x_index - 1);

    for i = 1 : x_index -1
    
        temp = diff(new_y , i);
    
        diff_y(i) = temp(x_index - i);
    end

    disp(diff_y);

    syms p 

    product_p = 1;

    sum = 0;

    for i = 1 : x_index-1
    
        product_p = product_p * (p + ( i - 1 ));
    
        diff_p = diff(product_p , 2);
    
        co_eff = ( diff_p/factorial(i) ) * diff_y(i);
    
        eachTermVal = vpa(subs(co_eff , p , p_val));
    
        sum = sum + eachTermVal ; 

    end

    disp(sum/h*h);


%else
    
%end
