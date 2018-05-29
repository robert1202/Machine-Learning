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

%idx

%for k = 1:K
%  num_k = 0;
%  sum = zeros(n, 1);
%  for i = 1:m
%    if ( idx(i) == k )
%      sum = sum + X(i, :)';
%      num_k = num_k + 1;
%    end
%  end
%  centroids(k, :) = (sum/num_k)';
%end


%====另外的写法

for k = 1:K
%  fprintf('k = %d \n', k);

  tmpIdx = find(idx == k);
  %获取X矩阵中的idx=k的所有元素
  tmpX = X(tmpIdx,:);
  theSum = sum(tmpX) / length(tmpIdx);

%  fprintf('theSum = %f %f \n', theSum);

  centroids(k, :) = theSum;
end


% =============================================================


end

