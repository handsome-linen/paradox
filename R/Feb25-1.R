# Install and Load Packages ---

library(datasets)

# Load Data ---

head(iris)

# Summary() ---

summary(iris$Species)      # Categorical variable
summary(iris$Sepal.Length) # Quantitative variable
summary(iris)              # Entire data frame

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)