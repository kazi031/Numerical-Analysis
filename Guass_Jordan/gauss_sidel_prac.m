clc;
clear all;
n = input('enter the number of equations you want to solve : ');
for i = 1 : n
    for j = 1 : n+1
        A(i,j) = input('Enter a number : ');
    end
    disp('end of row no. ');
    disp(i);
end

disp(A);

%pivoting

[r,c] = size(A);
disp(r);

temp = zeros(1,r);

for i = 1 : r
    max = 0;
    for j = 1 : r
        if A(i,j) > max
            max = A(i,j)
            temp(i) = j;
        end
    end
end

disp(temp);

for i = 1 : r
    if temp(i) ~= i && temp(i) > i
        tempr = A(i,:);
        A(i,:) = A(temp(i),:);
        A(temp(i),:) = tempr;
    end
end

disp(A);

%gauss sidel 

x = zeros(1,n);

for i = 1 : n
    x(i) = input('initial guess : ');
end
app_error = 9999;
while app_error > 0.0005
for i = 1 : r
   prev = x(i);
   x(i) = A(i,r+1);
   for j = 1 : r
       if i ~= j
        x(i) = x(i) - x(j)*A(i,j);
       end
   end
   x(i) = x(i)/A(i,i);
   next = x(i);
   app_error = (next - prev)/next;
   app_error = abs(app_error*100);
end
end

disp(x);