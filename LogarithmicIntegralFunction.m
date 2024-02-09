function LogarithmicIntegralFunction(N)
x = 2:N;
S = zeros(1,N-1);
for i = 1:length(x)
S(i) = integral(@(t) 1./log(t), 2, x(i));
end
 plot(x,S)