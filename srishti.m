

function srishti
N = 1000;
P = primes(N);

tot = 0;
P_spe = [];
k=1
for p= 1:length(P)
    F = factors(P(p));
    rec = 0;

    for i= 0:length(F)
	     if mod(10^i,p) == 1
	     rec = i;
             break
        end


        if rec > 25
	tot += p;
        P_spe(k) = p;
        k = k +1
        end

    end
end

tot
P_spe
end
