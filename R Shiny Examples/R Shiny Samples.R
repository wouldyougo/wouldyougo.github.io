library(shiny)
runExample("01_hello")

library(shiny)

#shiny::runGitHub('shiny_example', 'rstudio')
shiny::runGitHub('wouldyougo.github.io', 'wouldyougo', subdir = "R Shiny Examples/R Shiny Sample 1/")
shiny::runGitHub('wouldyougo.github.io', 'wouldyougo', subdir = "R Shiny Examples/R Shiny Sample 2/")

library(shiny)
#runApp("~/shinyapp")
setwd("Z:/R&D/R&D Repositories/wouldyougo.github.io/R Shiny Examples")

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

#
runApp("R Shiny Sample 6")

#
runApp("R Shiny Sample 7")

#
runApp("R Shiny Sample 8")

#
runApp("R Shiny Sample 9")

#
runApp("R Shiny Sample 10")


#rCharts
runApp("R Shiny Sample 11")
#Stocks
runApp("R Shiny Sample 12")

