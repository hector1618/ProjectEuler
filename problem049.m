function D =  problem049
B = primes_to_n(10000);
B4 = B(169:end);
l = length(B4);D =[];
%B4 = [ B4;zeros(1,l)];
tic
a = 1;
for i = 1:l;
    [s p] = digital_factors_s(B4(1,i));
    if p ~= 0
        A(1,a) = s;
        A(2,a) = p;
        A(3,a) = B4(1,i);
        a = a +1;
    end
    %A(1,a) = B4(1,i);
end
A;
toc
%C = sort(A,2)
    
function [s,p] = digital_factors_s(f)
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
s = sum(F);
p = prod(F);
