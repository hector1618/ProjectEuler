function P = prime_factors_tree(n)
% This function returns the matrix with all the prime factors of the given
%number. This function returns the distinct prime factors

% we will use concepts of treee while solving this problem.
%The flow is that, we will take the square root of this number and then
%keep going to left of that number still we get some factor of the given
%number. Assuming the given number to be a root,this factor will be the
%left child of root. We will get corresponding right child by dividing the 
%given number by this factors. We will keep procceding till we get all the
%pendant vertices which will give us the prime numbers.

    S=[]; % we will use this as a stack
    n1 = n;
    while left_child(n1)~=1
        n2 = left_child(n1);
        n3 = n1/n2;
        S = [ S n3];
        n1 = n2;
    end
    P=[n1]; % This will contain all the distinct prime factors of the given number
                   %n1 will be prime as its left child is one
    %till this part we formed the all the left childs of given number.The last number 
    %will be one of the prime. To find rest of the prime factors we will
    %use the same procedure in iterative manner 
    while size(S,2)~= 0
        f = S(1,end);
        S(:,end) = [];
        pm = size(P,2);
        for i = 1:pm
            while rem(f,P(1,i))== 0
                f = f/P(1,i);
            end
        end
        
        if f ~= 1
            n1 = f;
            while left_child(n1)~=1
                n2 = left_child(n1);
                n3 = n1/n2;
                S = [ S n3];
                %keyboard
                n1 = n2;
            end
            P=[P n1];
        end
    end
end

function f_l = left_child(f)
    %This function will return the left child of a given element.
    f_l = floor(sqrt(f));
    if f_l^2  == f
        left_child(f_l);
    else
        while rem(f,f_l)~= 0
            f_l = f_l -1;
        end
    end
end