function sum1 = problem020(n)
%n! means n × (n - 1) × ... × 3 × 2 × 1
%Find the sum of the digits in the number 100!(n)
% The function digital_mul should be defined in the directory
i = 1;D = [ 1 ];
while i <= n
    D = digital_mul(D,i);
    i = i +1;
end

sum1 = sum(D);
