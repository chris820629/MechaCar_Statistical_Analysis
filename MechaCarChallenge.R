setwd("~/Desktop/Data/Berkerley Data Analytics Bootcamp/Module_16/R_Analysis/MechaCar_Statistical_Analysis")

library(dplyr)library(dplyr)

car_df <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)

linear_car <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)

summary(linear_car)

##suspension coil analysis 
sus_df <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)

total_summary <- sus_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- sus_df %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

##t-test
t.test(total_summary,mu=1500)

#Lot1
t.test(subset(sus_df$PSI,sus_df$Manufacturing_Lot=='Lot1'),mu=1500)
#Lot2
t.test(subset(sus_df$PSI,sus_df$Manufacturing_Lot=='Lot2'),mu=1500)
#Lot3
t.test(subset(sus_df$PSI,sus_df$Manufacturing_Lot=='Lot3'),mu=1500)



