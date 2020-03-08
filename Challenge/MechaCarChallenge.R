
MechaCars <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

head(MechaCars) #import dataset into ggplot2


library(ggplot2)

##Liner Model with Vehicle Weight
summary(lm(MechaCars$vehicle.weight ~ MechaCars$mpg,MechaCars))
mode1l <- lm(MechaCars$vehicle.weight ~ MechaCars$mpg,MechaCars) #create linear model
yvals <- mode1l$coefficients["MechaCars$mpg"]*MechaCars$mpg + mode1l$coefficients['(Intercept)'] #determine y-axis values from linear model
plt20 <- ggplot(MechaCars,aes(x=mpg,y=vehicle.weight)) #import dataset into ggplot2
plt20 + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

cor(MechaCars$vehicle.weight,MechaCars$mpg) #calculate correlation coefficient


# Multi- linear regression 

lm(mpg ~ vehicle.weight +  vehicle.length + spoiler.angle + ground.clearance, data=MechaCars) #generate multiple linear regression model

car_plot <- summary(lm(mpg ~ vehicle.weight +  vehicle.length + spoiler.angle + ground.clearance, data=MechaCars))
car_plot

library(plotly)
plot_ly(data = MechaCars, z = ~mpg, x = ~vehicle.length, y = ~vehicle.weight, color = ~AWD, colors = c('#0C4B8E' ,'#BF382A'),opacity = 0.5) %>%
  add_markers( marker = list(size = 2)) %>% layout(title="Correlation between mpg, vehicle length, vehicle weight and AWD")
plot_ly(data = MechaCars, z = ~mpg, x = ~vehicle.length, y = ~vehicle.weight, color = ~spoiler.angle, colors = c('#0C4B8E' ,'#BF382A'),opacity = 0.5) %>%
  add_markers( marker = list(size = 2)) %>% layout(title="Correlation between mpg, vehicle length, vehicle weight and spoler angle")
plot_ly(data = MechaCars, z = ~mpg, x = ~vehicle.length, y = ~vehicle.weight, color = ~ground.clearance, colors = c('#0C4B8E' ,'#BF382A'),opacity = 0.5) %>%
  add_markers( marker = list(size = 2)) %>% layout(title="Correlation between mpg, vehicle length, vehicle weight and ground clearance")

#Suspension_Coil

Suspension <- read.csv(file = 'Suspension_Coil.csv')
summary(Suspension)
STDD = sd(Suspension$PSI)
head(STDD)
Var = var(Suspension$PSI)
head(Var)
##Suspension Coil T-Test

t.test(Suspension$PSI, mu=1500)





