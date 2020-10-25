##############
##HOMEWORK 6##
##############
#Extra
#Peng-Robinson
c7 = 0.00060696
c6 = -0.0033566
c5 = -0.058757
c4 = 1.0306 
c3 = -7.5884
c2 = 33.258
c1 = -200
roots = polyroot(c(c1,c2,c3,c4,c5,c6,c7))
cat("Propane density: ",roots,"\n") 
