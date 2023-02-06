clc;
clear all;

n = input('Enter the number of equations you want to solve : ');
for i = 1 : n
   for j = 1 : n + 1
      M(i,j) = input('Enter a number : '); 
   end
end

%disp(M);
temp = zeros(1,n+1);
for i = 1 : n
    for j = 1 : n + 1
        temp(j) = M(i,j)/M(i,i);
    end
    for p = 1 : n + 1
        M(i,p) = temp(p);
    end
end
disp(M);

%gauss jordan method


for i = 1 : n
    for j = 1 : n
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