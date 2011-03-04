function D = digital_add(A,B)
%The function returns the row matrix C which is the digital sum of row
%matrix A and B.
am = length(A);
bm = length(B);

if bm > am
    P = [ zeros(1,bm-am) A];
    Q = B;
end
 
if am > bm
    P = [ zeros(1,am-bm) B];
    Q = A;
end

if am == bm
    P = A;
    Q = B;
end

pm = length(P);
d = 0;j =1;
for i = pm:-1:1
    c = P(1,i) + Q(1,i);
    c = c + d;
    if c >= 10
        C(1,j) = c -10;
        d = 1;
        C(1,j+1) = 1;
        j = j +1;
    else
        C(1,j) = c;
        d = 0;
        j = j +1;
    end
end

cm = length(C);
for i = 1:cm
    D(1,i) = C(1,cm-i+1);
end