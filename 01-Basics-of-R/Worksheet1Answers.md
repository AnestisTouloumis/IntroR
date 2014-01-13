Worksheet #1 - Basics of R - *Answers*
===========================
The most important aspect to learn about R, and perhaps programming in general, is that tasks are completed sequentially. Large functions are objects built on small steps. Code is written into the script, run in the console, and plots are rendered on the right pane to visualize results.  

The goal of this worksheet is begin enganging with R on basic levels, including computing arithmatic, saving objects, and subsetting vectors. 

Basic Math
---------

R can compute all commonly used arithmatic operations. The user inputs the parameters into a function, or specifies the relationship among objects, the result is returned in the console.

  1. What is the sum of 856 + 765?
  2. What is 104 multiplied by 187
  3. What is 1 divided by 12 + 47
  

```r
# 1 - Two Ways
856 + 756
```

```
## [1] 1612
```

```r
# Which implicitely computes:
sum(856 + 765)
```

```
## [1] 1621
```

```r
# 2 Two Ways
104 * 187
```

```
## [1] 19448
```

```r
# Which implivetly computes:
prod(104 * 187)
```

```
## [1] 19448
```

```r
# 3
1/(12 + 47)
```

```
## [1] 0.01695
```

```r
# Beware, R respects order of operations
1/12 + 47  # Is incorrect
```

```
## [1] 47.08
```

Vectors
--------

The most straightforward way to combine numbers, letters or logicals is in a *vector*. Vectors are created directly using the function *c()*. Vectors have positions, beginning at 1. To call a position, nameofvector[indexnumber]

  4. Create a vector of 1 to 5, save it as object x
  5. Create a vector of 12, 17, 9, 11, save it as object y
  6. Create a vector of both x and y together
  7. Run g<-seq(11,333,3), what is the 68 position in this vector?
  8. How do you call both the 68 position and 79 simultaneously?


```r
# 4 Two Ways
x <- c(1:5)
# This performs a sequence of integers, but can be specified directly
x <- c(1, 2, 3, 4, 5)
x
```

```
## [1] 1 2 3 4 5
```

```r
# 5
y <- c(12, 17, 9, 11)
y
```

```
## [1] 12 17  9 11
```

```r
# 6
c(x, y)
```

```
## [1]  1  2  3  4  5 12 17  9 11
```

```r
# 7
g <- seq(11, 333, 3)
g[68]
```

```
## [1] 212
```

```r
# 8
g[c(68, 79)]
```

```
## [1] 212 245
```


Functions
-----------

Functions are the heart of R. They are sourced files that allow users to call code created and distributed within packages, or sent from friends! Functions have three essential parts.

* A name, more accuractely, a namespace, which declares which function to use.
* Input parameters or arguments which tell the function what you want to do.
* Output, either saved as a object, or returned directly into the console.

8. What is the mean of vector of 1:33
9. What is the sum of 1 divided by 5 + 10, plus 1 divided by 6 * 46
10. What is the cube root of natural log (8)
11. What is the cube root of log based 10 (8)


```r
# 8
mean(1:33)
```

```
## [1] 17
```

```r
# 9
sum(1/(5 + 10) + 1/(6 * 46))
```

```
## [1] 0.07029
```

```r
# 10
log(8)^(1/3)
```

```
## [1] 1.276
```

```r
# 11
log10(8)^(1/3)
```

```
## [1] 0.9666
```


**Getting help on functions**

The secret to R is a robust sense of adventure and confidence. There are tens of thousands of functions, in thousands of packages. One cannot expect to ever "know" R, this is simply the wrong mindset. Instead of focusing on memorizing the syntaxes, functions and design - place the following skill above all others: **Reading the help screen**

All published functions have help screens. They have a standardized format. At the top is a brief *description* explains the goal of the function.There may be a small paragraph on **usage**, especially in the function takes on multiple forms. The **arguments** are described next, each argument is described in a row, and should specify whether there is a default. All arguments without defaults are mandatory. This is followed by additional **details**, other sources, and citations. Finally the **value** section reports the format of the output. Most importantly, good help screens come with reproducible code **examples** at the very bottom. This code should run without any additional lines, thereby giving the user a good idea about the format of the code.

  12. Look up the help screen for the function cut; What is the goal of this function?
  13. Make a vector x<-0:100; cut this vector into 2 pieces. What is the default breaks?
  14. What does the argument dig.lab do?
  15. Cut the vector into 3 pieces, with 4 digits
  16. Specify the breaks to be exactly intervals of 25 *hint* use a vector!


```r
# 12 Check the description ?cut
print("Cut divides the range of x into intervals and codes the values in x according to which interval they fall. The leftmost interval corresponds to level one, the next leftmost to level two and so on.")
```

```
## [1] "Cut divides the range of x into intervals and codes the values in x according to which interval they fall. The leftmost interval corresponds to level one, the next leftmost to level two and so on."
```

```r
# 13
x <- 0:100
b <- cut(x, 2)
levels(b)
```

```
## [1] "(-0.1,50]" "(50,100]"
```

```r
# 14
print("Integer which is used when labels are not given. It determines the number of digits used in formatting the break numbers.")
```

```
## [1] "nteger which is used when labels are not given. It determines the number of digits used in formatting the break numbers."
```

```r
# 15
b <- cut(x, 3, dig.lab = 4)
levels(b)
```

```
## [1] "(-0.1,33.3]"  "(33.3,66.7]"  "(66.7,100.1]"
```

```r
# 16
b <- cut(x, c(0, 25, 50, 75, 100))
levels(b)
```

```
## [1] "(0,25]"   "(25,50]"  "(50,75]"  "(75,100]"
```

