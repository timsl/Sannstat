load wave_data.mat
subplot(211), plot(y(1:100))
subplot(212), hist_density(y)

my_est = sqrt(mean(y.^2)/2) % Skriv in din MLskattning har
% my_est = mean(y)/sqrt(pi/2) % MK

n = length(y)
s = sqrt(sum((y - mean(y)).^2)/(n-1));
d = s/sqrt(n);
lower_bound = my_est - 1.96*d
upper_bound = my_est + 1.96*d

hold on;
range = 0:0.1:6;
plot(lower_bound, 0, 'g*');
plot(upper_bound, 0, 'b*');
plot(range, raylpdf(range, my_est), 'r');
hold off;