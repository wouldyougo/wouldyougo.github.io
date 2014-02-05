## Try R Chapter 5

### Factors

### Пример
### Creating Factors

```r
chests <- c("gold", "silver", "gems", "gold", "gems")
print(chests)
```

```
## [1] "gold"   "silver" "gems"   "gold"   "gems"
```

```r
# ---
types <- factor(chests)
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
as.integer(types)
```

```
## [1] 2 3 1 2 1
```


### Пример
### Plots With Factors

```r
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-21.png) 

```r
# ---
plot(weights, prices, pch = as.integer(types))
legend("topright", c("gems", "gold", "silver"), pch = 1:3)
legend("topright", levels(types), pch = 1:length(levels(types)))
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-22.png) 

```r
# ---
```


### Пример
### ggplot2

```r
# install.packages('ggplot2') help(package = 'ggplot2') ---
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
chests <- c("gold", "silver", "gems", "gold", "gems")
types <- factor(chests)
# ---
require(ggplot2)
```

```
## Loading required package: ggplot2
```

```r
# {r fig.width=10, fig.height=7}
qplot(weights, prices, color = types)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 

```r
# ---
```

