function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

     tempTheta = theta;
     for j = 1:length(theta)
         thetaDerative = 0;
         for i = 1:m
             hPrev = (X(i,:) * theta- y(i,:));
             thetaDerative = thetaDerative + hPrev * X(i,j);
         end
         tempTheta(j,:) = tempTheta(j,:) - (alpha/m)*thetaDerative;
     end
  

     theta = tempTheta;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
