##############
##HOMEWORK 6##
##############
#Question2
#Peng-Robinson
Vbar=3.0
T=370.
alpha=16.44
R=0.083145
beta=0.07245
P=(R*T/(Vbar-beta))-(alpha/((Vbar**2)+(2*Vbar*beta)-(beta**2)))   ##=Vbar(Vbar+beta)+beta(Vbar-beta)
cat("Peng-Robinson ",P,"\n")

