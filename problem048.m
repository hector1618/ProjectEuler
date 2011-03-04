function LD = problem048(n,k)
%The series, 1^(1) + 2^(2) + 3^(3) + ... + 10^(10) = 10405071317.
%Find the last ten digits of the series, 1^(1) + 2^(2) + 3^(3) + ... + 1000^(1000).
% Or on general last k degits for the series upto n^n;

i = 1;LD = 0;
while i < n;
    j = 1;p = 1;
    while j <= i
        p = p*i;
        p = mod(p,10^k);
        j = j +1;
    end
    LD = mod(LD + p,10^k);
    i = i+1;
end
            
