% Figure 8
data = csvread('data/figure08.csv');
figure;
plot(data(:,1),data(:,2),data(1:2,3),data(1:2,4),'o',data(1:2,5),data(1:2,6),'o');
legend('IGA linear', 'JMAG linear', 'JMAG nonlinear');
title('Figure 8');
xlabel ('iteration');
ylabel ('THD(EMF)');

% Figure 9
data = csvread('data/figure09.csv');
figure;
bar(data(:,1),[data(:,2),data(:,3),data(:,4),data(:,5)]);
legend('iter 0, IGA', 'iter 0, JMAG', 'iter 59 IGA', 'iter 59 JMAG');
title('Figure 9');
xlabel ('harmonics');
ylabel ('Fourier coefficients of EMF (V)');


% Figure 11
data = csvread('data/figure11.csv');
figure;
bar(data(:,1),[data(:,2),data(:,3)]);
legend('original design', 'optimized design');
title('Figure 11');
xlabel ('harmonics');
ylabel ('Fourier coefficients of EMF (V)');
