function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


for i=1:K
	centroids(i,:) = mean(X((idx == i),:), 1); % X((idx == i)) filters those rows in X whose index corresponds to a 1 in the 0-1 vector (idx == i).
										   	   % mean(A,1) i.e., mean of elements by columns. mean(A,2) mean of elements by rows.If A is a vector 1xn then, it will compute the mean of elements in the row!
										   	   % That's why it is preferrably to write mean(X((idx == i),:), 1) instead of mean(X((idx == i),:)), since if the number of elements associated to cluster i is 1
										   	   % it won't work properly.
end

% =============================================================



end


