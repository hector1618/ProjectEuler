function A = below_primes(X)
% To find functions prime numbers which are below the given prime numbers
% It takes X(>2) as input argument and returns row matrix A
A=[2];
j = 1;
i=2;

while i <= X
    [an am]=size(A);
    while j <= am
        r = rem(i,A(1,j));
        if r == 0
            if  j == am
                A(1,am+1) = i;
            else
                break
            end
        end
        j = j+1;
    end
    i = i +1;
end