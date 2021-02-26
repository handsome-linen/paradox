# Load Data ---

library(datasets) # Load built-in data sets

# Summarize Data ---

head(iris) # Show the first six lines of iris data
summary(iris) # Summary statistics for iris data
plot(iris) # Scatterplot matrix for iris data

# Clean Up ---

# Clear package
detach("package:datasets", unload = TRUE) # For base
# Clear plots
dev.off() # Only if there is a plot
# Clear console
cat("\014")
# Edit -> 'Clear Console' or 'CTRL + L'

# Clear mind :)

# Packages
# dplyr, dydyr, stringr, lubridate, httr, ggvis, ggplot2, shyny, rio,
# & rmarkdown