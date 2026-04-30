%%defining the pde system
function du_dt = sir_model(t,u,p)
s=u(1); i=u(2); r=u(3);
beta=p(1); %infection rate 
gamma=p(2); %recovery rate
b=beta*s*i; %infected population
g=gamma*i; %recovered population
S=-b; %susceptible
I=b-g; %infected
R=g; %recovered
du_dt=[S; I; R]; 
end