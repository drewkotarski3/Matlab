g = 14.6; %recovery rate 
n = 1000;  %individuals 
b = 17.52; % basic reproductive number
tspan= [0, 10]; %10-year period
z0 = [999, 1]; %on day 1 with one infected individual, 

dzdt = @(t,z) [-(b*z(1)*z(2))/n + (g*z(2)); (b*z(1)*z(2))/n - (g*z(2))]; %system of equations
[t,z] = ode45(dzdt, tspan, z0); %Solving system of ODE


plot(t,z(:,1), 'b'); %Plot of individuals not infected 
hold on 
plot(t,z(:,2), 'r'); %plot of individuals that are infected
xlabel('Days') 
ylabel('Indivduals') 
legend({'Population - infected', 'infected'})

%At steady state 16.66% of population are infected 