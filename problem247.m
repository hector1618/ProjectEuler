function A = problem247()
%
%Matrix A will contain
% A(1,1) = x-coordinate i.e. x1 
%A(1,2) = y-coordinate i.e. y1
%A(1,3) = area of  square formed at (x1,y1)
%A(1,4) = left index
%A(1,5) = down index
% WE will follow the convention that onces the square is made at (x1,y1) we
% will make right square first i.e. at (x0,y1) and than we will make square
% above that. i.e at (x1,y0)
A = [ 1, 0 , ((1-sqrt(5))/2)^2, 0 ,0 ]; % this is for the first square that will be formed at (1,0)
%A(2,:) = [  (1-sqrt(5))/2, 0 , 0 , 1,0]; % this is for square at  

% we assume that x1 and y1 are the coordinate where we are standing and
% hence the talk is to find x0 and y0.
for  j = 1:1000000% hoping that we will get result within first 50000 trangles
    %Extracting all the values
    x1 = A(j,1);
    y1 = A(j,2);
     x0 = (sqrt((x1-y1)^2+4)+(x1-y1))/2;
     y0 = 1/x0;
     area = (x0-x1)^2;
    % all the values which are needed to move to next step is calculated.
    % now the tast is to form two row matrix which will join these matrix
    % to the original A matrix
    A1 = [ x0,y1,0,A(j,4)+1,A(j,5)];% the area column is kept to zero as it will be filled in coming iterations
    A2 = [ x1,y0,0,A(j,4), A(j,5)+1];
    %FIll the area calculated in the approprate column
    A(j,3) = area;
    % joining the new formed info
    A = [ A; A1;A2];
    %keyboard
end
    

% u can do rest of the work using excel
    
    
    
    
    