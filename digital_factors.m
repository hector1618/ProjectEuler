function F = digital_factors(f)
% this is a function to give the digital factors of a number
%i.e. if f = 153432 F = [ 1 5 3 4 3 2]
% but number should be less than 17 digit ????
A(1,1) = rem(f,10);
i =2;
while 10^(i-1) <= f
    A(1,i) = (rem(f,10^i) - rem(f,10^(i-1)))/10^(i-1);
    i = i+1;
end

[ an am ] = size(A);
for i = 1:am
    F(1,am-i+1) = A(1,i);
end

