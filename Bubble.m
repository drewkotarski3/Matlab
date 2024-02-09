function [V, M, t, I, E] = Bubble( iI, iE, iV, ix, iy)
t= [0]; 
% x = [iV]; 
E = [iE];  % Expected Value
I = [iI];  % Interest Rate
V = [iV];  % Valuation at t =  0
M = [iV];    % Market Value   
x = (-ix); %how mcuh interest rate decreases
y = (iy);  %how much expected value increases
i = 1; 
 
      for i = 2:5                  
% %                         i = i + 1; 
t(i) = t(i-1) + 1; 
E(i) = (E(i-1)*y) + E(i-1);  %Choose the expected value to incresae by x%
I(i) =  (I(i-1) * x) + I(i-1) ;   %Choose Interest rate to decrease by y%
M(i) = (V(i-1)*E(i-1))+M(i-1);
V(i) = V(i-1)+  ( ((V(i-1))) * (E(i-1) * I(i-1)));


      end 


end 