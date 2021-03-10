# Principal Components

# PCA - two variables, regression, perpendicular distance, collapse, rotate

# Install and Load Packages ---

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)

# Load Data ---

head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)] # Select variables
head(cars)

# Compute PCA ---

# For entire data frame
pc <- prcomp(cars,
             center = TRUE, # Center means to 0 (optional)
             scale = TRUE)  # Set unit varaince (helpful)

# To specify variables
pc <- prcomp(~ mpg + cyl + dis + hp + wt + qsec + am + gear + carb,
             data = mtcars,
             center = TRUE,
             scale = TRUE)

# Examine Results ---

# Get summary stats
summary(pc)

# Screeplot for number of components
plot(pc)

# Get standard deviations and rotation
pc

# See how cases load on PCs
predict(pc) %>% round(2)

# Biplot of first two components
biplot(pc)

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)