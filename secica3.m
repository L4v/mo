function [x, fx, n] = secica3(f, df, x0, x1, tol)

x = x0;
x0 = Inf;

dfx1 = feval(df, x1(1), x1(2));
n = 0;

while abs(x - x0) > tol
    x0 = x;
    dfx0 = feval(df, x0(1), x0(2));
    x = x0 - dfx0 * (x0 - x1) / (dfx0 - dfx1);
    dfx1 = dfx0;
    x1 = x0;
    n = n + 1;
end

fx = feval(f, x(1), x(2));

end