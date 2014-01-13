Biometry and Beyond - Worksheet 6
========================================================

User Defined Functions
----------

1. Describe the components and arguments of the following function.


```r
largest <- function(x, y, z) {
    a <- c(x, y, z)
    l <- which.max(a)
    paste(a[l], "is the largest number")
}
```


2. Create and test a function that takes in two vectors and determines which is the longer vector. 
You can also embed plots, for example:


```r
plot(cars)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


