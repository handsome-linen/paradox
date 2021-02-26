# Load Packages ---

install.packages("pacman")

require(pacman)
library(pacman)

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)

# Clean Up ---

p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all) # Clear all add-ons
detach("package:datasets", unload = TRUE) # For base

# Clear console
cat("\014")

# Clear mind :)