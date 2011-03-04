function p= problem039(N)
%If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, 
%there are exactly three solutions for p = 120.
%{20,48,52}, {24,45,51}, {30,40,50}
%For which value of p ? 1000(n in general), is the number of solutions maximised?
%The function prime_factors_dist should be defined in the directory
%The function primes_to_n should be defined in the directory

%By euclid's formula, a pythagorian triplet can be generated using two
%positive integers m and n (m > n) as a = m^2 - n^2 ; b = 2mn; 
%c = m^2 +n^2. The perimeter of this triangle will be p = 2m^2+2mn
% So here we are fixing m and then finding (m,n) such that m > n and n is
% co-prime to m. After generating all such pairs we can compare which value
% is repeated most of the time

P = []; %for storing all the possible values of p
B = primes_to_n(N); % for storing all the primes which might be required
for m = 2:N
    C = co_primes_s(m,B);
    %keyboard
    for i = 1:length(C)
        n = C(1,i);
        p =  2*m^2+2*m*n;
        if p < N
            P = [ P p];
        else
            break
        end
    end
end

% Above loop was for finding perimeter of all the 'primitive' triplets
% but they are not unique. Bcos for 2*k*m1^2 = ( m2 + n2 )^2 the two
% different pair of (m1,n1) and ( m2,n2) will give same triplets
% Loop below is used to eliminate such repitation.Note that k is of the
% form 2^odd so as to make LHS a square of an interger
k = 0;
while 12*2^(2*k +1) <= N% 12 will be the least no in P and hence used as a checking parameter
    f = 2^(2*k +1);
    pl = length(P); i = 1;
    while i <pl
        I = find(P == f*P(1,i));
        P(:,I) = [];
        i = i +1;
        pl = length(P);
    end
    k = k +1;
end
%Loop below is used to to find all the possible perimeter within the range
Q = [];
for j = 1:length(P)
    k = 1;
    while P(1,j)*k < N
        Q = [ Q P(1,j)*k];
        k = k +1;
    end
end

%this loop is used to find the no which is repeated most of the time
R = zeros(length(Q),2);
for j = 1:length(Q)
    R(j,1) = Q(1,j);
    R(j,2) = size(find(Q == Q(1,j)),2);
end
[ v i ] = max(R(:,2));
p = R(i,1);
 
    
    
function P = co_primes_s(m,B)
%Returns the co-primes lesser than the given no.
% The function prime_factors_dist should be defined in the directory
A = prime_factors_dist_s(m,B);
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

function A = prime_factors_dist_s(n,B)
% This function returns the matrix with all the prime factors the no
% posseses. This function returns the distinct factors
%The function primes_to_n should be defined in the directory
k = n;
i = 1;
A = [];
while B(1,i) <= n
		if rem(k,B(1,i)) == 0
            k = k/B(1,i);
            A = [A B(1,i)];
            i = i + 1;
        else
            i = i +1;
        end
        % check for the last entry in the matrix B
        if i == length(B)
            break
        end
end