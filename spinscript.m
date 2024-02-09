%Andrew Kotarski 
%11/09/2022
%Spin script
close all
xsquare = [3 8 8 3 3]; 
ysquare = [3 3 8 8 3]; 
xpetal = [0 2 8 6 0];  
ypetal = [0 4 5 2 0]; 
drewshapex = [1 3 5 3 4]; 
drewshapey = [1 5 3 5 4]; 
figure
spin(xsquare, ysquare, 50); 
figure
spin(xpetal, ypetal, 50); 
figure
spin(drewshapex, drewshapey, 50); 
