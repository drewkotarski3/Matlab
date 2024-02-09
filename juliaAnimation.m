%Andrew Kotarski 
%Fractal scripts

function juliaAnimation(zmax, c, N)  %Function with required inputs
vec = linspace(-zmax, zmax, 500);  % vec with 500 values between –zMax and zMax. 
[R, I] = meshgrid(vec); %R and I, which will be two real matrices containing 
                        %the real and imaginary parts of a complex matrix Z. 
Z = R + I*1i;  %To make Z add up R and i*I 
M = ones(500);  % matrix M to be the same size as Z.  
M = N*M; %, and whose elements all have the value N
for n = 1:N
    Z = Z.^2 + c; %compute the new Z using the equation 
    
  k = find(abs(Z) >2);  %he indices of all the numbers in Z which have ‘escaped’ 

  M(k) = n; %set those indices in M to have the value of the current loop iteration n.
  Z(k) = NaN;  %Because these numbers have ‘escaped’, we don’t care about them 

    imagesc(vec,vec,atan(0.1*M)); axis xy; drawnow; %animation
end
end 
