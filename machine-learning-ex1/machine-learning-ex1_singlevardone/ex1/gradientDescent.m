function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
%K1=0;K2=0;
%
for iter = 1:num_iters
     %a=sum(X,1);
     %theta(1)=theta(1)-((alpha/m)*a(1));
     %theta(2)=theta(2)-((alpha/m)*a(2));
      
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    % 

    % ============================================================
   % for it = 1:m
   % K1= K1+(((X*theta)-y).*X(:,1));
 % end
  %  K1=mean(K1);
  %5  theta(1)=theta(1)-(alpha/m)*K1;
    
   % for it = 1:m
   % K2= K2+(((X*theta)-y).*X(:,2));
 % end
  %   K2=mean(K2);
  %  theta(2)=theta(2)-(alpha/m)*K2;
    
  
    % Save the cost J in every iteration    
     J_history = computeCost(X, y, theta);
      plot(J_history,iter); 

    theta=theta-(alpha/m)*((X')*(X*theta-y));
end
end