function X = permutations(A)
% This function returns all the possible permutations of numbers given as
% elements of matrix A. This will return matrix X which contains all the
% permutations.
%i.e for A = [ 1 2 3], the output X will be 
%X = [ 1 2 3; 1 3 2; 2 1 3; 2 3 1; 3 1 2; 3 2 1]
j = 1;X = sort(A);
while j == 1
    A = next_permutation(A);
    X = [ X; A];
    xm = size(X,1);
    if xm == 1
        continue
    else
        t = [(X(xm,:) == X(xm-1,:))];
        if sum(t) == size(X,2)
            X(xm,:) = [];
            return
        end
    end
end



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