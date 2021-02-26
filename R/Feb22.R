# Shape.
# Outliers.
# Gaps.
# Symmetry.

# Load Packages ---

library(datasets)

# Load Data ---

?iris
head(iris)

# Basic Histograms

hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# Histgram By Group ---

# Put graphs in 3 rows and 1 column
par(mfrow = c(3,1))

# Histograms for each species using option
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "blue")

# Restore graphic parameter
par(mfrow = c(1,1))

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)