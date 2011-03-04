function problem052
%It can be seen that the number, 125874, and its double, 251748, 
%contain exactly the same digits, but in a different order.
%Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x and 6x
%contain the same digits.
%The function digital_add.m should be defined in the domain.
%The function digital_mul.m should be defined in the domain.

%Lets talk abt 4 digit nos.Since '6x' also contains the same number of digit as that of 'x', we
%should have  6x < 9999 which implies x < 1666.5 and x > 1000 so we have
%less numbers to check for the condition.

ki = 3; % we will start checking for 3 digit no.s
f = 1;
X = [ ]; % for storing all the values
while f == 1
    N = [ 1 zeros(1,ki)]; %writting number in matrix form
    i1 = 10^(ki+1)/6;
    i1 = i1 - 10^ki;
    for i = 1:i1
        N = digital_add(N,1);
        Np = prod(N);%prod of all digits
        Ns = sum(N);%sum of all digits
        %If the sum and product of digits are same,it is likely that they
        %are permutations of each other
        k = 1;
        for j = 2:6
            Nj = digital_mul(N,j);
            Npj = prod(Nj);
            Nsj = sum(Nj);
            if Npj == Np && Nsj == Ns
                k = k +1;
                if k == 6
                    %At this time we need to check for every digit
                    %explicitely
                   Nn = size(N,2);
                   t = 1;
                   for l = 1:Nn
                        ind = N(1,l);
                        F = find(Nj == ind);
                        Fn = size(F,2);
                        if Fn >= 1
                            t = t +1;
                            if t == Nn
                                N
                                keyboard
                            end
                        else
                            break
                        end
                    end
                end
            end
        end
    end
    ki = ki+1;
end
end