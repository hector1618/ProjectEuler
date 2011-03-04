function p = problem040()
% An irrational decimal fraction is created by concatenating the positive
% integers:
% 0.123456789101112131415161718192021...
% It can be seen that the 12^(th) digit of the fractional part is 1.
% If d_(n) represents the n^(th) digit of the fractional part, find the
% value of the following expression.
% d_(1) × d_(10) × d_(100) × d_(1000) × d_(10000) × d_(100000) ×
% d_(1000000)
% The function digital_factors.m should be defined in the directory
A =zeros(1,1000000);j = 1;t = 0;
while j<= 1000000
    F = digital_factors(i);
    fm = size(F,2);
    A(j:j+t) =F;
    j = j+t+1;
    %keyboard
end

p = A(1)*A(10)*A(100)*A(1000)*A(10000)*A(100000)*A(1000000);
    