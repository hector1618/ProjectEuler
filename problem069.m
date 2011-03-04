function [ the_no bigest] = problem069(N)
%Euler's Totient function, phi(n) [sometimes called the phi function], is
%used to determine the number of numbers less than n which are relatively 
%prime to n. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and 
%relatively prime to nine, phi(9)=6.
%It can be seen that n=6 produces a maximum n/phi(n) for n  <= 10.
%Find the value of n <=1,000,000 for which n/phi(n) is a maximum.
%function primes_to_n.m should be defined in the directory.

bigest = 0;
PRIM = primes_to_n(N);
for h = 2:N
    Pm = co_primes(h,N,PRIM);
    r = h/Pm;
    if  r > bigest
        bigest = r;
        the_no = h;
    end
end


%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%
function Pm = co_primes(m,N,PRIM)
%Returns the co-primes lesser than the given no.
% The function prime_factors_dist should be defined in the directory

A = prime_factors_dist(m,PRIM);
[ an am ] = size(A);
P = 1:m;

for i = 1:am
    j = 1;
    while j <= size(P,2)
        if rem(P(1,j),A(1,i)) == 0
            P(:,j) = [ ];
        else
            j = j+1;
        end
    end
end
[ Pn Pm ] = size(P);


function A = prime_factors_dist(m,PRIM)
% This function returns the matrix with all the prime factors the no
% posseses. This function returns the distinct factors
%The function primes_to_n should be defined in the directory
%B = PRIM(find(PRIM <= m ));
ii = 0;i1 = 1;
while ii ~= 1
    B(1,i1) = PRIM(1,i1);
    if PRIM(1,i1) >= m || size(PRIM,2) == size(B,2)
        ii = 1;
    end
    i1 = i1 +1;
end
k = m;
i = 1;j=1;
A = [];am = 1;
while k > 1
		if rem(k, B(1,i)) == 0
            if j == 1
                A = B(1,i);
                j = 0;
                k = k / B(1,i);
                continue
            end
            k = k / B(1,i);
            if B(1,i) ~= A(1,am)
            A = [ A B(1,i)];
            am = am+1;
            end
        else
            i = i + 1;
		end
end