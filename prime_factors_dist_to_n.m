function A = prime_factors_dist_to_n(N)
% This function returns the matrix with all distinct prime factors of all the n from 2
% to N
%The function primes_to_n should be defined in the directory

B = primes_to_n(N);
A = zeros(N,1);
for j = 1:length(B)
    A(B(1,j),1) = B(1,j);
end

for n = 4:N
    if A(n,1) == 0
        k = n;
        i = 1;
        while B(1,i) <= n
                if rem(k,B(1,i)) == 0
                    k1 = k/B(1,i);
                    for j1 = 1:length(A(k1,:))
                        A(k,j1) = A(k1,j1);
                    end

                    if size(find(A(k1,:) == B(1,i)),2) == 0
                        [ v i1] = find(A(k,:) == 0,1);
                        if i1 <= size(A,2)
                            A(k,i1) = B(1,i);
                        else
                            A(k,size(A,2)+1) = B(1,i);
                        end
                    end
                    break
                else
                    i = i +1;
                end
                % check for the last entry in the matrix B
                if i == length(B)
                    break
                end
        end
    end
end