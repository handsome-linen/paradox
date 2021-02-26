# Linear.
# Spread.
# Outliers.
# Correlation.

# Load Packages ---

library(datasets)

# Load Data ---

?mtcars
head(mtcars)

# Plots ---

# Good to first check univariate distributions
hist(mtcars$wt)
hist(mtcars$mpg)

# Basic X-Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

# Add some options
plot(mtcars$wt, mtcars$mpg,
     pch = 19,        # Solid circle
     cex =1.5,        # Make 150% size
     col = "#cc0000", # Red
     main = "MPG as a Function of Weight of Cars",
     xlab = "Weight (in 1000 lbs)",
     ylab = "MPG")

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)