function check1_103
%Forming set of rules
%First rule : no sum of two subset is equal

 % huge matrix where ans are store

A = [ 0 20 31 38 39 40 42 45];

for i1 = 1:8
    for i2 = 1:8
        for i3 = 1:8
            for i4 = 1:8
                for i5 = 1:8
                    for i6 = 1:8
                        for i7 = 1:8
                        X(z) = A(i1) + A(i2) +A(i3) +A(i4) +A(i5) +A(i6) +A(i7);
                        z = z +1;
                        end
                    end
                end
            end
        end
    end
end
    