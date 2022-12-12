function [] = graphFunc(func, label, a, b, n)
%graphFunc Funkcja rysuje wykres zadanej funkcji w danym przedziale (a,b)

if nargin == 1
    label = "y=f(x)";
end

if nargin <= 2
    a = -pi;
    b = pi;
end

if nargin < 5
    n = 1000;
end

if a>b % jezeli przedzial jest podany odwrotnie
    p=b;
    b=a;
    a=p;
end

x = linspace(a,b,n);
y = zeros(n, 1);

hold on
% rysujemy zero
plot(x, y, "k")

for i = 1:n
    y(i) = func(x(i));
end



plot(x,y, "b");

xlim([a,b]);
grid on

%ylim([min(y), max(y)]);
legend("",label)
title("Wykres funkcji")

xlabel("x")
ylabel("y")


end