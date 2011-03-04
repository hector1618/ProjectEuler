function A = problem33()
j = 1;
for i1 = 1:9
    for i2 = 0:9
        for i3 = 1:9
            for i4 = 0:9
                if (10*i1+i2)/(10*i3+i4) == i1/i4
                    if i1/i4 < 1
                        if i2 == i3                            
                        A(j,:) = [ i1 i2 i3 i4];
                        j = j+1;
                        end
                    end
                end
            end
        end
    end
end              