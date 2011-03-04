function B = next_permutation(A)
%This function returns the next permutation of the elements in A in the
%accending order
an =length(A);
t = [A==sort(A,'descend')];
if sum(t) == an
    B = A;
    return
end

i =an;
while A(i)<=A(i-1)
    i = i-1;
end
j = i-1;
B = A(1,1:j-1);
C = sort(A(1,j:end),'ascend');
[v1 i1] = find(C == A(1,j),1,'last');
B(1,j) = C(1,i1+1);
C(:,i1+1)=[];
B = [B C];