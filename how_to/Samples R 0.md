### Samples R 0

## install packages 

### Пример
### install.packages

```r
### library='C:/Users/user/Documents/R/win-library/3.0'
install.packages("quantmod")
install.packages("knitr")
```


### Пример
### Install devtools

```r
install.packages("devtools")
require(devtools)
# Please download and install Rtools 3.1 from
# http://cran.r-project.org/bin/windows/Rtools/ and then run find_rtools().
find_rtools()
require(devtools)
```


### Пример
### Install rCharts

```r
# You can install rCharts from github using the devtools package
require(devtools)
# install_github('rCharts', 'ramnathv')
install_github("rCharts", "ramnathv", ref = "dev")
require(rCharts)
```


### Пример
### Install googleVis

```r
install.packages("RJSONIO")
# install.packages('Z:/R&D/Dev Programs/De_ R/Packages/RJSONIO_1.0-3.zip',
# repos = NULL)
require(RJSONIO)
install.packages("googleVis")
# require(googleVis)
suppressPackageStartupMessages(require(googleVis))
```


### Пример
### Install Slidify

```r
require(devtools)
install_github("slidify", "ramnathv")
install_github("slidifyLibraries", "ramnathv")
library(slidify)
```

