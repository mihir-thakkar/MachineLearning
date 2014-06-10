function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

h = sigmoid(X*theta);
pos = find(h>=0.5);   %pos vector has the indices with probabilty greater than 0.5
neg = find(h<0.5);    % neg vector saves the indices with probability lesser than 0.5
p(pos) = ones(size(pos));  %positions in pos are replaced by "ones" vector of size pos
p(neg) = zeros(size(neg));  %similarly neg





% =========================================================================


end
