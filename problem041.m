function NP = problem041(n)
%We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once.
%For example, 2143 is a 4-digit pandigital and is also prime.
%What is the largest n-digit pandigital prime that exists?
A = [ 1:n];Y = [];
j =1;
while j <= factorial(n)
    N = 0;
    A = next_permutation(A);
    t = A(1,end);
    if t == 1 || t==3 || t == 7 || t ==9 
        for i = 0:n-1
            N = N+A(n-i)*10^i;
        end
        if is_it_prime(N) == 1
            Y = [ Y N];
        end
    end
    j = j +1;
end

NP = Y(1,end);

%NP = Y(1,end);