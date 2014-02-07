# Creating box plots for quantitative variables

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

# Make boxplots of Age and Times using the defaults
boxplot(sn$Age)

# Add title, colors, etc.
boxplot(sn$Age,
        col = "beige",
        notch = T,
        horizontal = T,
        main = "Ages of Respondents\nSocial Networking Survey of 202 Users",
        xlab = "Age of Respondents")