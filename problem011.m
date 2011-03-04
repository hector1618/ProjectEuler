function [p ii jj]= problem11(A) 
%Finding the greatest product of four adjacent numbers in any 
%direction (up, down, left, right, or diagonally) 
%in the 20×20 grid( or given matrix)?
[an am] = size(A);
p = 0;ii=0;jj=0;
for i = 1:an%for right and left
    for j = 1:am-3
        p1 = A(i,j)*A(i,j+1)*A(i,j+2)*A(i,j+3);
        if p<p1
            p=p1;
            ii = i;
            jj = j;
        end
    end
end

for j = 1:am% for up and down
    for i = 1:an-3
        p1 = A(i,j)*A(i+1,j)*A(i+2,j)*A(i+3,j);
        if p<p1
            p=p1;
            ii=i;
            jj=j;
        end
    end
end

for i = 1:an-3% for digonal in down-right & up-left direction
    for j = 1:am-3
        p1 = A(i,j)*A(i+1,j+1)*A(i+2,j+2)*A(i+3,j+3);
        if p<p1
            p=p1;
            ii = i;
            jj = j;
        end
    end
end

for i = 4:an%for digonal in down-right direction & up-left direction
    for j = 1:am-3
        p1 = A(i,j)*A(i-1,j+1)*A(i-2,j+2)*A(i-3,j+3);
        if p<p1
            p=p1;
            ii=i;
            jj=j;
        end
    end
end