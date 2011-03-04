function X = prime_factors_fast(n)
%This function returns a cell containing all the nos from 1 to n and
%corresponding prime factors of the no. (n > 2)
%The functions primes_to_n.m should be defined in the directory
%The function prime_factors.m should be defined in the directory
X = cell(2,1);
X{1,1} = 1 ;
X{2,1} = 2 ;
B = primes_to_n(n);

for k = 3:n     
    k1 = k;i = 1;
    while k1 > 1
        if rem(k,B(1,i)) == 0
            k1 = k/B(1,i);
            if k1 == 1
                X{k,1} = k ;
            else
                A = X{k1,1};
                X{k,1} = [ A B(1,i) ];
                k1 = 1;
            end
        else
            i = i +1;
        end
    end
end