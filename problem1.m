function [] = problem1()

    dx = 0.1;
    x = 0:dx:15;
    mu = 1;
    y = exppdf(x, mu);
    lambda = 0.4267;
    f=(lambda*exp(-x/lambda)+lambda./x).*(x>=1&x<=10);
    plot(x,f, x, y)

end

