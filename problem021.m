function s = problem021(N)
%Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
%If d(a) = b and d(b) = a, where a ? b, then a and b are an amicable pair and 
%each of a and b are called amicable numbers.
%For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
%therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
%Evaluate the sum of all the amicable numbers under 10000(or N in general).
%The function factors_to_n should be defined in the directory

A = factors_to_n(N);B(:,1) = 1:N;B(:,2) = zeros(N,1); 
am = size(A,1);
for i = 1:am
    B(i,2) = sum(A(i,:)) - B(i,1);
end
s = 0;F = [];
for i =1:am
    r = B(i,2);
    if r <= am
        if B(r,2) == B(i,1) && r~=i
            s = s + B(i,1);
            F = [ F B(i,1)];
        end
    end
end

F