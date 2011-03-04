function j = problem5(X)
%2520 is the smallest number that can be divided by each of 
%the numbers from 1 to 10 without any remainder.
%What is the smallest number that is evenly divisible 
%by all of the numbers from 1 to X?
A = 1:X;
j= lcm(A(1,1),A(1,2));
for i = 3:X
    j= lcm(j,A(1,i));
end
