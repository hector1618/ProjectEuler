function A =problem051()
%By replacing the 1^st digit of *3, it turns out that six of the nine possible values: 
%13, 23, 43, 53, 73, and 83, are all prime.
%By replacing the 3^rd and 4^th digits of 56**3 with the same digit,
%this 5-digit number is the first example having seven primes among the 
%ten generated numbers, yielding the family
%: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. 
%Consequently 56003, being the first member of this family, is the smallest prime with this property.
%Find the smallest prime which, by replacing part of the number 
%(not necessarily adjacent digits) with the same digit, is part of an eight prime value family.
%The file prime.mat should be defined in the directory
%The function digital_factors.m should be defined in the directory

A = [];
B = primes(3000000);
Bn = size(B,2);
for i = 1:Bn
    F = digital_factors(B(1,i));
    S0= find(F== 0);
    s0n = size(S0,2);
    if s0n > 1
        t = family_member(F,S0,s0n);
        A = [ A; B(1,i) t];
    end
    
    S1= find(F==1);
    s1n = size(S1,2);
    if s1n >1
        if S1(1,2) ~= size(F,2)%making sure that 1 is not last digit
            t = family_member(F,S1,s1n);
            A = [ A; B(1,i) t];
        end
    end
    
    S2= find(F==2);
    s2n = size(S2,2);
    if s2n > 1
        t = family_member(F,S2,s2n);
        A = [ A; B(1,i) t];
    end
end


function tmax = family_member(F,S,sn)
%It will return the number of family members
I = [];%storing all the pairing of indices
%sn = size(S,2); getting this as an input
%keyboard
for i = 1:sn
    j = i+1;
    while j <= sn
        I = [ I ; S(1,i), S(1,j)];
        j = j +1;
    end
end
Im = size(I,1);
k = F(1,S(1,1));
%k = 0;
for i = 1:Im
    t = 1;
    tmax = 0;
    while k<9
        k = k+1;
        F(1,I(i,:)) = [k k];
        f = value(F);
        if isprime(f) == 1
            t = t +1;
            if t > tmax
                tmax = t;
            end
        end
    end
end

function f = value(F)
%Makes a number from its digital factors
f = 0;
Fn = size(F,2);
for i = 1:Fn
    f = F(1,i)*10^(Fn-i)+f;
end
    