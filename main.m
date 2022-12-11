a = [1 2 3 4 5 6];
x = -2 + 5i; % dobieramy przyblizenie poczatkowe

while(true)

f_x = find_cos(a, x);
f_x_prim = find_cos_dw(a, x);
f_x_bis = find_cos_ddw(a, x);
% f_x = goertzelCos(a, x);
% f_x_prim = goertzelCosDerivative(a, x);
% f_x_bis = goertzelCos2ndDerivative(a, x);

delta = f_x_prim ^ 2 - 2 * f_x * f_x_bis;
delta_sqrt = sqrt(delta);

y_0 = (-f_x_prim - delta_sqrt) / f_x_bis;
y_1 = (-f_x_prim + delta_sqrt) / f_x_bis;

y = y_0;
if(abs(y_0 - x) > abs(y_1 - x))
    y = y_1;
end
x = x + y;

if(abs(y) < 0.01)
    break
end

end

disp(x)