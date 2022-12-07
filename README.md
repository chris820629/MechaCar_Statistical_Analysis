# MechaCar_Statistical_Analysis
Analysis and review the production data for insights that may help the manufacturing team
##Linear Regression to Predict MPG
- based on the analysis screenshot, the Pr values of vehicle length and ground clearance show the non random variable affecting the mpg. Assuming significance level is 0.05, the Pr are significantly lower than the 0.05 assumption
- the data shows R-squared value 0.7149 showing strong relationship between the variables and mpg 
- the linear model did not predict mpg of MechaCar prototypes effectively due to the low Pr value of intercept variable. The signifcantly low value shows that there may be other hidden critical variable to mpg
![Multivariable Linear Regression.png](https://github.com/chris820629/MechaCar_Statistical_Analysis/blob/main/Multivariable%20Linear%20Regression.png)
## Summary Statistics on Suspension Coils
The total summary shows that the variance is 63 lower than the 100 spec. However, looking into lot by lot data, the variance in Lot#3 significantly exceeds the expected spec. 
![Lot Summary.png](https://github.com/chris820629/MechaCar_Statistical_Analysis/blob/main/Lot%20Summary.png)
![Total Summary.png](https://github.com/chris820629/MechaCar_Statistical_Analysis/blob/main/Total%20Summary.png)
## T-Tests on Suspension Coils
Based on the three result images from different lots, only Lot#3 is significant difference in mean comparing to the population mean. This is the lot to be carefully examined.
![Lot_1.png](https://github.com/chris820629/MechaCar_Statistical_Analysis/blob/main/Lot_1.png)
![Lot_2.png](https://github.com/chris820629/MechaCar_Statistical_Analysis/blob/main/Lot_2.png)
![Lot_3.png](https://github.com/chris820629/MechaCar_Statistical_Analysis/blob/main/Lot_3.png)
## Study Design: MechaCar vs Competition
I would look for mpg, horse power metrics from different manufacturers and perform t.test of these variables against my current data to show if our manufactured cars are signifanctly different from others. Null hypothesis would be there is no difference between our cars comparing to other brands. Alternative hypothesis would be our mpg is higher than other brands or our horse power is higher than other brands. In this case, i would use 2-sample t-test to compare two different samples. The data needed for this analysis would be the average mpg and average horse power measured from each individual car from each car manufacturer. 




