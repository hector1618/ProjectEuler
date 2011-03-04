function P = co_primes(m)
%Returns the co-primes lesser than the given no.
% The function prime_factors_dist should be defined in the directory
A = prime_factors_dist(m);
[ an am ] = size(A);
P = 1:m;

for i = 1:am
    j = 1;
    while j <= size(P,2)
        if rem(P(1,j),A(1,i)) == 0
            P(:,j) = [ ];
        else
            j = j+1;
        end
    end
end