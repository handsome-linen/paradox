# Load Datasets Packages ---

library(datasets)

# Load Data ---

?mtcars
head(mtcars)

# Bar Charts ---

barplot(mtcars$cyl) # Doesn't work

# Need a table with frequencies for each category
cylinders <- table(mtcars$cyl) # Create table
barplot(cylinders) # Bar chart
plot(cylinders) # Default X-Y plot (lines)

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)
