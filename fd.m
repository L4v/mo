function y = fd(u, v, w, xa, xb, ya, yb, n)
% eq: y(x)'' = u(x) + v(x).*y(x) + w(x).*y'(x)

% u, v, w matrice, mozda f-handle?

%  v >= 0 i h <= 2/max_x(|w(x)|)

% a = -1 - h/2 * w
% d = 2 + h^2 * v
% c = -1 + h/2 * w
% e = -h^2 * u
% resava Ay = b

h = (xb - xa) / n

% pretpostavlja se da su prosledjene u,v,w dobre velicine
a = -1 -h/2 * w;
d = 2 + h^2 * v;
c = -1 + h/2 * w;
e = -h^2 * u;

% tridijagonalna matrica A
A = zeros(n-1) + diag(d) + diag(a(2:end), -1) + diag(c(1:end-1), 1)
b = zeros(n-1, 1);
b(1) = e(1) - a(1) * ya;
b(n-1) = b(n-1) - c(n-1) * yb;
b
x0 = zeros(n-1, 1);
x0(:) = xa
% pocetno pogadjanje a?
% resavanje preko jakobija
y = jacobi(A, b, x0, 100, 10^-5);
end