# RAnalysis-


## MPG Regression 
In this challenge, we preformed a series of statistical tests and created a technical report that provides our interpretation. Using multiple linear regression, we designed a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.
Correlation:
•	We looked at the correlation between vehicle.weight and mpg. We have determined the r-value to be 0.0906831, which is a slight positive correlation. 
Linear Regression between Vehicle Weight MPG
Call:
lm(formula = MechaCars$vehicle.weight ~ MechaCars$mpg, data = MechaCars)

Residuals:
   Min     1Q Median     3Q    Max 
 -3942  -1032   -144   1300   3863 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)    5668.99     812.66   6.976 8.01e-09 ***
 MechaCars$mpg    10.75      17.04   0.631    0.531    
 ---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1858 on 48 degrees of freedom
Multiple R-squared:  0.008223,	Adjusted R-squared:  -0.01244 
F-statistic: 0.398 on 1 and 48 DF,  p-value: 0.5311

Multi- regression:
To better predict the mpg dependent variable, we added other continuous variables of interest such as vehicle weight, vehicle height, spoiler angle and ground clearance as independent variables to our multi-regression analysis. Using the lm () and summary() functions, we produced the coefficients for each variable (see below). In addition, using the plotly library, we plotted vehicle.length, vehicle.weight, and mpg.  

Call:
lm(formula = mpg ~ vehicle.weight + vehicle.length + spoiler.angle + 
    ground.clearance, data = MechaCars)

Residuals:
     Min       1Q   Median       3Q      Max 
-21.3395  -4.1155  -0.2094   6.8789  17.2672 

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.076e+02  1.576e+01  -6.823 1.87e-08 ***
vehicle.weight    1.277e-03  6.948e-04   1.837   0.0728 .  
vehicle.length    6.240e+00  6.609e-01   9.441 3.05e-12 ***
spoiler.angle     8.031e-02  6.656e-02   1.207   0.2339    
ground.clearance  3.659e+00  5.394e-01   6.784 2.13e-08 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.853 on 45 degrees of freedom
Multiple R-squared:  0.7032,	Adjusted R-squared:  0.6768 
F-statistic: 26.65 on 4 and 45 DF,  p-value: 2.277e-11
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 
	From our summary output, we can see the probability that each coefficient contributes a random amount of variance to the mpg values in the dataset. Intercept, ground.clearance, and vehicle lengths are the only variables that is statistically unlikely to provide random amounts of variance to the linear model. 
Is the slope of the linear model considered to be zero? Why or why not?
	According to the summary output above, p value was small (2.277e-11) indicating significance. In addition, there is strong evidence against the null hypothesis, so we can reject the null hypothesis and the slope is not equal to zero. 
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
	No, the linear model does not predict the mpg of MechaCar protypes effectively due to lack of significant variables. This may overfitting in that it may fail to generalize and predict data correctly in the future. 
## Suspension Coil Summary
Using the suspension coil test data, we provided a summary of statistics for the suspension coil’s pounds-per-inch variables. We identified the mean, median, variance, and SD (see below).

summary(Suspension)
   VehicleID   Manufacturing_Lot      PSI      
 V40607 :  2   Lot1:50           Min.   :1452  
 V10053 :  1   Lot2:50           1st Qu.:1498  
 V1037  :  1   Lot3:50           Median :1500  
 V10773 :  1                     Mean   :1499  
 V11514 :  1                     3rd Qu.:1501  
 V11605 :  1                     Max.   :1542  
 (Other):143       

In addition, we identified the SD to be 7.892627 and variance to be 62.29356 for the dataset. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Based on our analysis, the current manufacturing data meet this design specification since the variance is 62.29356 for PSI, which is less than 100 pounds per inch.
Suspension Coil T-Test
Using the same suspension coil data, we determined (used the one-sample t-test) if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch. Below were the results from our analysis. 

## One Sample t-test

data:  Suspension$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 

Once we calculated our p-value (0.06028), the value is above our significance level and we can say that we do not have sufficient evidence to reject the null hypothesis, and we can say that the suspension coil’s pound-per-inch results are statistically similar from the mean population results of 1,500 pounds per inch.

## Design Your Own Study
To design a study that compares the performance of the MechaCar prototype vehicle to other comparable vehicles on the market, we would need include additional metrics to our dataset such as cost, fuel efficiency, color options, horsepower, car model, the other vehicles’ data,  etc. With the data, we would compare multiple preform additional statistical tests. 

To compare, cost and fuel efficiency with other comparable vehicles, we would use the linear regression to compare their correlation. We hope to see a linear relationship with cost and fuel and for the slope to be not equal to zero. To do this, we need to collect continues data for MachaCar and other vehicles. 
H0: MechaCar is not fuel efficient and cost effective as other vehicles [The slope of the linear model is zero, or m = 0]
Ha : MechaCar is fuel efficient and cost effective as other vehicles [The slope of the linear model is not zero, or m ≠ 0]
Once we preform statistical analysis, we can use r-squared and p-value to determine the significance between the cost and fuel efficiency.

To preform analysis on categorical data, such as car color and car model, we can use a Chi-squared Test as both variables are independent. For this, we can test the hypothesis whether the car module is independent of the color at .05 significance level. 

Using the chisq.test function, we can find the p-value. If the p-value is greater than the 0.05 significance level, we do not reject the null hypothesis that car model is independent of the exercise level.  
