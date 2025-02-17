function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
n = size(theta)(1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


h = sigmoid(X*theta);
J = (1/m)*sum(-y.*log(h) - (1-y).*log(1-h)) + (lambda/(2*m))*(theta(2:n)'*theta(2:n));

grad = (1/m)*X'*(h-y); %vectorized version w.r.t. ex1

temp = theta;
temp(1) = 0;
grad = grad + (lambda/m)*temp;



% =============================================================

end
