a = [1 2 3 4 5 6];
x = 2 + 1i; % dobieramy przyblizenie poczatkowe

% disp(x)

while(true)
 
f_x = goertzelCos(a, x);
f_x_prim = goertzelCosDerivative(a, x);
f_x_bis = goertzelCos2ndDerivative(a, x);
% f_x = x^3 + 2*x^2 + 3*x + 5;
% f_x_prim = 3*x^2 + 4*x + 3;
% f_x_bis = 6*x + 4;

disp(f_x);
disp(f_x_prim);
disp(f_x_bis);

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