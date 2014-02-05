## Try R Chapter 4

### Summary Statistics

### Пример
### Mean

```r
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c("One-Eye", "Peg-Leg", "Smitty", "Hook", "Scooter", "Dan", 
    "Mikey", "Blackbeard")
# ---
mean(limbs)
```

```
## [1] 3.5
```

```r
barplot(limbs)
abline(h = mean(limbs))
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 


### Пример
### Median

```r
limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
names(limbs) <- c("One-Eye", "Peg-Leg", "Smitty", "Hook", "Scooter", "Dan", 
    "Mikey", "Davy Jones")
# ---
mean(limbs)
```

```
## [1] 4.75
```

```r
barplot(limbs)
abline(h = mean(limbs))
# ---
median(limbs)
```

```
## [1] 4
```

```r
abline(h = median(limbs))
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Пример
### Standard Deviation

```r
# ---
pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
meanValue <- mean(pounds)
# ---
deviation <- sd(pounds)
deviation
```

```
## [1] 14501
```

```r
# ---
barplot(pounds)
abline(h = meanValue)
abline(h = meanValue + deviation)
abline(h = meanValue - deviation)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 

