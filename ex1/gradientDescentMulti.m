function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
% keep changing theta(1) and theta(2) to minimize the J value {our cost function}
Temptheta = zeros(2,1);
slope = zeros(2,1);

slope(1) = (1/m)*(sum( (X * theta) - y) );
slope(2) = (1/m)*(sum( ((X * theta) - y).*X(:,2) ) );

Temptheta(1) = theta(1) - ( alpha * slope(1) );
Temptheta(2) = theta(2) - ( alpha * slope(2) );

theta(1) = Temptheta(1);
theta(2) = Temptheta(2);










    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
