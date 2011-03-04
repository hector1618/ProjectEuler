function N = problem047()
% The first two consecutive numbers to have two distinct prime factors are:
% 14 = 2 × 7
% 15 = 3 × 5
% The first three consecutive numbers to have three distinct prime factors
% are:
% 644 = 2² × 7 × 23
% 645 = 3 × 5 × 43
% 646 = 2 × 17 × 19. 
% Find the first four consecutive integers to have four distinct primes factors. What is the first of these numbers?
% The function prime_factors_dist_to_n should be defined in the directory.


tic
P = prime_factors_dist_to_n(1000000);%hoping that number is below 100000
toc
D = [];
keyboard
tic
for i = 1:length(P)
    if P(i,4) ~= 0 && P(i,5) == 0
        D = [D; i];
    end
end
length(D)
toc
keyboard

for j = 1:length(D)-3
    D(j,2) = D(j+3,1)-D(j,1);
end

n = find(D(:,2)==3,1);
N = D(n,1);



