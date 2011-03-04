function F1 = factors_1(n)
%This function returns matrix F which contains all the 'proper' devisors of n
%The function prime_factors.m should be defined in the directory
F1 = [ ];
B = primes_to_n(n);
k = n;
i = 1;j=1;
while k > 1      
		if rem(k,B(1,i)) == 0%start of first if loop
             k = k/B(1,i);
             k1 = n/k;
              %[ k k1]
             %keyboard
             if k1 >= k
                 F1 = [ F1 k];
                 break
             else
                 F1 = [ F1 k1 k];
             end
         else
                i = i + 1;
        end
        F1
        keyboard
end
