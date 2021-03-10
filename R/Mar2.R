# csv, txt, xlsx, json

# Install and Load Packages ---

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# About Excel Files ---
browseURL("http://j.mp/2aFZUrJ")

# Importing with rio ---

# csv
rio_csv <- import("mbb.csv") # Workspace loaded from Desktop/.RData
head(rio_csv)

# txt
rio_txt <- import("mbb.txt")
head(rio_txt)

# Excel xlsx
rio_xlsx <- import("mbb.xlsx")
head(rio_xlsx)

# Data Viewer ---

?View
View(rio_csv)

# Read.table for txt Files ---

# R's built-in function for text files (used by rio)

# Load a spreadsheet that has been saved as tab-delimited text file. Need
# to give complete address to file. This command gives an error on  
# missing data but works on complete data.

r_txt1 <- read.table("mbb.txt", header = TRUE) # Get a warning message

# This works with missing data by specifying the separator: t\ is for
# tabs, sep = "," for commas. R converts missing to "NA"
r_txt2 <- read.table("mbb.txt",
                     header = TRUE,
                     sep = "\t")

# Read.csv for csv Files ---

# R's built-in function for csv files (used by rio)

# Don't have to specify delimiters for missing data because csv means
# "comma separated values"
trends.csv <- read.csv("mbb.csv", header = TRUE)

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")