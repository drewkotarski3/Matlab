%Andrew Kotarski
% Newtons estimation 

x = [1]; 
i = 2; 
x(2) = x(1) - f(x(1))/fp(x(1)); 
f = @(x) .5*cos(x) - exp(x) + 1; 
fp = @(x) -exp(x) -.5*sin(x); 


while abs(x(i)-x(i-1)) > 10^(-6)
    i = i +1; 
    x(i) = x(i-1) - f(x(i-1))/fp(x(i-1)); 
end
x
fzero(f,1)
