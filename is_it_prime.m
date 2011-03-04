function a = is_it_prime(n)
%The function is defined to check whether given no is prime or not.
%It returns 1 when it is prime and 0 when it is not.
if n==1
    %disp('By defination its  not prime')
    a = 0;
    return
end


i = 2;a = 1;
while i <= n/i
    if rem(n,i) == 0
        a = 0;
        return        
    end
    i = i +1;
end
        