# n, mean, SD, median, 10% trimmed mean, MAD, min/max,range, skewness,
# kurtosis, & SE

# Install and Load Packages ---

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, 
               rmarkdown, shiny, stringr, tidyr)

library(datasets)

# Load Data ---

head(iris)

# Psych Package ---

# Load psyck package
p_load(psych)

# Get info on package
p_help(psych)
p_help(psych, web = F)

# Describe() ---

# For quantitative variables only.
describe(iris$Sepal.Length) # One quantitative variable
describe(iris)              # Entire data frame

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)