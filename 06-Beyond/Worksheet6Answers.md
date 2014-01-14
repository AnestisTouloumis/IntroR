Beyond Biometry - Worksheet 6 *Answers*
========================================================

This worksheet was made in Markdown!

2. Describe the components and arguments of the following function.


```r
largest <- function(x, y, z) {
    a <- c(x, y, z)
    l <- which.max(a)
    paste(a[l], "is the largest number")
}
```


Example

```r
largest(6, 57, 5)
```

```
## [1] "57 is the largest number"
```


Explanation
==========
The function largest takes in three numeric *arguments*, x y and z. The function first line finds the index of the largest numeric value in the vector. The final line outputs the index of the largest number, with a bit of text.

3. Create and test a function that takes in two vectors and determines which is the longer vector. 


```r
a <- c(5, 6, 7, 8, 9)
b <- c(1:20)

longs <- function(x, y) {
    if (length(x) > length(y)) {
        return(paste("x is longer"))
    }
    if (length(x) < length(y)) {
        return(paste("y is longer"))
    }
    if (length(x) == length(y)) {
        return(paste("x and y are the same length"))
    }
}

longs(a, b)
```

```
## [1] "y is longer"
```


This is posted on github!:
