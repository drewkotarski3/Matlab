x = 1; 
y = 2; 
r = .5; 
th = 0:pi/50:2*pi;

head_x = r * cos(th) + 2*x;
head_y = r * sin(th) + 2*y;
 

 axis([0 10 0 10]);
a = circle(head_x, head_y, r); 

plot(a); 
hold on ;


