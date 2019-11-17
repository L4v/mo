function [x, fx] = fibonaccimethod(f, a, b, tol, minflag)

n = 1;
while fibonacci(n) <= ((b-1) / tol)
    n = n + 1;
end

%x1 = a + (fibonacci(n - 2) / fibonacci(n)) * (b - a);
%x2 = a + b - x1;
x1 = a + (fibonacci(n-2) / fibonacci(n)) * (b - a);
x2 = a + (fibonacci(n-1) / fibonacci(n)) * (b - a);

f1 = feval(f, x1);
f2 = feval(f, x2);

    function Left
       b = x2;
       x2 = x1;
       f2 = f1;
       x1 = a + b - x2;
       f1 = feval(f, x1);
    end

    function Right
       a = x1;
       x1 = x2;
       f1 = f2;
       x2 = a + b - x1;
       f2 = feval(f, x2);
    end

for k = 2 : n
    if(minflag ~= 0)
       if f1 <= f2  
          Left;
       else
           Right;
       end

       if f1 <= f2
          x = x1;
          fx = f1;
       else
           x = x2;
           fx = f2;
       end
       
    else
        
       if f1 >= f2
           Left;
       else
           Right
       end
       if f1 >= f2
           x = x1;
           fx = f1;
       else
          x = x2;
          fx = f2;
       end
    end
end

end