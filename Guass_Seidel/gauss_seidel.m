clc;
clear all;
%A = input('Enter any matrix  :');
A = [25,5,1,106.8;64,8,1,177.2;144,12,1,279.2];
[r,c] = size(A);
temp = zeros(1,r);
for i = 1 : r
    max = 0;
    for j = 1 : r
        if abs(A(i,j)) > max
            max = abs(A(i,j));
            temp(i) = j;
        end
    end
end

disp(temp);

%pivoting

for i = 1 : r
    if temp(i) ~= i
        tempr = A(i,:);
        A(i,:) = A(temp(i),:);
        A(temp(i),:) = tempr;
        tempo = temp(i);
        temp(i) = i;
        temp(tempo) = tempo;
    end

end

disp(temp);
disp(A);

%gauss-seidel method
x = [1 2 4];
app_err = 9999;
while app_err > 0.0005
    prev_app = x(1);
    for i = 1 : 3
        x(i) = A(i,4);
        for j = 1 : 3
            if j~=i
                x(i) = x(i) - A(i,j) * x(j) ;
            end
        end
        x(i) = x(i) / A(i,i);
        next_app = x(1);
    end
    app_err = (next_app - prev_app)/next_app;
    app_err = abs(app_err*100);
end
disp(x);