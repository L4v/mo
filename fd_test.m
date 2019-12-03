n = 100;
close
%%
% y'' = 12*x.^2, y(0) = 0, y(1) = 0
close
u = @(x)12*x.^2;
v = @(x)0*x;
w = @(x)0*x;
xa = 0; ya = 0;
xb = 1; yb = 0;
[x, y] = fd(u, v, w, xa, xb, ya, yb, n);
plot(x, y);

%%
% y'' + 1/x*y' - y/x.^2 = 0, y(2) = 0.008, y(6.5) = 0.003
close
u = @(x)0*x;
v = @(x)1./x.^2;
w = @(x) -1./x;
xa = 2; ya = 0.008;
xb = 6.5; yb = 0.003;
[x, y] = fd(u, v, w, xa, xb, ya, yb, n);
plot(x, y);
