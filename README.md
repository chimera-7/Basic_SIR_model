# Basic SIR Model
This is a MATLAB implementation of a very basic SIR model, accounting for infection rate and recovery rate. Based on recorded data, 
The SIR model is a system of partial differential equations used to visualize the spread of infectious diseases. This model tracks the changes of populations of Susceptible (Never infected), Infected (actively carrying the disease), Recovered (infected previously but cured now) individuals.
# Parameter Estimation
Given a set of data indexed by time (number of infected individuals), and the initial population sizes, we are able to construct a model by estimating the infection rate (Beta) and recovery rate (Gamma). The sum of squares error is considered as the objective function, which is minimised using the fmincon() command from the Optimization Toolbox.  
# Assumptions:
1. There are no births/deaths/migrations
2. Once recovered, a person is immunised and cannot be infected again.
3. Infection rate and Recovery rate are both greater than 0 and less than or equal to 1.
