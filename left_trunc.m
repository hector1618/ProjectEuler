
function cp = left_trunc(F)
%return 1 is if the prime in left truncable else return 0
fl = length(F);
cp = 1;
while fl > 1
    F(:,end) = [];
    fl = length(F);
    N =0;
    for i = 0:fl-1
         N = N+F(fl-i)*10^i;
    end
    
    if is_it_prime(N) == 1
        cp =1;
    else
        cp = 0;
        break
    end
end
