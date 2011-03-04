function D = problem49b(C)
C = C';D = [];
k = 1;
while k<length(C)
    if C(1,k) == C(1,k+1) && C(1,k+1) == C(1,k+2)
        if C(2,k) == C(2,k+1) && C(2,k+1) == C(2,k+2)
            if C(3,k+1)-C(3,k) == C(3,k+2) - C(3,k+1)
                D = [ D; C(3,k) C(3,k+1) C(3,k+2)];
            end
        end
    end
    k = k +1;
end
