# Creating 3-D scatterplots

# Load data file about Google searches by state
google <- read.csv("google_correlate.csv", header = T)
names(google)

# Spinning 3D scatterplot
# Install and load rgl package
#install.packages("rgl")
library("rgl")
plot3d(google$data_viz,  # x variable
       google$degree,    # y variable
       google$facebook,  # z variable
       xlab = "data_viz",
       ylab = "degree",
       zlab = "facebook",
       col  = "red", 
       size = 3)