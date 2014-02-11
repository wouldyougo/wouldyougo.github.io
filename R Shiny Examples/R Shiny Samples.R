library(shiny)
runExample("01_hello")
runExample("08_html")

help(shiny)
#example(shiny)
#browseVignettes(package = "shiny")
library(help = "shiny")

#shiny::runGitHub('shiny_example', 'rstudio')
shiny::runGitHub('wouldyougo.github.io', 'wouldyougo', subdir = "R Shiny Examples/R Shiny Sample 1/")
shiny::runGitHub('wouldyougo.github.io', 'wouldyougo', subdir = "R Shiny Examples/R Shiny Sample 2/")

#runApp("~/shinyapp")
setwd("Z:/R&D/R&D Repositories/wouldyougo.github.io/R Shiny Examples")

library(shiny)

#Hello Shiny
runApp("R Shiny Sample 1")

#Shiny Text
runApp("R Shiny Sample 2")

#Reactivity
runApp("R Shiny Sample 3")

#Inputs & Outputs
runApp("R Shiny Sample 4")

#Sliders
runApp("R Shiny Sample 5")

#Tabsets
runApp("R Shiny Sample 6")

#DataTables
runApp("R Shiny Sample 7")

#More Widgets
runApp("R Shiny Sample 8")

#upload data
runApp("R Shiny Sample 9")

#download file
runApp("R Shiny Sample 10")

#HTML UI
runApp("R Shiny Sample 11")

#rCharts
runApp("R Shiny Sample 20")

#Stocks
runApp("R Shiny Sample 21")

