### Column chart

#library(devtools)
#install_github("rHighcharts", "metagraf")
require(rHighcharts)

# Prepare data
x <- data.frame(USPersonalExpenditure)
colnames(x) <- substr(colnames(x), 2, 5)

# Create new chart
a <- rHighcharts:::Chart$new()

# Set options
a$chart(type = "column")
a$title(text = "US Personal Expenditure")
a$xAxis(categories = rownames(x))
a$yAxis(title = list(text = "Billions of dollars"))

a$data(x)  # add data
a  # a$show()

### Bar chart
a <- rHighcharts:::Chart$new()
a$chart(type = "bar")
a$plotOptions(column = list(stacking = "normal"))
a$title(text = "US Personal Expenditure")
a$yAxis(title = list(text = "US dollars"))

x <- as.data.frame(t(USPersonalExpenditure))
a$xAxis(categories = rownames(x))
a$data(x)
a

### Pie chart
a <- rHighcharts:::Chart$new()
a$title(text = "Fruits")
a$data(x = c("Apples","Bananas","Oranges"), y = c(15, 20, 30), type = "pie", name = "Amount")
a

### Scatter plot
a <- rHighcharts:::Chart$new()
a$title(text = "Student Survey Data")
a$subtitle(text = "Venables, W. N. and Ripley, B. D. (1999) Modern Applied Statistics with S-PLUS")
a$chart(type = "scatter")
a$legend(align = "right", verticalAlign = "middle", layout = "vertical")
a$xAxis(title = list(text= "Age"))
a$yAxis(title = list(text= "Pulse"))

x <- subset(MASS::survey, !is.na(Sex) & Age <= 20)
plyr::ddply(x, .(Sex), function(x) {
  a$data(x = x$Age, y = x$Pulse, name = unique(x$Sex))
  return(NULL)
})
a