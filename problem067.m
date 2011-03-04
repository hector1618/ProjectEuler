function s_max = problem067(A)
%Find the maximum total from top to bottom in triangle.txt (right click and
%'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.
% Here the triangle is being represented in matrix A
%use xlsread and then 'triml' function to get matrix A
[am,an] = size(A);
for i = 2:am
    for j = 1:i
        if j == 1
            A(i,j) = A(i,j) + A(i-1,j);
            continue
        end
        
        if A(i-1,j-1) < A(i-1,j)
            A(i,j) = A(i,j) + A(i-1,j);
        else
            A(i,j) = A(i,j) + A(i-1,j-1);
        end
    end
end
        
s_max = max(A(am,:));
end