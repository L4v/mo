function [x, fx] = goldenratio(f, a, b, tol, minflag)

c = (3 - sqrt(5)) / 2;

x1 = a + c * (b - a);
x2 = a + b - x1;

f1 = feval(f, x1);
f2 = feval(f, x2);

    function Left
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + c * (b - a);
        f1 = feval(f, x1);
    end

    function Right
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = b - c * (b - a);
        f2 = feval(f, x2);
    end

while (b - a) > tol
   if minflag ~= 0 
      
       if f1 <= f2
          Left;
       else
          Right;
       end
       if f1 < f2
          fx = f1;
          x = x1;
       else
           fx = f2;
           x = x2;
       end
   else
       
       if f1 >= f2
          Left;
       else
           Right;
       end
       if f1 > f2
           fx = f1;
           x = x1;
       else
           fx = f2;
           x = x2;
       end
   end
end

end