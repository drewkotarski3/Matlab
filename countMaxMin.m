function [ma, mi] = countMaxMin(A)
%initialze matrix B to zeros 
ma = 0; 
mi = 0; 


 
%loop through interior rows and columns 
for i = 2 : size(A,1) - 1 
    for j = 2 : size(A,2) - 1 
        if A(i,j) >=  A(i,j+1) &&  A(i,j) >= A(i,j-1) && A(i,j) >=  A(i+1,j) && A(i,j) >=  A(i-1,j) 
            %compare current A(i,j) to neighbors to see if it is max
            ma = ma +1;  %increment if it is a max
        elseif A(i,j) <=  A(i,j+1) &&  A(i,j) <= A(i,j-1) && A(i,j) <=  A(i+1,j) && A(i,j) <=  A(i-1,j)
            %compare current A(i,j) to neighbors to see if it is min
               mi = mi +1;   %incremement if it is a min
        end 
    end 
    
end 
        
        
   

      

 