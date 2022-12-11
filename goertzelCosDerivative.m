function [result] = goertzelCosDerivative(a,t)
% jak zrozniczkujemy wyraz szeregu to otrzymamy: (a_k cos(kt))' = -a_k * k * sin(kt)
% zatem wystarczy pomnozyc kazdy wspolczynik a_k przez k, obliczyc wartosc
% goertzelSin(a_2, t) gdzie a_2 to nowe wspolcznyniki, a nastepnie pomnozyc
% wynik przez -1

for i = 0:length(a)-1
    a(i+1) = a(i+1) * i;
end


z = cos(t) + 1i * sin(t);
goertzelSin = imag(goertzelPolynomial(a, z));

result = -goertzelSin;
end