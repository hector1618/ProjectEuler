%The sum of the squares of the first ten natural numbers is,
%1^(2) + 2^(2) + ... + 10^(2) = 385
%The square of the sum of the first ten natural numbers is,
%(1 + 2 + ... + 10)^(2) = 55^(2) = 3025
%Hence the difference between the sum of the squares of the first 
%ten natural numbers and the square of the sum is 3025 ? 385 = 2640.
%Find the difference between the sum of the squares of the first 
%one hundred( or X) natural numbers and the square of the sum.
function d = problem6(X)
A = 1:X;
d1 = (sum(A))^2;
d2 = sum(A.^2);
d   = d1-d2;

