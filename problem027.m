function problem027()
% Euler published the remarkable quadratic formula: n² + n + 41 
% It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. 
%However, when n = 40, 40^(2) + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 
%41² + 41 + 41 is clearly divisible by 41. 
% Using computers, the incredible formula  n² ? 79n + 1601 was discovered, 
%which produces 80 primes for the consecutive values n = 0 to 79. 
%The product of the coefficients, ?79 and 1601, is ?126479. 
% Considering quadratics of the form: n² + an + b, where |a| < 1000 and |b| < 1000
% Find the product of the coefficients, a and b, for the quadratic expression that produces the 
%maximum number of primes for consecutive values of n, starting with n = 0.

% If p(n) is prime-generating for 0<= n<= m, then so is p(m-n). 
% Hence (m-n)^2 +(m-n)*40 + 41 is also a prime generating function with
% m<=41. All we have to take care is the fact that contast term in the
% expantion should not go above 1000 and hence the m turns out to be 31
%with a = -61 and b = 971

