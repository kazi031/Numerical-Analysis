clc;
clear all;
M = [6 -2 1 11;1 2 -5 -1;-2 7 2 5];
temp = zeros(1 , length(M));
for i = 1 : 3
    for k = 1 : 4
       temp(k) = M(i,k)/M(i,i); 
    end
    for p = 1 : 4
        M(i,p) = temp(p);
    end
end
%disp(M);
N = length(M)-1;
count = 0;
for i = 1 : N
    for j = 1 : N
        if(j ~= i)
            for k =1 : length(M)
                %M(i,k) = M(i,k)/M(i,i);
                temp(k) = M(j,k) - (M(i,k)/M(i,i))*M(j,i);
            end
            for p = 1 : 4
                M(j,p) = temp(p);
            end
        end 
    end
end
disp(M);
for i = 1 : N
    flag = M(i,length(M))/M(i,i);
    disp(flag);
end


