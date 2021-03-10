# Assignment Operator ---

# Use "<-" to assign values to a variable. This is read as "gets." It can go
# the other direction "->" and you can use an equal sign "=" but those are 
# generally poor form in R.

# In RStudio, the shortcut "ALT" + "-" inserts the assignment operator and 
# a space: "<- "

# Colon Operator ---

# Assigns number 0 through 10 to x1
x1 <- 0:10
x1

# Descending order
x2 <- 10:0
x2

# SEQ ---

?seq

# Ascending values (duplicates 1:10)
(x3 <- seq(10))

# Specify change in values
(x4 <- seq(30, 0, by = -3))

# Enter Multiple Values with c ---

# c = concatenate (or combine or collect)
?c

x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)
x5

# Scan ---
 ?scan

x6 <- scan()
# After running this command, go to console
# Hit return after each number
# Hit return twice to stop
x6

# Rep ---
?rep
x7 <- rep(TRUE, 5)
x7

# Repeat set
x8 <- rep(c(TRUE, FALSE), 5)
x8

# Repeat items in set
x9 <- rep(c(TRUE, FALSE), each = 5)
x9  

# Clean Up ---

# Clear environment
rm(list = ls())

# Clear console
cat("\014")