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
else
    s = sum(A(1:(an-1)/2) == A(an:-1:(an+3)/2));
    if  s == (an-1)/2
        k = 1;
    end
end
end