function plot2DFcn(f, xrange, yrange)
    [X, Y] = meshgrid(xrange, yrange);
    Z = NaN * zeros(size(X));
    for xindex = 1:length(xrange)
       for yindex = 1:length(yrange)
          arg = [X(xindex, yindex); Y(xindex, yindex)]; 
          Z(xindex, yindex) = f(arg);
       end
    end
    meshc(X, Y, Z);
end

