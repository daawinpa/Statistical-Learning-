# Homework 1 Startup File 
# -----------------------------------------
# Load libraries
library(tidyverse)
library(FNN)
library(car)

#--------------------------------------------
# Problem 2
knnData <- data.frame(X1 = c(20,18,15,22,23,14),
                      X2 = c(25,43,36,47,42,37),
                      Y = c(4,7,5,8,8,4))

#--------------------------------------------
# Problems 3 and 4

# Read Data from book website
college <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/College.csv")
head(college)
college[college$X=="Miami University at Oxford", ]

# Break into training and test data, DO NOT CHANGE THE SEED!
set.seed(013117)
test_index <- sample(1:777, 277)
test_data <- college[test_index,]
train_data <- college[-test_index,]

# See Page 54 in ISL book for descriptions of each variable

# START CODE HERE...

