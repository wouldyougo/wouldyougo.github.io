# Creating bar charts for categorical variables

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

site.freq <- table(sn$Site)  # Creates table from Site

barplot(site.freq)  # Creates barplot in new window
#? barplot  # For more information on customizing graph

# To put the bars in descending order, add "order":
barplot(site.freq[order(site.freq, decreasing = T)])

# Draw the bars horizontally (but turn off decreasing)
barplot(site.freq[order(site.freq)], horiz = T)

# Make Facebook blue and all others gray by specifying a
# vector with named colors for gray and RGB for Facebook blue
# fbba = "Facebook blue/ascending" for horizontal bars
# And now breaking code across lines for clarity
fbba <- c(rep("gray", 5),
          rgb(59, 89, 152, maxColorValue = 255))
fbba
barplot(site.freq[order(site.freq)], 
        horiz = T, 
        col = fbba)

# Turn off borders with "border = NA"
# Add title with "main" with "\n" to break line
# Add subtitle with "sub"
barplot(site.freq[order(site.freq)],
        horiz = T,         # Horizontal
        col = fbba,        # Use colors "fbba"
        border = NA,       # No borders
        xlim = c(0, 100),  # Scale from 0-100
        main = "Preferred Social Networking Site\nA Survey of 202 Users",
        xlab = "Number of Users")
        
# Immense amount of control available through
# "par {graphics}"