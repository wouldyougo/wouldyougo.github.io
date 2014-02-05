## Try R Chapter 2

### Matrices

### Пример
### Matrices

```r
matrix(0, 3, 4)
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    0    0    0    0
## [2,]    0    0    0    0
## [3,]    0    0    0    0
```

```r

# ---
a <- 1:12
print(a)
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10 11 12
```

```r
matrix(a, 3, 4)
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    4    7   10
## [2,]    2    5    8   11
## [3,]    3    6    9   12
```

```r

# ---
plank <- 1:8
plank
```

```
## [1] 1 2 3 4 5 6 7 8
```

```r

# ---
dim(plank) <- c(2, 4)
print(plank)
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    3    5    7
## [2,]    2    4    6    8
```

```r

# ---
matrix(1, 5, 5)
```

```
##      [,1] [,2] [,3] [,4] [,5]
## [1,]    1    1    1    1    1
## [2,]    1    1    1    1    1
## [3,]    1    1    1    1    1
## [4,]    1    1    1    1    1
## [5,]    1    1    1    1    1
```


### Пример
### Matrix Access

```r
print(plank)
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    3    5    7
## [2,]    2    4    6    8
```

```r
plank[2, 3]
```

```
## [1] 6
```

```r
plank[1, 4]
```

```
## [1] 7
```

```r
plank[1, 4] <- 0
plank[2, ]
```

```
## [1] 2 4 6 8
```

```r
plank[, 4]
```

```
## [1] 0 8
```

```r
plank[, 2:4]
```

```
##      [,1] [,2] [,3]
## [1,]    3    5    0
## [2,]    4    6    8
```


### Пример
### 

```r
elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0
contour(elevation)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-31.png) 

```r
persp(elevation)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-32.png) 

```r
persp(elevation, expand = 0.2)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-33.png) 

```r
contour(volcano)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-34.png) 

```r
persp(volcano, expand = 0.2)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-35.png) 

```r
image(volcano)
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-36.png) 


### Пример
### 


