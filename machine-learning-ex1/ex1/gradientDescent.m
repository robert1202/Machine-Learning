function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% X：输入矩阵(97*2) y:结果矩阵(97*1) theta:计算的参数:(2*1) alpha:学习率/步进(0.01),
% num_iters:循环次数(1500) J_history:代价函数的结果矩阵(1500*1)

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % J = sum((X*theta - y).^ 2) / (2 * m);


    temp0 = theta(1,1) - alpha * sum((X*theta - y).*X(:,1)) / m ;
    % temp0 = theta(1,1) - alpha * sum(X*theta - y) / m ;
    temp1 = theta(2,1) - alpha * sum((X*theta - y).*X(:,2)) / m ;
    theta(1,1) = temp0;
    theta(2,1) = temp1;




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
