function F1 = factors(n)
%This function returns matrix F which contains all the 'proper' devisors of n
%The function prime_factors.m should be defined in the directory
F1 = [ ];
B = primes_to_n(n);
if B(1,end) == n
    F1 = [ 1];
    return
end
k = n;
i = 1;j=1;
while k > 1      
		if rem(k,B(1,i)) == 0%start of first if loop
             k = k/B(1,i);
             k1 = n/k;
             if k1 == k
                 F1 = [ F1 k];
                 break
             else
                 if k1 > k
                     break
                 else
                    F1 = [ F1 k1 k];
                 end
             end
        else
            k = n;
            if i < size(B,2)
                i = i + 1;
            else
                k = 0;
            end
        end
end

% to introduce one if it is not there
if sum(find(F1 == 1)) == 0
    F1 = [ 1 F1];
end