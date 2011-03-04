
function F = abundant_no(N)
%function returns all the abundant nos below number N
%abundant number or excessive number is a number n for which ?(n) > 2n.
%Here ?(n) is the sum-of-divisors function: the sum of all positive divisors of n, including n itself. 
%The value ?(n) ? 2n is called the abundance of n. 
%The function factor_to_n should be defined in the directory


A = factors_to_n(N);B(:,1) = 1:N;B(:,2) = zeros(N,1); 
am = size(A,1);
for i = 1:am
    B(i,2) = sum(A(i,:)) - B(i,1);
end
F = [];

for i = 1:am
    if B(i,1) < B(i,2)
        F = [ F ; B(i,:)];
    end
end
