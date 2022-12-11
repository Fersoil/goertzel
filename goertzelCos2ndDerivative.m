function [result] = goertzelCos2ndDerivative(a,t)
% jak zrozniczkujemy wyraz szeregu to otrzymamy: (a_k cos(kt))' = -a_k * k  * k * cos(kt)
% zatem wystarczy pomnozyc kazdy wspolczynik a_k przez k^2, obliczyc wartosc
% goertzelCos(a_2, t) gdzie a_2 to nowe wspolczynniki, a nastepnie pomnozyc
% wynik przez -1

for i = 0:length(a)-1
    a(i+1) = a(i+1) * i * i;
end


temp = goertzelCos(a, t);

result = -temp;
end