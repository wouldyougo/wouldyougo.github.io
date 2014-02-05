### Samples R 2

## How to examples

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
### Посмотреть датафрейм (в отдельном окне)
```
## Посмотреть датафрейм
print(df)
### Посмотреть датафрейм в отдельном окне
View(df)
```
