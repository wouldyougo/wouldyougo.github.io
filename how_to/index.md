How to examples
========================================================


## Пример
## Подключение требуемых пакетов

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


## Пример
## Получение объекта DateTime POSIXct

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


## Пример
## Посмотреть датафрейм (в отдельном окне)

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
## посмотреть датафрейм в отдельном окне
View(df)
# 
```


You can also embed plots, for example:


```r
plot(cars)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


