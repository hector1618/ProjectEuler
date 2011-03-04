function s = no_of_factors_fast1(n)
% This function returns the no of all the possible factors of the given no
% including 1 and that no itself.
%The function primes_to_n.m should be defined in the directory

B = primes_to_n(n);
if B(1,end) == n
    s = 2;
    return
end

bn = size(B,2);
P  = ones(1,bn);
k = n;
i =1;
while k >1
    if rem(k,B(1,i)) == 0
        k = k/B(1,i);
        P(1,i) = P(1,i) +1;
    else
        i = i+1;
    end
end
s = prod(P);