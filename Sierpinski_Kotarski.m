%Andrew Kotarski
% 11/07/2023


close all
vec = [10,100,10000];
for i = 1:3   %for each iteration 10,100,10000
    x = zeros(1,vec(i));  %creates vector for each iteration
    y = zeros(1,vec(i)); 
   for k = 2:vec(i)         
       random = randi([1,3]); %random generator
       if random == 1           %rule 1
       x(k)= x(k-1)*.5;
       y(k) = y(k-1)*.5;
       elseif random == 2      %rule 2
        x(k) = x(k-1)*.5 +.25; 
        y(k)= y(k-1) * .5 + sqrt(3)/4;

       else
    x(k) = x(k-1)*.5 + .5;  %rule 3
    y(k) = .5*y(k-1);
       end 
   end
   figure
   plot(x,y,'^')   %plotting each figure
end