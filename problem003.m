function grt_prim =  problem3(X)
%The prime factors of 13195 are 5, 7, 13 and 29.What is the largest 
%prime factor of the number 600851475143(or in general forX)?
a = primes(sqrt(X));
[ an am ] = size(a);
remdr = rem(X,a(1,am));
i = am;
while remdr ~= 0
    remdr = rem(X,a(1,i));
    i = i -1;
end
grt_prim = a(1,i+1);