function f1= problem250()
%format long eng
%Find the number of non-empty subsets of {1^(1), 2^(2), 3^(3),..., 250250^(250250)}, 
%the sum of whose elements is divisible by 250. Enter the rightmost 16 digits as your answer.
A(1: 250 ,1) = [0:249 ]';
A(1:250 , 2) = zeros(250,1);
tic
for j = 1:250
     p=1;
    
        for i = 1:j
            p = p * j;
            p = mod(p,250);
        end
        A(p+1,2)=A(p+1,2) + 1;
        j1=j+250;
        %qwe=0;
       while j1<=250250
           for q = 1:250
               p = p*j;
               p=mod(p,250);
           end
           A(p+1,2)=A(p+1,2) + 1;
           j1=j1+250;
           %qwe=qwe+1;
       end
end
toc

% now we are ready with matrix A which contains the the remainder and no of
% time it had accoured. Now the talk is to find the possible combination
% which will add up to 250. 
% The peoblem is equavalent to make 5 rupees when u hav 6 coins of 1 rupee,
% 4 coins of 2 rupee, 2 coins of 5 rupee.
% mathematically the peoblem is to find co-effient of x^5 in the 
% (1+x^2+x^3+x^4+x^5+x^6)(1+x^2+x^4+x^6+x^8)(1+x^5+x^10)
% If the questions is to find the number of way of making  multiples of 5 rupee
% than the best way is to take modulo 5 of powers as x and x^6 are
% equvalent to 2*x.
% so first we have to convert A matrix into the series of equations. The
% coefficient matrix will be represented by C whose one row contains all
% the coeffieient of one euqation. Hence the dimetion of matrix C is (no of
% nonempty rows in Z (152 as calculated)x250
% lets keep aside all the numbers which are divisible by 250. i.e all 25025
% entries in A(1,2)
tic
A1 = [];
for i = 1:250
    if A(i,2) ~= 0
        A1 = [ A1; A(i,:)]; 
    end
end
cm = size(A1,1);
C = zeros(cm,250);
toc
tic
for i = 1:cm
    p1 = A1(i,1);
    p2 = A1(i,2);
    j = 1;p = p1;
    while j <= p2
        C(i,p+1) = C(i,p+1)+1;
        p = p + p1;
        p = mod(p,250);
        j = j+1;
    end
end
toc
tic
F = zeros(1,250); % this matrix will be storing the final coefficient of x's i.e after calculating
r = 1;
while r < cm
    for i1 = 1:250
        for i2 = 1:250
            l = C(r,i1)*C(r+1,i2);
            i3 = i1+i2-1;
            if i3 > 250
                i3 = i3-250;
            end
            F(1,i3) = mod(F(1,i3)+l,10^16);
        end
    end
    C(r+1,:) =F;
     r = r+1;
end
toc

f1 = F(1,1);
%we have to multiply this ans by (2^25025-1)
%we will find f1*32^5005 -f1
j = 1;
while j < 25025
    f1=f1*2;
    f1=mod(f1,10^16);
    j = j+1;
end

f1 = f1 - F(1,1);