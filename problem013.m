function A=problem013(N)
%n! means n × (n - 1) × ... × 3 × 2 × 1
%Find the sum of the digits in the number 100!
A = [1];
for n = 2:N
    b =0;
    ind = 0;j =1;
    while ind ~= 1
    c = A(1,j)*n;
    c = c+b;
    
    if c >= 10
        A(1,j) = rem(c,10);
        b = floor(c/10);
        A(1,j+1) = b;
        j = j+1;       
    else
        A(1,j) = c;
        b = 0;
        ind = 1;
    end
    end
   end