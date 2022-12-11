% test

factors = 1:6;
x = 2+8i; % dobieramy przyblizenie poczatkowe x_0
d1 = 10^(-10);
limit_iter = 30;
iter = 0;
success = 1;

while(true)
 
f_x = find_cos(factors, x);
f_x_der = find_cos_derivative(factors, x);

disp(f_x);
disp(f_x_der);

x_prev = x;
x = x-(f_x/f_x_der);

iter = iter + 1;

if(abs(x - x_prev) < d1)
    break
end

if(iter==limit_iter)
    success = 0;
    break
end

end

if (success==1)
    disp("Miejsce zerowe: ");
    disp(x);
    disp(find_cos(factors, x));
elseif (success==0)
    disp("Metoda rozbieżna dla podanego x_0");
end 
