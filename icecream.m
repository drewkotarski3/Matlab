clear figure
%creating cone
t = 0:.1*pi:2*pi; 
r = 0:.1:2; 
o = 0:.1:pi;
 [T,R] = meshgrid(t,r); 
 x = R.*cos(T); 
 y = R.*sin(T); 
 z = 4.*R; 
 u = mesh(x,y,z);

%shading
shading interp ;
%edgecolor, and face color
set(u,'edgecolor','none','facecolor',[0 0 0])




 hold on

%creating sphere
v = 2; 

[O,T] = meshgrid(o,t); 
a = v.*cos(T).*sin(O); 
b = v.*sin(T).*sin(O); 
c = v.*cos(O); 
w  = mesh(a,b,c + 8); 

%edgecolor, face color
set(w,'edgecolor','none','facecolor',[.1 .9 .1])
%lighting
light         % create a light
lighting none   
axis image
