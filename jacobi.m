function [x, i] = jacobi(A, b, x0, iter, err)
rows = size(A, 1);
x = x0;
% iz nekog razloga ima veliku gresku, nzm sto
for i = 1:iter
    for r = 1:rows
        x(r) = 1/A(r, r) * (b(r) - A(r, 1 : r-1) * x0(1 : r-1) - A(r, r+1 : end) * x0(r+1 : end));
        
        if abs(x - x0) < err
            return;
        end
        
        x0 = x;        
            
    end
end



end