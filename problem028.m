function S = problem028(N)
%Starting with the number 1 and moving to the right in a clockwise
%direction a 5 by 5 spiral is formed as follows:
%   21 22 23 24 25
%   20  7  8  9 10
%   19  6  1  2 11
%   18  5  4  3 12
%   17 16 15 14 13
%It can be verified that the sum of the numbers on the diagonals is 101.
%What is the sum of the numbers on the diagonals in a 1001 by 1001(or N-by-N in general)
% spiral formed in the same way?

n = 3;
s = 6;s_tot = 6;
while n < N
    s = s + 4*n + 1;%this of an average of 4 elements in one round
    %The original formula is 
    %s = s +s + floor(n/2) + (n-1) + (n+1) + (n+1) +floor((n+1)/2)
    s_tot = s + s_tot;
    n = n +2;
end

S = 4*s_tot + 1;