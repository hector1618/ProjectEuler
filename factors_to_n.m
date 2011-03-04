function A = factors_to_n(N)
% This function will return the divisors(including 1 and that no) of all the nos from 2 to N.
% The function primes_to_n.m should be defined in the domain
B = primes_to_n(N);A = zeros(N,2);
bn = length(B);A(1,:) = [1 1];
for i = 1:bn
    A(B(1,i),1) = 1;
    A(B(1,i),2) = B(1,i);
end

j1 = 1;ind = 1;
for j = 4:N
    while ind == 1
        if rem(j,B(1,j1)) ==0
            ind = 0;
            k = j/B(1,j1);
            if k == 1
                continue
            end
            ji = 1;ki = 1;
            while A(k,ki) ~= 0
                A(j,ji) = A(k,ki);
                if A(j,ji) == k
                    break
                end
                ji = ji +1;
                ki = ki +1;
            end

            for i = 1:ki
                p1 = B(1,j1)*A(k,i);
                if sum(find(A(j,:) == p1)) == 0
                    A(j,ji+1) = p1;
                    ji = ji+1;
                end
            end
        else
            j1 = j1 +1;
        end
    end
    j1 = 1;ind = 1;
end