function [ output_args ] = problem3( input_args )

    mu = 10;
    N = 1e4;
    y = exprnd(mu, N, 1);
    hist_density(y);
    t = linspace(0, 100, N/10);
    hold on
    plot(t, exppdf(t, mu), 'r')
    hold off

end

