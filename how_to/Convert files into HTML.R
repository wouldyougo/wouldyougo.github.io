#knitr — Weaves Rmd files into plain markdown (.md) files
#markdown — Converts markdown files into HTML documents
library(knitr)
library(markdown)

knit("index.Rmd")
markdownToHTML("index.md", "index.html")

knit("Try R Chapter 0.Rmd")
knit("Try R Chapter 1.Rmd")
knit("Try R Chapter 2.Rmd")
knit("Try R Chapter 3.Rmd")
knit("Try R Chapter 4.Rmd")
knit("Try R Chapter 5.Rmd")
knit("Try R Chapter 6.Rmd")
knit("Try R Chapter 7.Rmd")

markdownToHTML("Try R Chapter 7.md", "Try R Chapter 7.html")
markdownToHTML("Try R Chapter 0.md", "Try R Chapter 0.html")
markdownToHTML("Try R Chapter 1.md", "Try R Chapter 1.html")
markdownToHTML("Try R Chapter 2.md", "Try R Chapter 2.html")
markdownToHTML("Try R Chapter 3.md", "Try R Chapter 3.html")
markdownToHTML("Try R Chapter 4.md", "Try R Chapter 4.html")
markdownToHTML("Try R Chapter 5.md", "Try R Chapter 5.html")
markdownToHTML("Try R Chapter 6.md", "Try R Chapter 6.html")

knit("Samples R 0.Rmd")
knit("Samples R 1.Rmd")
knit("Samples R 2.Rmd")
knit("Samples R 3.Rmd")

markdownToHTML("Samples R 0.md", "Samples R 0.html")
markdownToHTML("Samples R 1.md", "Samples R 1.html")
markdownToHTML("Samples R 2.md", "Samples R 2.html")
markdownToHTML("Samples R 3.md", "Samples R 3.html")

