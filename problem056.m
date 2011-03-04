function s = problem056()
%A googol (10^(100)) is a massive number: one followed by one-hundred zeros; 
%100^(100) is almost unimaginably large: one followed by two-hundred zeros. 
%Despite their size, the sum of the digits in each number is only 1.
%Considering natural numbers of the form, a^(b), where a, b < 100, what is the maximum digital sum?
%The function digital_mul.m should be defined in the directory
s = 0; % for storing the sum of digits in the number
for i = 99:-1:80
    for j = 99:-1:80
        %The number is of the form i^j
        k = 0;t = [1];
        while k < j
            t = digital_mul(t,i);
            s1 = sum(t);
            k = k +1;
        end
        if s < s1
           s = s1;
           I = i;
           J = j;
        end
    end
end