function a = is_it_prime_fast(n)
%The function is defined to check whether given no is prime or not.
%It returns 1 when it is prime and 0 when it is not.
%This function is more fast than the privious one bcos it uses the fact
%that every prime no is of the form (6*k +1) or (6*k -1)
a = 1;
for i = 2:3
   if rem(n,i) == 0
        a = 0;
        return        
    end
end

k = 1;
m = 5;
while m < sqrt(n)
    if rem(n,m) == 0
        a = 0;
        return
    else
        m = m + 2;
        if rem(n,m) == 0
            a = 0;
            return
        end
    end
    k = k +1;
    m = 6*k -1;
    end
end