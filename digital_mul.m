function D = digital_mul( A,b)
% The  function returns the matix D which are the digital factor of the
% product of A and b. Where A is also an digital factors of some number.
%The function digital_factors.m should be
am = size(A,2);
d = 0;
i = 1;

for j = am:-1:1
    c = A(1,j)*b;
    c = c + d;
    if c >= 10
        P(1,i) = rem(c,10);
        d = floor(c/10);
        i = i +1;
    else
        P(1,i) = c;
        d = 0;
        i = i +1;
    end
end

pm = length(P);
for i = pm:-1:1
    D(1,i) = P(1,pm-i+1);
end

E = digital_factors(d);
D = [ E D];
if D(1,1) == 0
    D(:,1) = [ ];
end
