function F = factors_2(n)
%This function returns matrix F which contains all the 'proper' devisors of n
%The function prime_factors.m should be defined in the directory

B = primes_to_n(n);
if B(1,end) == n
    F1 = [ 1];
    return
end

bn = size(B,2);
P  = ones(1,bn);% will get powers of every prime +1
k = n;
i =1;
while k >1
    if rem(k,B(1,i)) == 0
        k = k/B(1,i);
        P(1,i) = P(1,i) +1;
    else
        i = i+1;
    end
end

F = zeros(1,prod(P));
P = P - ones(1,bn);%getting P matrix as power matrix
%squasing these matrix to only requried prime
Pf = find(P == 0);
P(:,Pf) = [];
B(:,Pf) = [];


j=1; p = P(1,j);F = [];
for i = 1:size(P,2)
    while p ~= 1
        F = [ F prod(B.^P)];
        p = p-1;
        if p == 0
            j = j +1;
            p = P(1,j);
        end
    end
end