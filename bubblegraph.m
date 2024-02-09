[ V, M, t, I, E] = Bubble(.07, .10, 172900 , .0060, .3293);
plot(t,M,  'b'); 
hold on
plot(t, V, 'r');
hold on; 

title('Market Valuation and True Valuation of Housing Market From 2000-2004')
xlabel('Time') 
ylabel('USD') 
legend('Market Valuation','Actual Valuation')