function [x_0, iter] = parabolMethod(a, x, eps, max_iter)
% zwraca przyblizenie miejsca zerowego funkcji metoda parabol

steps = 0;
while(steps < max_iter)
steps = steps + 1;
f_x = find_cos(a, x);
f_x_prim = find_cos_dw(a, x);
f_x_bis = find_cos_ddw(a, x);

w1 = 1/2 * f_x_bis;
w2 = f_x_prim;
w3 = f_x;

if isnan(w1) || isinf(w1) || isnan(w2) || isinf(w2) || isnan(w3) || isinf(w3)
    x_0 = NaN;
    iter = steps;
    return;
end

r = roots([w1 w2 w3]);

if isempty(r) 
    x_0 = NaN;
    iter = steps;
    return;
end

y = r(1);
if(abs(r(1) - x) > abs(r(2) - x))
    y = r(2);
end
x = x + y;

if(abs(y) < eps)
    x_0 = x;
    iter = steps;
    return;
end

end

x_0 = NaN;
iter = max_iter + 1;
end