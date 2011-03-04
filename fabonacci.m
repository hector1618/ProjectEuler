function A = fabonacci(n)
%This function is used to find fabonacci no
f1 = 1;
f2 = 1;
i = 3;
A = [ 1 1;2 1];
while i <= n
    A(i,1) = i;
    A(i,2) = f2 + f1;
    f1 = f2;
    f2 = A(i,2);
    i = i +1;
end