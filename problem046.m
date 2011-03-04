function N = problem046(B)
%It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.
% 9 = 7 + 2×1^(2)
% 15 = 7 + 2×2^(2)
% 21 = 3 + 2×3^(2)
% 25 = 7 + 2×3^(2)
% 27 = 19 + 2×2^(2)
% 33 = 31 + 2×1^(2)
% It turns out that the conjecture was false.
% What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

%B = primes_to_n(10000000);
j =9;N = 0;
while j < 10000000
    if isprime(j) == 0
        i = 2;
        while B(1,i) < 1000000 
            t = (j-B(1,i))/2;
            if floor(sqrt(t)) == sqrt(t)
                break
            else
                if B(1,i+1) > j
                    N = j;
                    return
                end
                i = i +1;
            end
        end
    end
    j = j +2;
end