function problem050_c(N)
tic
p=primes_to_n(N);
num=length(p);
pc = zeros(1,num);
%this part of code is to write algo for existing function cumsum
k =0;
for j = 1:num
    k = k + p(1,j);
    pc(1,j) = k;
end
%pc=cumsum(p);

toc
 
 
tic
bestd=0;
for i=1:num
        s=0;
        for j=(i+bestd):num
                s=pc(j)-pc(i);
 
                if s>p(num)
                        break;
                end
 
                m=[];
                m=find(p==s);
                if length(m)==1
                        d=j-i;
                        if d>bestd
                                %besti=i;
                                %bestj=j;
                                bestd=d;
                                bestm=m;
                        end
                end
        end
end
toc
 
p(bestm)