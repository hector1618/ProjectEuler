function s = no_of_factors_fast(n)
% This function returns the no of all the possible factors of the given no
% including 1 and that no itself.
%The function prime_factors.m should be defined in the directory
B = primes_to_n(n);
k = n;
i = 1;j=1;
A = [ ];
am = 1;
s = 1; p = 1;
while k > 1      
		if rem(k, B(1,i)) == 0%start of first if look
            if j == 1
                A = B(1,i);
                j = 0;
                k = k / B(1,i);
                continue
            end
            
            k = k/B(1,i);
            if B(1,i) ~= A(1,am)
                s = s*(p+1);
                p = 1;
                A = [ A B(1,i)];
                am = am+1;
            else
                p = p + 1;
            end
        else%else corresponding to first if
            i = i + 1;
        end
end
s = s*(p+1);% this step is for last iteration.