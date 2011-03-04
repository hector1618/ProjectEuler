function A = problem124(n,m)

A(1:n,1) = 1:n;

for  i = 1:n
    A(i,2) = rad(A(i,1));
end

function s=rad(k)
b = factor(k);
[ bn,bm] = size(b);

temp = b(1,1);
s = b(1,1);
for j = 1:bm
    if temp ~= b(1,j)
        s = s*b(1,j);
        temp = b(1,j);
    end
end
