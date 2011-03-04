function a = is_it_prime_s(n,B)
%The function is defined to check whether given no is prime or not.
%It returns 1 when it is prime and 0 when it is not.
%The function primes_to_n should be defined in the directory
%Where B is a row matix containing all primes below sqrt n
i = 1;
a = 1;
while i < length(B) 
    if rem(n,B(1,i)) == 0
        a = 0;
        return        
    end
    i = i +1;
end
        