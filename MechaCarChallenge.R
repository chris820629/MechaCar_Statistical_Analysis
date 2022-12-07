setwd("~/Desktop/Data/Berkerley Data Analytics Bootcamp/Module_16/R_Analysis/MechaCar_Statistical_Analysis")

library(dplyr)library(dplyr)

car_df <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)

linear_car <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_df)

summary(linear_car)

##suspension coil analysis 
sus_df <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)

total_summary <- sus_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- sus_df %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

