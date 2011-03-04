function S = probelm023()
%A number n is called deficient if the sum of its proper divisors is less than n and 
%it is called abundant if this sum exceeds n.
%As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, 
%the smallest number that can be written as the sum of two abundant numbers is 24. 
%By mathematical analysis, it can be shown that 
%all integers greater than 28123 can be written as the sum of two abundant
%numbers.
%Find the sum of all the positive integers which cannot be written as the
%sum of two abundant numbers.(or sum of all th e integers below n whic
%can't be written as sum of two abundand nos)
S = 276;% sumation of 1 to 23 numbers
tic
A = abundant_no_s(28124);
toc

tic
for i = 24:28124
        [v1 i1] =find(A<= i/2,1,'last');%if n = s1+s2 then one part has to be less than or equal to n/2
        %keyboard
        f1 = 0;
        for k = 1:i1
            s1 = A(1,k);
            s2 = i-s1;
            [v2 i2] = find(A==s2);
            %[ i s1 s2 ]
            %keyboard
            if v2 == 1
                f1 = 1;
                break
            end
        end
        
        if f1 == 1
            continue
        else
            S = S + i;
            %disp('this goes in')
            %[ i S]
            %keyboard
        end
end
toc



function F = abundant_no_s(N)
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
        F = [ F ; B(i,1)];
    end
end
F = F';