---
title       : Basics of R
subtitle    : Diving in.
author      : Ben Weinstein
job         : 
framework   : io2012    # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : IR_BLACK      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

**Introduction to R**
===================

R is a versatile, open source programming/scripting language that's useful both for statistics and data science. 

1. Public domain software 
2. Superior (if not just comparable) to commercial alternatives
3. Available on all platforms
4. Not just for statistics, but also general purpose programming
5. Is object oriented and functional
6. Large and growing community of peers

---
**How to run `R`**  
==================

Within R studio, there are 4 parts to R

1. Console: Where commands are run
2. Scripts: Where commands are written
3. Environments: Where objects are stored
4. Plots: Where data is viewed

---
Running Commands in the Console
===============================

The R console returns objects based on functions and expressions.

Always save commands in a SCRIPT!

---

<img src="http://www.lifewithlevi.com/wp-content/uploads/2012/02/Happy-Squirrel-Driking.jpg" alt="Drawing" style="width: 300px;"/> 

**Try It!**
-----------

1. Compute 7.34 plus 3.15 plus 4.36

2. What is 17 multiplied by 365?

3. What is 7 cubed?

---
Creating Objects
================

All expressions can be saved as an object, this is the fundamental unit in R. To create an objects use:

`<- ` called, 'the assignment operator'. This assigns values on the right to objects on the left.



```r
a <- 12 * 180
a
```

```
## [1] 2160
```

The object a is now saved as the output of the expression 12*180

---

*R tips*
========

*Use `#` before an expression signs to 'comment' your script. Good scripts and (homework) have comments before every major block of code. Anything to the right of a `#` is ignored.*


```r
print("hello world")
```

```
## [1] "hello world"
```

```r

# print ('hello world')

print("hello world")  #R ignores everything to the RIGHT of comments
```

```
## [1] "hello world"
```


---
Expressions using objects
=========================

The beauty of R is that objects can be combined into other, larger, and more complex objects!


```r
a <- 8 * 10
b <- 2 * 10
c <- a * b
c
```

```
## [1] 1600
```

```r
# Equivalent to
c <- 8 * 10 * 2 * 10
c
```

```
## [1] 1600
```


---

**Try It!**
------------

3. Create an object that is your age. Create another object that is the age of the person to your right. Find the difference between these objects. 

4. Set x to equal seven, set y to equal 10. What is x * y * y

---
Combining objects - Vectors!
-------------------

R has 5 common data structures, we will learn today about the simplest - vectors.
Vectors are one dimensional strings of numbers, characters of objects. A vector is made using the function *c()*, explained later today.

Combine numbers into a vector

```r
a <- c(3, 4, 5)
a
```

```
## [1] 3 4 5
```

----
Vectors!
========

Combine characters into a vector

```r
b <- c("q", "r", "s")
b
```

```
## [1] "q" "r" "s"
```


---
Vectors!
========

Combine objects into a vector

```r
a <- 4 * 7
b <- 6 * 5
g <- 9 * 2

d <- c(a, b, g)
d
```

```
## [1] 28 30 18
```


---

Properties of Vectors
=====================

Vectors have positions, these positions are ordered and can be called using name_vector[position]


```r
a <- 8 * 9
b <- 2 * 3
d <- c(a, b)

d[1]
```

```
## [1] 72
```

```r
d[2]
```

```
## [1] 6
```


---

**Try It!**
------------

4. What is the 9th and 12th position of seq(1,27,.5)? 

5. Bonus! Can you find those positions simultaneously

---

Functions
=========

A function is a saved object that performs a task given inputs. Like excel, functions take in information and return desired outputs. Functions are used in the format:

output<-name_of_function(inputs)


```r
# The sum of a vector
a <- c(3, 4, 5)
b <- sum(a)
b
```

```
## [1] 12
```

```r
# The mean of a vector
mean(a)
```

```
## [1] 4
```


---

How to use a function?
=====================

All functions come with a help screen. It is critical that you learn to read the help screens since they provide important information on what the function does, how it works, and usually sample examples at the very bottom.

---
*R tips*
=======

While many R functions are easy to guess their name, most functions are abbreviated to save time and space, you can search for functions (only from installed packages) by using ??query, eg. ??robust with search for any functions whose help screens contain the word robust

---

**Try It!**
------------

> 6. What is the median of 34, 16, 105, 27? *Hint* functions are often named intuitively
> 7. What does the function 'range' do, what is sample example in the help file?
> 8. Bonus! Is mean(4,5) different than mean(c(4,5))?

---

Arguments
=========

Arguments tell the function how to work! Functions are very flexible.


```r
a <- c(1, 10, NA, 8)
range(a)
```

```
## [1] NA NA
```

```r
range(a, na.rm = TRUE)
```

```
## [1]  1 10
```


---

Packages
===========

We will be exploring functions in much greater detail throughout this course. Functions are the soul of R, that is why we use it. Functions are kept inside packages, some of which come preinstalled into R - others must be downloaded online

To check out the [wide world of packages:]( 
http://cran.r-project.org/web/packages/available_packages_by_date.html) and search with your favorite keyword! Ecology, paleo, dispersal, population modeling, economics!

Often you will be asked to install a package to access a certain library of functions



```r
# To install any new package install.packages('picante')

# pick a closeby mirror, say okay if it asks to create a new folder
```


---

*R tips*
=======

Installing a package just download its to your computer. To actually use a function in R from an outside package you have to "require" it at the top of the script, this let's R know what packages to load in, and not waste time with all potential functions. Good scripts (and homeworks) have a series of require(name_of_library) at the top of the script in an orderly fashion

---

**Try It!** 
------------

9. Install ggplot2 to your computer, add dependecies = TRUE as an argument!

---

You are not alone Part - The R Help Screen and User Community
====================
![alt text](http://img78.imageshack.us/img78/196/wheelsel6.gif)


---&twocol

Quick Review
------
1. Find the product of 17 multiplied by .75
2. Save this product to an object x
3. Find the product of 17 multiplied by .05, save as object y
4. Create a vector of x x y y x
5. How would you call the third position in this vector?
6. The function seq will be used repeatedly throughout this course. Look at the help screen for seq, what does it do?
  
---


**Quitting R**
==========

type in `quit()` or `q()` and answer `Y` to quit. Always remember to save scripts. For now we will not save workspaces!
<style>
pre {
  margin-bottom: -10px;
}
</style>
