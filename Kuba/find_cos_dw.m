function [w] = find_cos_dw(factors, z)
%Funkcja oblicza wartość pochodnej funkcji p(x) = sum_{k=0}^n a_k * cos(kx) 
%w punkcie z

% Gdy zrozniczkujemy pojedynczy wyraz szeregu zawartego w funkcji p to otrzymamy: (a_k cos(kt))' = -a_k * k * sin(kt)
% zatem wystarczy pomnozyc kazdy wspolczynik a_k przez k, obliczyc wartosc
% find_sin(a_2, t) gdzie a_2 to nowe wspolczynniki, a nastepnie pomnozyc
% wynik przez -1

if not(iscolumn(factors))
    factors = factors';
end


for i = 0:length(factors)-1
    factors(i+1) = factors(i+1) * i;
end

w = find_sin(factors, z);
w = -w;
end