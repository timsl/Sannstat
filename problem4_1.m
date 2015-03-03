function [ output_args ] = problem4_1( input_args )

M = 1e3;
N = 5;
mu = 4;
X = exprnd(mu, M, N);
S = cumsum(X, 2);
for k = 1:N
    hist(S(:, k), 30)
    xlabel(num2str(k))
    pause(0.001)
end

end

