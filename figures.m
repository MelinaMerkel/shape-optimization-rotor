% Figure 3
data = csvread('data/figure03.csv');
figure;
loglog(data(:,1),data(:,2),'-o',data(3:10,1),data(3:10,3),'-o',data(5:10,1),data(5:10,4),'-o',data(7:10,1),data(7:10,5),'-o',data(:,1),data(:,6),'-o',data(3:10,1),data(3:10,7),'-o',data(5:10,1),data(5:10,8),'-o',data(7:10,1),data(7:10,9),'-o');
legend('full problem, {\it N}_\Gamma=6','full problem, {\it N}_\Gamma=20','full problem, {\it N}_\Gamma=36','full problem, {\it N}_\Gamma=50','interface problem, {\it N}_\Gamma=6','interface problem, {\it N}_\Gamma=20','interface problem, {\it N}_\Gamma=36','interface problem, {\it N}_\Gamma=50');
title('Figure 3');
xlabel ('number of IGA degrees of freedom');
ylabel ('computational time (s)');

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


% Figure 10
data = csvread('data/figure10.csv');
figure;
bar(data(:,1),[data(:,2),data(:,3)]);
legend('original design', 'optimized design');
title('Figure 10');
xlabel ('harmonics');
ylabel ('Fourier coefficients of EMF (V)');
