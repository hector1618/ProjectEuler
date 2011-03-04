function sum1 = problem016(n)
%2^(15) = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
%What is the sum of the digits of the number 2^(1000)?

i = 1;D = [ 1 ];
while i <= n
    D = digital_mul(D,2);
    i = i +1;
end

sum1 = sum(D);