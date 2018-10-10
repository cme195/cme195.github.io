
# Model building

Using models to understand data
We have introduced models using simulated data.

Now we discuss how to progressively build up a model for real data.

We will proceed iteratively:
    
    find patterns with visualisation,
make them concrete and precise with a model,
repeat, replacing the old response variable with the residuals.
Knowing when to stop is not easy.


Our goal is to transition

from implicit knowledge in the data and your head
to explicit knowledge in a quantitative model.

There are more automated ways, useful for very large and complex data.

Date-time data in R


Formulas with interactions
In the sim3 dataset, there is a categorical and a continuous predictor.

ggplot(sim3, aes(x=x1, y=y)) + geom_point(aes(color = x2)) 


We could fit two different models

mod1 <- lm(y ~ x1 + x2, data = sim3)  # Model without interactions
mod2 <- lm(y ~ x1 * x2, data = sim3)  # Model with interactions

Models with interactions
grid <- sim3 %>% data_grid(x1, x2) %>% # data grid for two variables
    gather_predictions(mod1, mod2)       # predictions from both models

ggplot(sim3, aes(x=x1, y=y, color=x2)) +   
    geom_point() +                       # plot data points
    geom_line(data=grid, aes(y=pred)) +  # add predictions for each model
    facet_wrap(~ model)                  # show one plot for each model


The model that uses * has a different slope and intercept for each line.

Residuals with interactions
Which model should we choose? Let’s look at the residuals

sim3 <- sim3 %>% gather_residuals(mod1, mod2)

ggplot(sim3, aes(x=x1, y=resid, color = x2)) + 
    geom_point() + facet_grid(model ~ x2)


There is little obvious pattern in the residuals for mod2.

Interactions of continuous variables
In the sim4 dataset, there are two continuous predictors.

p1 <- ggplot(sim4, aes(x=x1, y=y)) + geom_point(aes(color = x2))
p2 <- ggplot(sim4, aes(x=x2, y=y)) + geom_point(aes(color = x1))




Interactions models can be fit in the same way as before.

mod1 <- lm(y ~ x1 + x2, data = sim4)  # Model without interactions
mod2 <- lm(y ~ x1 * x2, data = sim4)  # Model with interactions

Interaction models (II)
Left: without interactions. Right: with interactions.

Formulas with transformations
You can perform transformations inside the model formula.

If your transformation involves +, *, ^, or -, you need to wrap it in I().

Approximating non-linear functions
You can use transformations to approximate non-linear functions.

Taylor’s theorem: you can approximate any smooth function with an infinite sum of polynomials.


For example, poly() evaluates orthogonal polynomials

model_matrix(df, y ~ poly(x, degree = 2))
## # A tibble: 3 x 3
##   `(Intercept)` `poly(x, degree = 2)1` `poly(x, degree = 2)2`
##           <dbl>                  <dbl>                  <dbl>
## 1          1.00 -0.707                                  0.408
## 2          1.00 -0.0000000000000000785                 -0.816
## 3          1.00  0.707                                  0.408

Alternative: splines (piecewise polynomials), from the splines package.

Approximating non-linear functions (example)
Approximating with orthogonal polynomials of different degrees.



mod1 <- lm(y ~ poly(x, 1), data = sim5)
mod2 <- lm(y ~ poly(x, 2), data = sim5)
mod3 <- lm(y ~ poly(x, 3), data = sim5)
mod4 <- lm(y ~ poly(x, 4), data = sim5)

grid <- sim5 %>% 
    data_grid(x = seq_range(x, n = 50, expand = 0.1)) %>% 
    gather_predictions(mod1, mod2, mod3, mod4, .pred = "y")





