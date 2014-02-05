## Samples R 1
### How to examples

### Пример
### Подключение требуемых пакетов

```r
require(quantmod)
```

```
## Loading required package: quantmod
## Loading required package: Defaults
## Loading required package: xts
## Loading required package: zoo
## 
## Attaching package: 'zoo'
## 
## Следующие объекты скрыты from 'package:base':
## 
##     as.Date, as.Date.numeric
## 
## Loading required package: TTR
## Version 0.4-0 included new data defaults. See ?getSymbols.
```

```r
require(rCharts)
```

```
## Loading required package: rCharts
```

```r
suppressPackageStartupMessages(require(googleVis))
```


### Пример
### Получение объекта DateTime POSIXct

```r
txt <- "Date  Time  value\n20010101 000000  0.833\n20010101 000500  0.814\n20010101 001000  0.794\n20010101 001500  0.772"
print(txt)
```

```
## [1] "Date  Time  value\n20010101 000000  0.833\n20010101 000500  0.814\n20010101 001000  0.794\n20010101 001500  0.772"
```

```r

df <- read.table(text = txt, header = TRUE, colClasses = c("character", "character", 
    "numeric"))
df$DateTime <- as.POSIXct(paste(df$Date, df$Time), format = "%Y%m%d %H%M%S")
```


### Пример
### Посмотреть датафрейм (в отдельном окне)

```r
## Посмотреть датафрейм
print(df)
```

```
##       Date   Time value            DateTime
## 1 20010101 000000 0.833 2001-01-01 00:00:00
## 2 20010101 000500 0.814 2001-01-01 00:05:00
## 3 20010101 001000 0.794 2001-01-01 00:10:00
## 4 20010101 001500 0.772 2001-01-01 00:15:00
```


```r
## посмотреть датафрейм в отдельном окне This code block are displayed in a
## fixed-width font but not evaulated
```

```
View(df)
```

### Пример
### Опубликовать rCharts на rpubs или gist

```r
require(RJSONIO)
require(rCharts)
names(iris) = gsub("\\.", "", names(iris))
r1 <- rPlot(SepalLength ~ SepalWidth | Species, data = iris, color = "Species", 
    type = "point")
# r1$publish('Scatterplot', host = 'gist')
r1$publish("Scatterplot", host = "rpubs")
```


### Пример
### При возникновении ошибки
```
## Error: SSL certificate problem, verify that the CA cert is OK. Details:
## error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate verify failed
```

```r
## Можно добавить строку в файл Rprofile c:\Program
## Files\R\R-3.0.2\library\base\R\Rprofile
options(rpubs.upload.method = "internal")

## другой вариант с помощью RCurl
library(RCurl)
# Set SSL certs globally
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
```


### Пример
### reproduce the post

```r
library(slidify)
author("mydeck")
slidify("index.Rmd")
system("open index.html")
publish("mydeck", host = "dropbox")
```



### Пример
### Настройка chunk options

```r
library(knitr)
# 
opts_chunk$get()
```

```
## $eval
## [1] TRUE
## 
## $echo
## [1] TRUE
## 
## $results
## [1] "markup"
## 
## $tidy
## [1] TRUE
## 
## $cache
## [1] FALSE
## 
## $dependson
## NULL
## 
## $cache.path
## [1] "cache/"
## 
## $cache.vars
## NULL
## 
## $ref.label
## NULL
## 
## $child
## NULL
## 
## $engine
## [1] "R"
## 
## $prompt
## [1] FALSE
## 
## $comment
## [1] "##"
## 
## $autodep
## [1] FALSE
## 
## $fig.keep
## [1] "high"
## 
## $fig.show
## [1] "asis"
## 
## $fig.align
## [1] "default"
## 
## $fig.path
## [1] "figure/"
## 
## $fig.ext
## NULL
## 
## $dev
## [1] "png"
## 
## $dpi
## [1] 72
## 
## $dev.args
## NULL
## 
## $fig.width
## [1] 7
## 
## $fig.height
## [1] 7
## 
## $fig.env
## [1] "figure"
## 
## $fig.cap
## NULL
## 
## $fig.scap
## NULL
## 
## $fig.lp
## [1] "fig:"
## 
## $fig.pos
## [1] ""
## 
## $out.width
## NULL
## 
## $out.height
## NULL
## 
## $out.extra
## NULL
## 
## $resize.width
## NULL
## 
## $resize.height
## NULL
## 
## $external
## [1] TRUE
## 
## $sanitize
## [1] FALSE
## 
## $purl
## [1] TRUE
## 
## $highlight
## [1] TRUE
## 
## $size
## [1] "normalsize"
## 
## $warning
## [1] TRUE
## 
## $error
## [1] TRUE
## 
## $message
## [1] TRUE
## 
## $background
## [1] "#F7F7F7"
## 
## $split
## [1] FALSE
## 
## $include
## [1] TRUE
## 
## $interval
## [1] 1
## 
## $aniopts
## [1] "controls,loop"
```

```r
opts_chunk$get("results")
```

```
## [1] "markup"
```

```r
opts_chunk$set(results = "asis")
opts_chunk$get("results")
```

```
## [1] "asis"
```

```r
opts_chunk$set(fig.width = 7, fig.height = 5)
```


```
opts_chunk$get()
для отключения символов комментария comment установить в NA
knitr::opts_chunk$set(comment = NA, results = 'asis')
или еще проще:
{r comment = NA, results = 'asis', message = F}
```
