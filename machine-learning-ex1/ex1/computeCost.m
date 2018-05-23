function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

%   X：输入矩阵(97*2) y:结果矩阵(97*1) theta:计算的参数:(2*1)

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% bestTheta = pinv(X'*X)*X'*y

J = sum((X*theta - y).^ 2) / (2 * m);


% =========================================================================

end
