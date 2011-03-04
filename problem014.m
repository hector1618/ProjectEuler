function [v i]= problem014(m)
%The following iterative sequence is defined for the set of positive integers:
%n ? n/2 (n is even)
%n ? 3n + 1 (n is odd)
%Using the rule above and starting with 13, we generate the following sequence:
%13 ? 40 ? 20 ? 10 ? 5 ? 16 ? 8 ? 4 ? 2 ? 1
%It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
%Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
%Which starting number, under one million(or n in general), produces the longest chain?
%NOTE: Once the chain starts the terms are allowed to go above one million
tic
A = zeros(m,1);
A(1,1) = 1;A(2,1) = 2;
for i = 3:m
    j = i;t = 1;
    while j ~= 1
        if rem(j,2) == 0
            j = j/2;
        else
            j = 3*j +1;
        end
        t = t +1;
    end
    A(i,1) = t;
end
[ v i ] = max(A);
toc