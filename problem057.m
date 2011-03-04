function total =problem057(N)
%It is possible to show that the square root of two can be expressed as an infinite continued fraction.
%? 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...
%By expanding this for the first four iterations, we get:
%1 + 1/2 = 3/2 = 1.5
%1 + 1/(2 + 1/2) = 7/5 = 1.4
%1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
%1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...
%The next three expansions are 99/70, 239/169, and 577/408, but the eighth expansion, 
%1393/985, is the first example where the number of digits in the numerator exceeds the 
%number of digits in the denominator.
%In the first one-thousand(or N in general) expansions, how many fractions contain 
% a numerator with more digits than denominator?

total = 0;%to keep the count
%for getting thousand expansions:
i = 0;n = 2;
while i < N
    den = n +1;
    num = n;
    n = 2+1/n;
    [log10(den*1000000)  log10(num*1000000)]
    keyboard
    if (ceil(log10(den)) - ceil(log10(num))) >= 1
        total = total +1;
    end    
    i = i +1;
end