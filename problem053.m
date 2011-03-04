function T= problem053(N)
%How many, not necessarily distinct, values of  (n)C(r), for 1 ? n  ?
%100,(or any N in general) are greater than one-million?

%The highest value of (n)C(r) for any perticular n is when r = n/2
% so for any n, we will start looking for values from n/2 and keep reducing
% it till it comes below 1000000.
T = 0; %this will store total number of count
for n = 1:N
    r = floor(n/2);
    n_C_r = factorial(n)/(factorial(r)*factorial(n-r));
    if n_C_r >= 1000000
        if r == n/2
            T = T+1;
            while n_C_r >= 1000000
                r = r - 1;
                n_C_r = factorial(n)/(factorial(r)*factorial(n-r));
                T = T + 2;
            end
            T = T-2;
        else
            T = T+2;
            while n_C_r >= 1000000
                r = r - 1;
                n_C_r = factorial(n)/(factorial(r)*factorial(n-r));
                T = T + 2;
            end
            T = T - 2;
        end
    end
end