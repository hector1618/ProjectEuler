function Nt = problem035(n,B)
%The number, 197, is called a circular prime because all rotations of the digits: 
%197, 971, and 719, are themselves prime.
%There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37,
%71, 73, 79, and 97.
%How many circular primes are there below one million(or n in general)?
%Taking prime no till 1000000 as input argument.
% Function next_permutation.m should be defined in the directory.
%Function digital_factors.m should be defined in the directory.

i = 26;%bcos 26th prime is 101 i.e. greater than 100
l = length(B);Nt = 13;%to mesure cicular primes
C = [ 0 2 4 5 6 8];%to check whether the prime no can be circular or not

while i <= l
    F =  digital_factors(B(1,i));
    ct = 1;
    for ic = 1:6
         t = size(find(F == C(1,ic)),2);
         if t ~= 0
             ct= 0;
             break
         end
    end
    
    if ct == 0
        i = i +1;
        continue
    else
        cp = circular_primes(F);
        if cp == 1
            Nt = Nt+1;
        end
        i = i+1;
    end
end


function cp = circular_primes(F)
%return 1 is if the number in circular prime else return 0
fl = length(F);
cp = 1;
for i = 1:fl
    N =0;
    F = [F(2:end) F(1,1)];
    for i = 0:fl-1
         N = N+F(fl-i)*10^i;
    end
    
    if is_it_prime(N) == 1
        cp =1;
    else
        cp = 0;
        break
    end
end




