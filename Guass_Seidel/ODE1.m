function [xOut,yOut] = ODE1(F,x0,h,xfinal,y0)
   % xOut = zeros(1,size);
   % yOut = zeros(1,size);
    j = 1;
    for i = x0 : h : xfinal 
        if j == 1
          xOut(j) = x0;
          yOut(j) = y0;
          j = j + 1;
        else
          x0 = x0 + h;
          xOut(j)= x0;
          yOut(j) = yOut(j-1) + h * F(xOut(j-1),yOut(j-1));
          j = j + 1;
        end
    end

end