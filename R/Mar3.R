# Hierarchical Clustering

# Hierarchical vs. set k, Measures of distance, Divisive vs. agglomerative

# Euclidean distance, hierarchical clustering, & divisive method

# Install and Load Packages ---

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)

# Load Data ---
?mtcars
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)] # Select Variables
head(cars)

# Compute and Plot Clusters ---

# Save hierarchical clustering to "hc." Use pipes from dplyr (%>%).
hc <- cars    %>% # Get cars data
      dist    %>% # Compute distance/dissimilarity matrix
      hclust      # Compute hierarchical clusters

plot(hc)

# Add Boxes to Plot ---
rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green4")
rect.hclust(hc, k = 5, border = "darkred")

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")

# Clear packages
detach("package:datasets", unload = TRUE)
