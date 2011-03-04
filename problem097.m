function p = problem097()
%non-Mersenne prime which contains 2,357,207 digits: 
%28433×2^(7830457)+1.
%Find the last ten digits of this prime number.

%   28433×2^(7830457)+1 
%= 28433x2x2^(7830456) + 1
%= 28433*2*2^(2*2*2*3*509*641) + 1 
%= 28433*2*4096^(2*509*641) + 1 because 2^12 = 4096
p = 1;i = 0;
while i < 7830457
    p = p*2;
    p = mod(p,10000000000);
    i = i +1;
end
