function [x, f, it] = Powell(fun, x0, epsilon)
% NE RADI
n = length(x0);
u = eye(n);
x = x0;
x1 = x0 + 2 * epsilon;
it = 0;

while max(abs(x-x1)) > epsilon
    it = it + 1;
    ti = x;
    for i = 1:n
        syms a;
        dfx1 = matlabFunction(diff(fun, a));
        theta = secica3(fun, dfx1, u(:,i), ti, epsilon);
        ti = ti + theta(1)*u(:, i);
    end
    u = [u(:, 2:n), ti-x];
    x1 = x;
    syms b;
    dfx2 = matlabFunction(diff(fun, b));
    theta = secica3(fun, dfx2, u(:, n), ti, epsilon);
    x = ti + theta(2)*u(:, n);
end
f = feval(fun, x(1), x(2));
end