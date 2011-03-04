function a = problem004(n,m)
%A palindromic number reads the same both ways. The largest palindrome made from the product 
%of two 2-digit numbers is 9009 = 91 × 99.
%Find the largest palindrome made from the product of two 3-digit numbers.
% This program is to find product made by m digit no.

i = 10^n -1; % creating the largest no of digit n
bmax=0;
while i > 10^(n-1)
    j = 10^m -1; % creating the largest no of digit m
    while j > 10^(m-1)
        b = i*j;
        k = ispalin(b);
        if k == 1
            if b > bmax
            bmax = b;
            
            
            end
        end
        j = j -1;
    end
    i = i -1;
end
bmax
end
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%


%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%
function k = ispalin(b)
% to check wherther the no given is palindrome or not.
% it will return 1 for palindrome and 0 if its not
% this is a function calculate the digital factors of a number
%i.e. if f = 153432 F = [ 1 5 3 4 3 2]
% but number should be less than 17 digit.
k =0;
A(1,1) = rem(b,10);
i =2;
while 10^(i-1) <= b
    A(1,i) = (rem(b,10^i) - rem(b,10^(i-1)))/10^(i-1);
    i = i+1;
end

[ am an ] = size(A);
if rem(an,2) == 0
    s = sum(A(1:an/2) == A(an:-1:an/2+1));
    if  s == an/2 % checking the condition for palendrome
        k = 1;
    end
end

if rem(an,2) == 1
    s = sum(A(1:(an-1)/2) == A(an:-1:(an+3)/2));
    if  s == (an-1)/2
        k = 1;
    end
end
end