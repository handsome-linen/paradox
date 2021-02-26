clear
clc
close all

rng(1)

x = randn(20,2);
y = [-1*ones(1,10) ones(1,10)];
x(11:20,:) = x(11:20,:) + 1;
plot(x(1:10,1), x(1:10,2), 'bo', x(11:20,1), x(11:20,2), 'ro')