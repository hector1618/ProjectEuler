function sum =  problem1(n,m,X)
%If we list all the natural numbers below 10 that are multiples of 3 or 5,
%we get 3, 5, 6 and 9. The sum of these multiples is 23.
%Find the sum of all the multiples of n or m below X.
sum = 0;
for j = 0:X-1
    if rem(j,n) == 0 || rem(j,m) == 0
        sum = sum + j;
    end
end
