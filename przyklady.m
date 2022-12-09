% przykłady

factors = 1:20;

f = @(x)find_cos(x, factors);

x_0 = secant(f, 0, 1)
f(x_0)

x_0 = secant(f, -1, 1)
f(x_0)


x_0 = secant(f, -3, 1)
f(x_0)
