%numerically evaluate populations over time
params=[0.7, 0.3];
f =@(t,u) sir_model(t,u,params);
u0=[1000;50;0];
t_start=0; t_end=10;
[t,u]=ode45(f,linspace(t_start,t_end,1000),u0);
%visualize how the populations behave over time 
clf
plot(t,u)
title('SIR Model')
legend('Susceptible','Infected','Recovered')
