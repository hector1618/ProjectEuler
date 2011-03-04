function c = co_primes1(m)
%Returns the no of co-primes lesser than the given no.
%global PRI 
%PRI= primes_to_n(1000000);
A = prime_factors_dist(m);
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

P
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%
function A = prime_factors_dist(m)
% This function returns the matrix with all the prime factors the no
% posseses. This function returns the distinct factors
%The function primes_to_n should be defined in the directory

B = primes_to_n(m);

k = m;
i = 1;
A = [];
while k > 1
		if rem(k, B(1,i)) == 0
			k = k / B(1,i);
            A = [A B(1,i)];
        else
            
			i = i + 1;
		end
end