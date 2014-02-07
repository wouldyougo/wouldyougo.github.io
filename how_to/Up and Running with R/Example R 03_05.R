# Up and Running with R
# Ex03_05
# Calculating descriptives

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)
summary(sn$Age)  # Summary for one variable
summary(sn)      # Summary for entire table (inc. categories)

# Tukey's five-number summary: minimum, lower-hinge
#     (i.e., first quartile), median, upper-hinge
#     (i.e., third quartile), maximum
# Doesn't print labels
fivenum(sn$Age)

# Alternate descriptive statistics
# Gives n, mean, standard deviation, median, trimmed mean
#   (10% by default),median absolute deviation from median
#   (MAD), min, max, range, skew, kurtosis, and
#   standard error.
# Options for listwise deletion of missing data, methods of 
#   calculating median/skew/kurtosis, amount of trimming, etc.
# Note: Converts categories to sequential numbers and does
#   stats; can be useful in certain situations; marks with *
install.packages("psych")
library("psych")
describe(sn)