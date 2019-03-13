# Regression Methods
## Learn Regression Methods Once For All

These scripts are based on the lecture notes from STAT 501 - Regression Methods.
This is a course from Pennsylvania State University ( Penn State ).

## Lesson 01 - Simple Linear Regression
This notes describes the basic concepts about a simple linear regression. 
How to measure the strength of linear association between the features and 
How to interpret the coefficient of determination ( Rsquare )

### What is the "Best Fitting Line"??
- The Best Line would be the line the presents the prediction errors as small as possible in some overall sense
- **Least Squares Criterios**: Minimize the sum of the squared prediction errors.
- **Error ( Residual )**: y - yhat

### The Simple Linear Regression Model
The Simple linear regression model fits the four conditions below:
- The mean of the response, at each value of the predictor, is a **Linear function** of the x
- The errors are **Independent**
- The errors, at each value of the predictor, are **Normallly Distribuited**
- The errors, at each value of the predictor, have **Equal Variance**

### The Coefficient of Determination, r-squared
Measure the strenght of the relationship
- SSR ( Reg Sum of Squares ): Quantifies how far the estimated sloped regression line, yhat, is from the horizontal, ybar (no relationship line).

![SSR]( https://latex.codecogs.com/gif.latex?SSR&space;=&space;\sum_{i=1}^{n}(&space;\hat{y_{i}}&space;-&space;\bar{&space;y&space;}&space;)^2 ).

- SSE ( Error Sum of Squares ): Quantifies how much the data points, yi, vary around the estimated regression line, yhat.
![SSE]( https://latex.codecogs.com/gif.latex?SSE%20%3D%20%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28%20y_%7Bi%7D%20-%20%5Chat%7B%20y_%7Bi%7D%20%7D%20%29%5E2 ).

- SSTO ( Total Sum of Squares ): Quantifies how much the data points, yi, vary around their mean, ybar.
![SSTO]( https://latex.codecogs.com/gif.latex?SSE%20%3D%20%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28%20y_%7Bi%7D%20-%20%5Cbar%7B%20y_%7Bi%7D%20%7D%20%29%5E2 ).

- SSTO = SSR + SSE

#### **Coefficient of determination** or **R-squared**: 
Percentage of the variation in y is reduced by taking into account predictor x.
Percentage of the variation in y is 'explained by' the variation in predictor x.

![R-squared]( https://latex.codecogs.com/gif.latex?r%5E2%20%3D%20%5Cfrac%7B%20SSR%20%7D%7B%20SSTO%20%7D%20%3D%201%20-%20%5Cfrac%7BSSE%7D%7BSSTO%7D )
- **r-squared** is a number between 0 and 1.
- If **r-squared = 1**, all of the data points fall perfectly on the regression line. The predictor x accounts for all the variation in y!.
- If **r-squared = 0**, the estimated regression line is perfectly horizontal. The predictor x accounts for none of the variation in y!.

### (Pearson) Correlation Coefficient r
Measure the sign of the relationship

### R-squared Cautions
1. The r-squared quantifies the strength of a **linear** relationship. If r-squared = 0, tells us that if there is a relationship between x and y, it's not linear.

2. A large r-squared value should not be interpreted as meaning that the estimated regression line fits the data well. 
Its large values does suggest that taking into account the predictor is better than not doing so. It just doesn't tell us that we could still do better.

3. The r-squared can be greatly affected by just one data point (or a few data points).

4. Correlation (or association) does not imply causation.

5. Ecological correlations, correlations that are based on rates or averages, tend to overstate the strength of an association.

6. A **statistically significant** r-squared does not imply that the slope Beta1 is meaninfully different from 0.

7. A large r-squared value does not necessarily mean that an useful prediction of the response can be made. It's still possible to get prediction intervals or confidence intervals that are too wide to be useful.

## Lesson 02 - Simple Linear Regression Evaluation
This lesson presents two alternatives methods for testing if a linear association exists between the 
predictor x and the response y in a simple linear regression model.
![B0](https://latex.codecogs.com/gif.latex?H_%7B0%7D%3A%20%5Cbeta_%7B1%7D%20%3D%200 ) versus (https://latex.codecogs.com/gif.latex?H_%7BA%7D%3A%20%5Cbeta_%7B1%7D%20%5Cneq%200)
- The t-test for the slope
- Analysis of variance (ANOVA) F-test

