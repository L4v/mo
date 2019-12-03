function [x, y] = fd(u, v, w, xa, xb, ya, yb, n)

% primer poziva za y'' = 12x^2, y(0) = 0, y(1) = 0:
% u = @(x) 12*x.^2; v = @(x) 0.*x; w = @(x) 0.*x; 
% xa = 0; ya = 0; xb = 1; yb = 1; n = 100;
% [x, y] = fd(u, v, w, xa, xb, ya, yb, n);
% plot(x, y);

% eq: y(x)'' = u(x) + v(x).*y(x) + w(x).*y'(x)

% u, v, w matrice, mozda f-handle?

%  v >= 0 i h <= 2/max_x(|w(x)|)

% a = 1 + h/2 * w
% d = -2 - h^2 * v
% c = 1 - h/2 * w
% e = h^2 * u
% resava Ay = b -> y = A\b


h = (xb - xa) / n;
i = 0:n;
x = xa + i * h;
x(1) = xa;
x(end) = xb;

% Ako su w, u i v prosledjeni kao vektori adekvatnih duzina
%a = 1 + h/2 .* w;
%d = -2 - h^2 .* v;
%c = 1 - h/2 .* w;
%e = h^2 .* u;

% Problem ovde je sto ako je v, w ili u = const onda
% se treba zapisati kao f = @(x) 0.*x + const, gde je f = v, w ili y
% ako se zapise kao f = @(x) const onda matlab f(x) svede na skalar
a = 1 + h/2 .* w(x);
d = -2 - h^2 .* v(x);
c = 1 - h/2 .* w(x);
e = h^2 .* u(x);

% tridijagonalna matrica A
A = zeros(n-1) + diag(d(1:n-1)) + diag(a(2:n-1), -1) + diag(c(1:n-2), 1)

% b vektor
b = zeros(n-1, 1);
b(1) = e(1) - a(1) * ya;
b(n-1) = e(n-1) - c(n-1) * yb;
b(2:n-2) = e(2:n-2);

% inicijalna pogadjanja ako se koristi gauss-seidel ili jacobi
x0 = zeros(n-1, 1);
x0(:) = xa;

% y - vektor resenja, prva i poslednja vrednost su ya i yb
y = zeros(n+1, 1);
y(1) = ya;
y(end) = yb;

y(2:n) = gs(A, b, x0, 10^-5);%A\b;
end