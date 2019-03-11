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
- SSR ( Reg Sum of Squares ): Quantifies how far the estimated sloped regression line, yhat, is from the horizontal, ybar (no relationship line).

![SSR]( https://latex.codecogs.com/gif.latex?SSR&space;=&space;\sum_{i=1}^{n}(&space;\hat{y_{i}}&space;-&space;\bar{&space;y&space;}&space;)^2 ).

- SSE ( Error Sum of Squares ): Quantifies how much the data points, yi, vary around the estimated regression line, yhat.
![SSE]( https://latex.codecogs.com/gif.latex?SSE%20%3D%20%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28%20y_%7Bi%7D%20-%20%5Chat%7B%20y_%7Bi%7D%20%7D%20%29%5E2 ).

- SSTO ( Total Sum of Squares ): Quantifies how much the data points, yi, vary around their mean, ybar.
![SSTO]( https://latex.codecogs.com/gif.latex?SSE%20%3D%20%5Csum_%7Bi%3D1%7D%5E%7Bn%7D%28%20y_%7Bi%7D%20-%20%5Cbar%7B%20y_%7Bi%7D%20%7D%20%29%5E2 ).
