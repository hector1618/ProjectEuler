function s =  problem036(n)
%The decimal number, 585 = 1001001001_(2) (binary), is palindromic in both bases.
%Find the sum of all numbers, less than one million,(n in general) which are palindromic in base 10 and base 2.
%(Please note that the palindromic number, in either base, may not include leading zeros.)
%The function ispalin.m should be defined in the directory
%The function convert_to_base2 should be defined in the directory
s = 0;
%F = [];
for i = 1:n
    p = ispalin(i);
    if p == 1
        A = convert_to_base2(i);
        q = ispalin_s(A);%check the subfunction ispalin_s
        if q == 1
            %F = [ F i];
            s = s + i;
        end
    end
end
end

%defining subfunction ispalin_s
function k = ispalin_s(A) 
% this function takes matrix as an input argument and return 1 if it is
% palindromic or 0 if it is not
k = 0;
[ am an ] = size(A);
if rem(an,2) == 0
    s = sum(A(1:an/2) == A(an:-1:an/2+1));
    if  s == an/2 % checking the condition for palendrome
        k = 1;
    end
else
    s = sum(A(1:(an-1)/2) == A(an:-1:(an+3)/2));
    if  s == (an-1)/2
        k = 1;
    end
end
end

