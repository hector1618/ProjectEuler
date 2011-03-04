function problem069_1(n)
%Euler's Totient function, phi(n) [sometimes called the phi function], is
%used to determine the number of numbers less than n which are relatively 
%prime to n. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and 
%relatively prime to nine, phi(9)=6.
%It can be seen that n=6 produces a maximum n/phi(n) for n  <= 10.
%Find the value of n <=1,000,000 for which n/phi(n) is a maximum.
%functions primes_to_n.m  should be defined in the directory.

PRIM = primes_to_n(n);
ratio = 0;
for i = 2:n
        s = 1;
        [ A P ] = prime_factors_dist_s(i,PRIM);
        am = length(A);
        for j = 1:am
            s = s*(A(1,j) -1)*(A(1,j)^(P(1,j) -1));
        end
        r = i/s;
        if r > ratio
            ratio = r;
            the_no = i;
        end
end

    
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%    
function [ A P ] = prime_factors_dist_s(m,PRIM)
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

%B = primes(m);

k = m;
i = 1;j=1;
A = [];am = 1;
while k > 1
		if rem(k, B(1,i)) == 0
                if j == 1
                    A = B(1,i);
                    j = 0;
                    k = k / B(1,i);
                    P = [ 1 ];
                    continue
                end
            k = k / B(1,i);
            if B(1,i) ~= A(1,am)
                A = [ A B(1,i)];
                P = [ P 1];
                am = am+1;
            else
                pm = length(P);
                P(1,pm) = P(1,pm) + 1;
            end
        else
            i = i + 1;
        end
end