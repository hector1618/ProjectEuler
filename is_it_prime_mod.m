function f=is_it_prime_mod(n)
%this function is to check whether given number is prime or not using
%Fermat's thm.It will return 1 if it is a prime number and will return 0 
%if it is not.

%The concept used here is that prime number p forms a recurring decimal
%fraction with a period of factors of (p-1). So 10^i congruent 1 mod(p)
%with i is a factor of (p-1) then we are done with it. This will imply that
% p is a prime number.

f = 0;
i = 0;
j = 1;
while i<n-1
    j = mod(10*j,n);
    i = i+1;
end

j
