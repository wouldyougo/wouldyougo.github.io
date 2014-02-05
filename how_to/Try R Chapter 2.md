## Try R Chapter 2

### Vectors

### Пример
### Vectors

```r
c(4, 7, 9)
```

```
## [1] 4 7 9
```

```r
c("a", "b", "c")
```

```
## [1] "a" "b" "c"
```

```r
c(1, TRUE, "three")
```

```
## [1] "1"     "TRUE"  "three"
```


### Пример
### Sequence Vectors

```r
5:9
```

```
## [1] 5 6 7 8 9
```

```r
seq(5, 9)
```

```
## [1] 5 6 7 8 9
```

```r
seq(5, 9, 0.5)
```

```
## [1] 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0
```

```r
9:5
```

```
## [1] 9 8 7 6 5
```


### Пример
### Vector Access

```r
sentence <- c("walk", "the", "plank")
sentence
```

```
## [1] "walk"  "the"   "plank"
```

```r

sentence[3]
```

```
## [1] "plank"
```

```r
sentence[1]
```

```
## [1] "walk"
```

```r
sentence[3] <- "dog"
sentence[4] <- "to"
sentence
```

```
## [1] "walk" "the"  "dog"  "to"
```

```r

sentence[c(1, 3)]
```

```
## [1] "walk" "dog"
```

```r
sentence[2:4]
```

```
## [1] "the" "dog" "to"
```

```r
sentence[5:7] <- c("the", "poop", "deck")
sentence
```

```
## [1] "walk" "the"  "dog"  "to"   "the"  "poop" "deck"
```


### Пример
### Vector Names

```r
ranks <- 1:3
names(ranks) <- c("first", "second", "third")
ranks
```

```
##  first second  third 
##      1      2      3
```

```r
ranks["first"]
```

```
## first 
##     1
```

```r
ranks["third"] <- 4
ranks
```

```
##  first second  third 
##      1      2      4
```


### Пример
### Vector Math

```r
a <- c(1, 2, 3)
a + 1
```

```
## [1] 2 3 4
```

```r
a/2
```

```
## [1] 0.5 1.0 1.5
```

```r
a * 2
```

```
## [1] 2 4 6
```

```r
b <- c(4, 5, 6)
a + b
```

```
## [1] 5 7 9
```

```r
a - b
```

```
## [1] -3 -3 -3
```

```r
a == c(1, 99, 3)
```

```
## [1]  TRUE FALSE  TRUE
```

```r
a < b
```

```
## [1] TRUE TRUE TRUE
```

```r
sin(a)
```

```
## [1] 0.8415 0.9093 0.1411
```

```r
sqrt(a)
```

```
## [1] 1.000 1.414 1.732
```


### Пример
### NA Values

```r
a <- c(1, 3, NA, 7, 9)
sum(a)
```

```
## [1] NA
```

```r
help(sum)
```

```
## starting httpd help server ... done
```

```r
sum(a, na.rm = TRUE)
```

```
## [1] 20
```


### Пример
### Plotting One Vector

```r
vesselsSunk <- c(4, 5, 1)
barplot(vesselsSunk)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-71.png) 

```r
names(vesselsSunk) <- c("England", "France", "Norway")
barplot(vesselsSunk)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-72.png) 

```r

barplot(v <- 1:10)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-73.png) 


### Пример
### Scatter Plots

```r
x <- seq(1, 20, 0.1)
y <- sin(x)
plot(x, y)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-81.png) 

```r
# 
values <- -10:10
absolutes <- abs(values)
plot(values, absolutes)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-82.png) 


### Пример
### 



### Пример
### 


