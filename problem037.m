function C = problem037(B)
% The number 3797 has an interesting property. 
%Being prime itself, it is possible to continuously remove digits from left to right,
%and remain prime at each stage: 3797, 797, 97, and 7.
%Similarly we can work from right to left: 3797, 379, 37, and 3. 
% Find the sum of the only eleven primes that are both truncatable from
% left to right and right to left.
% NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
%The function digital_factors.m should be defined in the directory
%B the set of prime nos upto 1000000 is taken as an input argument

%The number can start with (2/3/5/7) and should end with (3,7)
% We will generate primes below some large nos say 1000000,
%Then check for every prime by digital factorising it
%B = primes_to_n(1000000);
bn = length(B);
j = 5;%for 23    37    53    73
%S = 186;%for 23+37+53+73
C = [];
i = 26;% we will start inspecting numbers above 100,and 26th prime is 101
C1 = [ 2 3 5 7];% to check the starting digit in number
C2 = [ 3 7]; % to check the last digit in number
while i <= bn
    F = digital_factors(B(1,i));
    t1 = size((find(C1==F(1,1))),2);
    t2 = size((find(C2==F(1,end))),2);
    if t1 == 1 && t2 == 1
        cp1 = left_trunc(F);
        if cp1 == 1
            cp2 = right_trunc(F);
            if cp2 == 1
                C =[ C ;B(1,i)];
            end
        end
    end
    i = i+1;
end


function cp = left_trunc(F)
%return 1 is if the prime in left truncable else return 0
fl = length(F);
cp = 1;
while fl > 1
    F(:,end) = [];
    fl = length(F);
    N =0;
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



function cp = right_trunc(F)
%return 1 is if the prime in left truncable else return 0
fl = length(F);
cp = 1;
while fl > 1
    F(:,1) = [];
    fl = length(F);
    N =0;
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
    