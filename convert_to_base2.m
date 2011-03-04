function A =convert_to_base2(n)
% this is function will return a  matrix 
% which contains the digital factorisation of  a number which is the represantation of the given no.s in base 2
% i.e. for n = 36 it will return [ 1 0 0 1 0 0];
k = 0;
while 2^k <= n
        k = k+1;
end
A = zeros(1,k);
for i = k-1:-1:0
    if 2^i <= n
        n = rem(n,2^i);
        A(1,k-i) = 1;
    end
end