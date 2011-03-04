function A = generate_primes()
%This function is to generate the prime above 1000000
load prime.mat
A = [];
Bn = size(B,2);
for i = 1000001:2:1001000
    j = 1;
    while rem(i,B(1,j)) ~= 0
        j = j+1;
        if j == Bn
           A = [ A j];
           break
        end
    end
end
