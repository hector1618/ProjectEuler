function A = primes_to_n(n)
% Returns matrix A with all primes less than or equal to n (n > 2)
A = [ 2] ;

for  i = 3:n;
    k = 0;j = 1;
    while A(1,j) <= sqrt(i)
        if rem(i ,A(1,j)) == 0;
            k = 1;
            break
        end
        j = j +1;
    end
    if k == 0
        A = [ A i ];
    end
end
        