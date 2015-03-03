
n = 2;
mu = 2;
sigma = 1;
alpha = 0.05;

x = normrnd(mu, sigma, n, 100);

xbar = mean(x);

undre = xbar - norminv(1-alpha/2)*sigma/sqrt(n);
ovre = xbar + norminv(1-alpha/2)*sigma/sqrt(n);

figure(1)
hold on
for k = 1:100
    if ovre(k) < mu
        plot([undre(k) ovre(k)], [k k], 'r')
    elseif undre(k) > mu
        plot([undre(k) ovre(k)], [k k], 'r')
    else
        plot([undre(k) ovre(k)],[k k],'b')
    end
end

b1 = min(xbar - norminv(1 - alpha/2)*sigma/sqrt(n));
b2 = max(xbar + norminv(1 - alpha/2)*sigma/sqrt(n));

axis([b1 b2 0 101])
plot([mu mu],[0 101],'g')
hold off

        
            