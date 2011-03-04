function S =problem050(N)
% The prime 41, can be written as the sum of six consecutive primes:
% 41 = 2 + 3 + 5 + 7 + 11 + 13 
% This is the longest sum of consecutive primes that adds to a prime below one-hundred.% 
% The longest sum of consecutive primes below one-thousand that adds to a prime, 
%contains 21 terms, and is equal to 953. 
% Which prime, below one-million, can be written as the sum of the most
% consecutive primes?
load prime.mat
tic
%bn = size(B,2);
j = 1;SEQ = 0;
while B(1,j) < N/2% it is not possible for sequence to start after N/2.
    k = B(1,j)+B(1,j+1);
    seq = 2;
    i = j+1;
    while k < N
        i = i +1;
        k = k + B(1,i);
        seq = seq+1;
        if isprime(k) == 1
           if SEQ < seq
               SEQ = seq;
               %keyboard
               S = k;
               %keyboard
            end
        end
    end
    %[ B(1,j) k S ]
    %keyboard
    j = j+1;
end
toc