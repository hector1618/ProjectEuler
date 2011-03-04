function [J P] = problem026(n)
%A unit fraction contains 1 in the numerator. 
%Let 0.1(6) means 0.166666..., and has a 1-digit recurring cycle.
%It can be seen that 1/7 has a 6-digit recurring cycle.i.e 1/7 = 0.(142857)
%Find the value of d < 1000(or n in general) for which 1/d contains the longest recurring cycle 
%in its decimal fraction part.
%The function primes_to_n.m should be defined in the directory.
%The function factors_to_n.m should be defined in the directory.
%The function digtial_factors.m should be definded in the directory

%If p is prime and a is any integer, then ap ? a is divisible by p ( Fermat's little theorem).
%If p is a prime number other than 2 and 5, 1/p is always a recurring decimal,
%whose period is p?1 or a divisor of p?1. This can be deduced directly from Fermat's little theorem.

% so all we have to do is to find primes to n, then for every prime p we
% have to calculate all the factors of p-1 then, the period of recurrence
% has to be one of the proper devisior of it

%%++++ BUT THIS FLOW WILL NOT WORK. BECAUSE THE PRECETION OF DIGITS IS 17
%%ONLY. AND HENCE WE HAVE TO CHECK REGAROUSLY.THE ONLY POINT IS CLEAR FROM
%%THIS DISCOSSION IS THAT LONGEST RECURRING CYCLE WILL HAPPEN AT PRIME
%%NUMBERS ONLY

B = primes_to_n(n);
bn = length(B);J = 0;
for i = 4:bn % 2 and 5 are excluded bcos they dont form recurring decimal
    q = 1;q1 = 0;
    j = 0;
    while q1~=1
        while  q < B(1,i)
            q = 10*q;
            %j = j+1;
        end
        q1 = rem(q,B(1,i));
        q = q1;
        j = j +1;
    end
    if J < j
        J = j;
        P = B(1,i);
    end
    %[ J P]
    %keyboard
end
        