%Andrew Kotarski 
%11/09/2022
%Spin function
function spin(x,y,spinz) %function name and inputs
colors = ['r', 'b', 'y', 'g', 'k', 'm', 'c']; 
k = 1; 
for i = 1:spinz %for loop for how much sping
    [x,y] = rotate(x,y,360/spinz); %takes verticies and amount of spin
    hold on
    plot(x,y, colors(k)); %plots spin
    k = k+1;              %interates through colors
    if k > length(colors) %if we reach end of color vector, start at original
        k = 1; 
    end 

end 


   