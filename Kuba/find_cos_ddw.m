function [w] = find_cos_ddw(factors, z)
%Funkcja oblicza wartość drugiej pochodnej funkcji p(x) = sum_{k=0}^n a_k * cos(kx) 
%w punkcie z

% Gdy zrozniczkujemy dwukrotnie pojedynczy wyraz szeregu z funkcji p to 
% otrzymamy: (a_k cos(kt))" = -a_k * k  * k * cos(kt)
% zatem wystarczy pomnozyc kazdy wspolczynik a_k przez k^2, obliczyc wartosc
% findCos(a_2, t) gdzie a_2 to nowe wspolczynniki, a nastepnie pomnozyc
% wynik przez -1

for i = 0:length(factors)-1
    factors(i+1) = factors(i+1) * i * i;
end

w = -find_cos(factors, z);
end