
install.packages("geomtextpath")

library(geomtextpath)
library(ggplot2)


df <- read.csv("Pokemon.csv")

#Plot1----HP
ggplot(df, aes(x=HP, fill=Legendary, label = Legendary)) +
  geom_textdensity(size = 6, fontface = 2, hjust = 0.2, vjust = 0.3) +
  geom_density(alpha=0.4) +
  theme(legend.position = "none")


#Plot2----HP
ggplot(df, aes(x=HP, fill=Legendary, label = Legendary)) +
  geom_textdensity(size = 6, fontface = 3, spacing =50,hjust = "ymax", vjust = -0.2,linecolor = "red4", linetype = 2, color = "red") +
  
  theme(legend.position = "none")



#Plot3----HP
ggplot(df, aes(x=HP, fill=Legendary, label = Legendary)) +
  geom_textdensity(size = 6, fontface = 2, hjust = 0.2, vjust = 0.3, linecolor = "red4", linetype = 2, color = "deepskyblue4") +
  theme(legend.position = "none")
