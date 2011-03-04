function A = prime_factors_dist(n)
% This function returns the matrix with all the prime factors the no
% posseses. This function returns the distinct factors
%The function primes_to_n should be defined in the directory
%The prime.mat file shold be defined in the directory

    load prime.mat
    %B = primes_to_n(n);
    k = n;
    i = 1;
    A = [];
    while B(1,i) <= n
        if rem(k,B(1,i)) == 0
            while rem(k,B(1,i))==0
                    k = k/B(1,i);
            end
            A = [A B(1,i)];
            %keyboard
            i = i + 1;
        else
            i = i +1;
        end
            %check for the last entry in the matrix B
        if i > length(B)
                if  is_it_prime(k)==1
                    A = [A k];
                else
                    if(k~=1)
                        disp('Too big number for this function');
                        disp('Some of the prime factors are');
                    end
                end
                break
        end
    end
