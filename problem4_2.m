
N = 1e5;

X = exprnd(1/4, N, 1);
Y = normrnd(0, 1, N, 1);
Z = exp(X).^(cos(Y));
plot(Z)
mean(Z)