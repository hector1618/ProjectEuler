function p = no_of_factors(n)
% This function returns the no of all the possible factors of the given no
% including 1 and that no itself.
%The function prime_factors.m should be defined in the directory
i = 1;B(1,1) = 1;p = 1;
A = prime_factors(n);
B = prime_factors_dist(n);
bm = length(B);
for i = 1:bm
    k = length(find(A==B(1,i)));
    p = p*(k+1);
end
