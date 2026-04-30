p_guess=[0.5, 0.1]; %initial guess
u0=[995,50,0]; %initial susceptible, infected, recovered population
time=[0, 2, 4, 6, 8, 10, 12, 14]; 
i_val=[5, 12, 28, 65, 120, 180, 210, 190]; %infected persons at time in t_val
f =@(p) error_sir(p,time,i_val,u0); %objective function i.e error
lb=[0,0];
ub=[1,1]; %bounds for beta,gamma
options=optimoptions('fmincon','Display','iter');
p_opt = fmincon(f,p_guess,[],[],[],[],lb,ub,[],options); %function to minimize error

fprintf('Estimated values \n Beta: %f    Gamma: %f \n \n',p_opt(1),p_opt(2))
function err=error_sir(p,t_val,i_val,u0) %error function
    f_val =@(t,u) sir_model(t,u,p);
    [~, u_sim] = ode45(f_val, t_val, u0);
    err = sum((i_val' - u_sim(:,2)).^2);
end