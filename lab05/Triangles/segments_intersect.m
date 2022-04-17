function res = segments_intersect(a, b, c, d)
 area = @(x1, x2, x3) (x2(1) - x1(1)) * (x3(2) - x1(2)) - (x2(2) - x1(2)) * (x3(1) - x1(1));   
 intersect = @(x, y) max(x(1), y(1)) <= min(x(2), y(2));
 
 res = intersect(sort([a(1), b(1)]), sort([c(1), d(1)])) ...
    && intersect(sort([a(2), b(2)]), sort([c(2), d(2)])) ...
    && area(a, b, c) * area(a, b, d) <= 0 ...
    && area(c, d, a) * area(c, d, b) <= 0;

end

