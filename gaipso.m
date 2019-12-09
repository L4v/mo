close
clear

%% Plot
xrange = linspace(-5, 5, 100);
yrange = linspace(-5, 5, 100);
plot2DFcn(f, xrange, yrange);
%% GA

fitfun = @fitness;
vars = 2;
[x, fval] = ga(fitfun, vars);

%% PSO
[x, fval, exitflag, output] = pso(fitfun, vars);


