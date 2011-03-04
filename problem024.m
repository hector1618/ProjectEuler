function A = problem024
%A permutation is an ordered arrangement of objects. 
%For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. 
%If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. 
%The lexicographic permutations of 0, 1 and 2 are:
%012   021   102   120   201   210
%What is the millionth lexicographic permutation of the digits 0, 1, 2, 3,
%4, 5, 6, 7, 8 and 9?
%The function next_permutation.m should be defined in the directory
A = [ 0 1 2 3 4 5 6 7 8 9];
t =1;
while t < 1000000
    A = next_permutation(A);
    t = t+1;
end