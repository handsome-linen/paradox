clear
clc
close all

A = readmatrix('Boston.csv');

opts = detectImportOptions('Boston.csv');
preview('Boston.csv',opts)
opts.SelectedVariableNames(2:end)

% Simple Linear Regression
% fitlm - Fit linear regression model
plot(A(:,14),A(:,15)) % p-value?
% coefCI - Confidence intervals of coeffiecient estimates of linear
% regression model
ci = coefCI(mdl)
% predict - Predict responses of linear regression model
[yhat,ci1] = predict(mdl, [5;10;15], 'Simultaneous', true)
% prediction intervals?
plot(A(:,14),A(:,15))
hold on
x = linspace(1,40);
b = mdl.Coefficients.Estimate(1);
m = mdl.Coefficients.Estimate(2);
y = m*x + b;
plot(x,y)
% anova(mdl,'summary')

% Multiple Linear Regression
