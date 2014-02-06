## Try R Chapter 6

### Data Frames

### Пример
### Data Frames

```r
chests <- c("gold", "silver", "gems", "gold", "gems")
types <- factor(chests)
# ---
print(chests)
```

```
## [1] "gold"   "silver" "gems"   "gold"   "gems"
```

```r
print(types)
```

```
## [1] gold   silver gems   gold   gems  
## Levels: gems gold silver
```

```r
levels(types)
```

```
## [1] "gems"   "gold"   "silver"
```

```r
# ---
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
# ---
print(weights)
```

```
## [1] 300 200 100 250 150
```

```r
print(prices)
```

```
## [1]  9000  5000 12000  7500 18000
```

```r
# ---
treasure <- data.frame(weights, prices, types)
print(treasure)
```

```
##   weights prices  types
## 1     300   9000   gold
## 2     200   5000 silver
## 3     100  12000   gems
## 4     250   7500   gold
## 5     150  18000   gems
```


### Пример
### Data Frame Access

```r
treasure[[2]]
```

```
## [1]  9000  5000 12000  7500 18000
```

```r
treasure[["weights"]]
```

```
## [1] 300 200 100 250 150
```

```r
treasure$prices
```

```
## [1]  9000  5000 12000  7500 18000
```

```r
treasure[["types"]]
```

```
## [1] gold   silver gems   gold   gems  
## Levels: gems gold silver
```

```r
# ---
```


### Пример
### Loading Data Frames

```r
# list.files()
read.csv("Data Try R/targets.csv")
```

```
##      Port.Population.Worth
## 1    Cartagena;35000;10000
## 2  Porto Bello;49000;15000
## 3      Havana;140000;50000
## 4 Panama City;105000;35000
```

```r
read.csv("Data Try R/targets.csv", as.is = TRUE)
```

```
##      Port.Population.Worth
## 1    Cartagena;35000;10000
## 2  Porto Bello;49000;15000
## 3      Havana;140000;50000
## 4 Panama City;105000;35000
```

```r
read.csv("Data Try R/targets.csv", as.is = TRUE, sep = ";")
```

```
##          Port Population Worth
## 1   Cartagena      35000 10000
## 2 Porto Bello      49000 15000
## 3      Havana     140000 50000
## 4 Panama City     105000 35000
```

```r
# ---
read.table("Data Try R/infantry.txt", sep = "\t")
```

```
##            V1       V2
## 1        Port Infantry
## 2 Porto Bello      700
## 3   Cartagena      500
## 4 Panama City     1500
## 5      Havana     2000
```

```r
read.table("Data Try R/infantry.txt", sep = "\t", header = TRUE)
```

```
##          Port Infantry
## 1 Porto Bello      700
## 2   Cartagena      500
## 3 Panama City     1500
## 4      Havana     2000
```

### Пример
### Merging Data Frames

```r
targets <- read.csv("Data Try R/targets.csv", as.is = TRUE, sep = ";")
infantry <- read.table("Data Try R/infantry.txt", sep = "\t", header = TRUE)
# ---
mrg <- merge(x = targets, y = infantry)
mrg
```

```
##          Port Population Worth Infantry
## 1   Cartagena      35000 10000      500
## 2      Havana     140000 50000     2000
## 3 Panama City     105000 35000     1500
## 4 Porto Bello      49000 15000      700
```


### Пример
### cor.test

```r
# targets <- read.csv('Data Try R/targets.csv', as.is = TRUE, sep=';')
# infantry <- read.table('Data Try R/infantry.txt', sep='\t', header=TRUE)
# mrg <- merge(x = targets, y = infantry) mrg ---
cor.test(mrg$Population, mrg$Infantry)
```

```
## 
## 	Pearson's product-moment correlation
## 
## data:  mrg$Population and mrg$Infantry
## t = Inf, df = 2, p-value < 2.2e-16
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
##  1 1
## sample estimates:
## cor 
##   1
```

```r
# ---
line <- lm(mrg$Infantry ~ mrg$Population)
line
```

```
## 
## Call:
## lm(formula = mrg$Infantry ~ mrg$Population)
## 
## Coefficients:
##    (Intercept)  mrg$Population  
##       2.27e-13        1.43e-02
```

```r
plot(mrg$Population, mrg$Infantry)
abline(line)
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

