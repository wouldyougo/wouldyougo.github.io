#### Try R Chapter 1

## In this first chapter, we'll cover basic R expressions

### Пример
### Expressions

```r
# 
1 + 2
```

```
## [1] 3
```

```r
2 * 3
```

```
## [1] 6
```

```r
"Строки в двойных кавычках!"
```

```
## [1] "Строки в двойных кавычках!"
```


### Пример
### Logical Values

```r
# 
3 < 5
```

```
## [1] TRUE
```

```r
3 == 4
```

```
## [1] FALSE
```

```r
TRUE == T
```

```
## [1] TRUE
```


### Пример
### Variables

```r
# 
x <- 24
x/2
```

```
## [1] 12
```

```r
x
```

```
## [1] 24
```

```r
x <- "Строки в двойных кавычках!"
x
```

```
## [1] "Строки в двойных кавычках!"
```

```r
x <- TRUE
```


### Пример
### Functions

```r
# 
sum(1, 3, 5)
```

```
## [1] 9
```

```r
sqrt(16)
```

```
## [1] 4
```

```r
rep(sqrt(16), times = 3)
```

```
## [1] 4 4 4
```


### Пример
### Help & Examples
```
help(sum)
help(rep)
Displaying examples for the min function:
example(min)
help(source)
```

### Пример
### Files
```
#список файлов в текущей директории
list.files()
#установить текущую директорию
setwd("how_to")
source("example1.R")
```
