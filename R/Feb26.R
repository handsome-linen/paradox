# Install and Load Packages ---

library(datasets)

# Load Data ---

head(iris)

# All Data ---

hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species) # Get names and n for each species

# Select by Category ---

# Versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length: Versicolor")

# Virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Virginica")

# Setosa
hist(iris$Petal.Length[iris$Species == "setosa"],
     main = "Petal Length: Setosa")

# Select by Value ---

# Short Petals Only (All Setosa)
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

# Multiple Selectors ---

# Short Virginica Petals Only
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")

# Create Subsample ---

# Format: data[rows, columns]
# LEave rows or columns blank to select all
i.setosa <- iris[iris$Species == "setosa", ]

# Explore Subsample ---

head(i.setosa)
summary(i.setosa$Petal.Length)
hist(i.setosa$Petal.Length)

# Clean Up

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)