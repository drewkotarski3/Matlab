function [V, M, B, w, t] = Finalbubble( iI, iE, iV, ix, iy)
t= [0]; 
% x = [iV]; 
E = [iE];  % Expected Value
I = [iI];  % Interest Rate
V = [iV];  % Valuation at t =  0
M = [(iE * iV) + iV];    % Market Value
B = [ 1 - ((M - V)/M)];  % Bubble    
x = (1- ix); %how mcuh interest rate decreases
y = (1-iy);  %how much expected value increases
i = 1; 
w = [0]; 

while M(i) < 12*V(i)   % Choose 12 times the intial value as an arbitrary
                        % Value for cut off (may need to find better value)
 i = i + 1; 
t(i) = t(i-1) + 1; 
E(i) = E(i-1) /y;  %Choose the expected value to incresae by .10%
I(i) = I(i-1)*x;   %Choose Interest rate to decrease by .01%
V(i) = (V(i-1)*E(i-1))+V(i-1);
M(i) = ((V(i-1)*E(i-1))+V(i-1)) / I(i-1) - E(i-1);
B(i) = ( 1 - ((M(i)-V(i))/M(i))) ;
w(i) = t(i)*(10^(3)); 


end 
end 