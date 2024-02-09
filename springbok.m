function [t,y] = springbok(r,b,a,iy)
h = .1; 
t= [0];
y = [iy];
i = 1;
dydt = @(t,y) (r-((b*y)*sin(a*t)))*y; 
while t(i) < 12
 i = i + 1; 
t(i) = t(i-1) + h; 
y(i) = y(i-1)+h * dydt(t(i-1),y(i-1)); 
end 
