function total = problem055(N)
%A number that never forms a palindrome through the reverse and add process
%is called a Lychrel number. Due to the theoretical nature of these numbers, 
%and for the purpose of this problem, we shall assume that a number is Lychrel 
%until proven otherwise. 
%In addition you are given that for every number below ten-thousand,
%it will either (i) become a palindrome in less than fifty iterations, or, 
%(ii) no one, with all the computing power that exists,
%has managed so far to map it to a palindrome.
%How many Lychrel numbers are there below ten-thousand(or N ingeneral)?
%The function ispalin_s.m should be defined in the directory
%The function digital_add.m should be defined in the directory

total = 0;% to keep count on Lychrel numbers
F = [1];
i = 1;
while i < N
    f = islychrel(F);
    if f == 0
        total = total+1;
    end
    F = digital_add(F,1);
    i = i +1;
end
    



function f = islychrel(F)
%To check whether the given number (in matrix form) is lychrel number or not.
f =0;
k = 0;
while k <= 50
    Fm  = size(F,2);
    for i = 1:Fm
        F1(1,i) = F(1,Fm-i+1);
    end
    F = digital_add(F1,F);
    f = ispalin_s(F);
    if f == 1
        return
    end
    k = k+1;
end