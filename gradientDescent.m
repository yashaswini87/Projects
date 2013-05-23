function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %

    somefunction1=0;
    somefunction2=0;
    htheta_x= X*theta;
    #htheta_x2= X*theta(2);
    for n = 1:m
	somefunction1=somefunction1+((alpha/m)*(htheta_x(n)-y(n))*X(:,1)(n));
	somefunction2=somefunction2+((alpha/m)*(htheta_x(n)-y(n))*X(:,2)(n));
    end;
    theta(1)=theta(1)-somefunction1;
    theta(2)=theta(2)-somefunction2;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
