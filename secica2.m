function [x, fx, n] = secica2(fun, x0, x1, tol)

x = x0;
x0 = Inf;

% Pravi izvod
syms f(x2);
f(x2) = fun(x2);
df = diff(f, x2);

% Konvertuje u function handle
df = matlabFunction(df);

dfx1 = feval(df, x1);
n = 0;

while abs(x - x0) > tol
    x0 = x;
    dfx0 = feval(df, x0);
    x = x0 - dfx0 * (x0 - x1) / (dfx0 - dfx1);
    dfx1 = dfx0;
    x1 = x0;
    n = n + 1;
end

fx = feval(fun, x);

end