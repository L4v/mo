function [x, fx, n] = newton2(fun, a, tol)

% Nalazi prvi izvod
syms f(x1);
f(x1) = fun(x1);
dfun = diff(f, x1);
d2fun = diff(dfun, x1);

% Konvertuje u function handle
dfun = matlabFunction(dfun);
d2fun = matlabFunction(d2fun);

x = Inf;
n = 0;
while abs(x - a) > tol
   x = a;
   a = x - feval(dfun, x) / feval(d2fun, x);
   n = n + 1;    
end

x = a;
fx = feval(fun, x);

end