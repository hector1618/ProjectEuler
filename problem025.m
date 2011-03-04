function j = problem025(n)
%The 12th term, F_(12), is the first term to contain three digits.
%What is the first term in the Fibonacci sequence to contain 1000 digits?
%(or n in general)
%The function digital_add.m should be defined in the directory
f1 = [1];
f2 = [1];
i = 1;j =3; 
while i < n
    a = digital_add(f2,f1);
    f1 = f2;
    f2 = a;
    j = j +1;
    i = size(a,2);
end

j = j -1;