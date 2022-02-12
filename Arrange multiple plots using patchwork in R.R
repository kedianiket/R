#Loading package

library(ggplot2)
library(patchwork)

#Reading data

df <- read.csv("Pokemon.csv")

#Creating Plots

#Plot1----HP
p1 <- ggplot(df, aes(x=HP, fill=Legendary)) +
  geom_density(alpha=0.4) +
  theme(legend.position = "none")
#Plot2----ATTACK
p2 <- ggplot(df, aes(x=Attack, fill=Legendary)) +
  geom_density(alpha=0.4) +
  theme(legend.position = "none")
#Plot3---Sp..Def
p3 <- ggplot(df, aes(x=Sp..Def, fill=Legendary)) +
  geom_density(alpha=0.4) +
  theme(legend.position = "none")
#Plot4----Sp..Atk
p4 <- ggplot(df, aes(x=Sp..Atk, fill=Legendary)) +
  geom_density(alpha=0.4) + 
  theme(legend.position = "none")
#Plot5---Defense
p5 <- ggplot(df, aes(x=Defense, fill=Legendary)) +
  geom_density(alpha=0.4) + 
  theme(legend.position = "none") 
#Plot6----Speed
p6 <- ggplot(df, aes(x=Speed, fill=Legendary)) +  
  geom_density(alpha=0.4) + 
  theme(legend.position = "none")
#Plot7----Total
p7 <- ggplot(df, aes(x=Speed, fill=Legendary))  +
  geom_density(alpha=0.4) + 
  theme(legend.position = "none") 

#Arrange plots

#command to arrange the plots
(p1|p2|p3)/(p4|p5|p6)/p7
