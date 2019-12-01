function [xopt, fopt, iter, gnorm, dx] = gradient_descent(f, grad, gamma, tol, x0)
% Kod je kopiran sa sajta!
% Inicijalizacija
gnorm = inf;
x = x0;
iter = 0;
dx = inf;

% 2D koord sistem od -3 do 3 za ordinatu i apscisu
xarray = -3:0.1:3;
[X1, X2] = meshgrid(xarray, xarray);

% Init. y u NaN vrednosti
Y = NaN * ones(size(X1));

% Racunanje vrednosti funkcije za svaku 2D tacku
for i = 1:size(X1, 1)
    for j = 1:size(X1, 2)
        Y(i, j) = f([X1(i, j); X2(i,j)]);
    end
end

% Plotovanje prostora
figure;
surface(X1, X2, Y);
grid on;

% Gradijentni proracun
while gnorm >= tol
    g = grad(x);
    gnorm = norm(g);
    xnew = x - gamma * g;
    
    % Plotovanje kretanja
    hold on;
    plot3([x(1) xnew(1)],[x(2) xnew(2)],[f(x) f(xnew)],'ro-');
    plot3([x(1) xnew(1)],[x(2) xnew(2)],[0 0],'ro-');
    refresh
    
    iter = iter + 1;
    dx = norm(xnew - x);
    x = xnew;
end

xopt = x;
fopt = f(xopt);
iter = iter - 1;


end