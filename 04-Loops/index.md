---
title       : For Loops
subtitle    : Flow Statements
author      : Ben Weinstein
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

For loops
=========

Loops are an important programming tool. The first loop we will learn is a **for loop**. for loops run for a certain number of steps, which you define, during which any statements in the loop are executed.

The basic syntax is

*for(some sequence of steps)*

{

execute some statements

}

---

Why use a for loop?
=====================

> 1. We have a repeated process with indentical formatting, but different values.
> 2. To avoid laborious typing into R


---
Our first loop
---------------

for(i in 1:5){
================

i starts at 1, R will execute some statements; i is incremented to i = 2 and statements are executed again; i is incremented to i=3 and statements are executed; and so on, until i = 25, at which point the loop executes the set of statements for the last time.

}
===

```r
for (i in 1:5) {
    print(i)
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
```



--- &twocol
Syntax 
---------------

*** left

Keep these straight: Be sure you distinguish between curly braces {}, parentheses ( ), and square brackets [ ]. The brackets are used to access *elements* of vectors, matrices, and dataframes. The parentheses are used to specify arguments to *functions*. Finally, the curly braces enclose statements to be executed within the body of a *loop*.


```r
x <- 1:10
x[6]
```

```
## [1] 6
```


*** right

```r
sum(x)
```

```
## [1] 55
```

```r
for (i in 1:3) {
    print(i)
}
```

```
## [1] 1
## [1] 2
## [1] 3
```


---
Using a for loop
================


```r
x <- 2
for (i in 1:4) {
    x <- x^2
}
```


--- &twocol

**Try it!**
-----------

*** left

* 1. Create a for loop that prints numbers 1 to 100
* 2. Create a for loop that prints numbers 100 to 1
* 3. Create a for loop that adds x + 1 to numbers 1:5

*** right

* 4. Create a for loop that divides all even numbers from 0-20 by 10 
(**consider using seq()**)
* 5. Bonus! What would be the final value here, witout trying it!


```r
dogs <- 10
for (i in 1:5) {
    dogs <- dogs + 1
}
```


* Why?

---
For Loops and Vectors
---------------------

In the above examples, we used i directly in several mathematical operations. But it is more common to loop over elements of a vector to accomplish some particular task.


```r
nameVector <- c("Charlie", "Helga", "Clancy", "Matilda", "Jones")
for (i in 1:length(nameVector)) {
    print(paste("Nice to meet you", nameVector[i], " "))
}
```

```
## [1] "Nice to meet you Charlie  "
## [1] "Nice to meet you Helga  "
## [1] "Nice to meet you Clancy  "
## [1] "Nice to meet you Matilda  "
## [1] "Nice to meet you Jones  "
```


---

What did that really do?
-------------------
Consider the loop in pieces

```r
# How many positions are in nameVector
length(nameVector)
```

```
## [1] 5
```

```r

# how do we index a vector
nameVector[1]
```

```
## [1] "Charlie"
```


---
What did that really do?
-------------------

```r
paste("Nice to meet you", nameVector[1], sep = " ")
```

```
## [1] "Nice to meet you Charlie"
```

```r
# loops are their own little environments, so print() so you can see them on
# your console.
nameVector <- c("Charlie", "Helga", "Clancy", "Matilda", "Jones")
for (i in 1:length(nameVector)) {
    print(paste("Nice to meet you", nameVector[i], " "))
}
```

```
## [1] "Nice to meet you Charlie  "
## [1] "Nice to meet you Helga  "
## [1] "Nice to meet you Clancy  "
## [1] "Nice to meet you Matilda  "
## [1] "Nice to meet you Jones  "
```


--- &twocol

**Try it!**
----------

* 1. Create a vector of names of people in your row, write them a nice message
* 2. Explain why the following code is wrong

for(x in 1:10) {
  print(sum(i))
}


* 3. Create a vector of 1:10 and a vector of 31:40. Add the first elements of each vector together.

--- 
Syntax of lists
----------------

One can think of lists as vertical vectors.


```r
# For a vector
x <- c(1, 2, 3, 4, 5)
x[3]
```

```
## [1] 3
```

```r
# For a List
a <- list(1, 2, 3, 4, 5)
a[[3]]
```

```
## [1] 3
```


---
Why use a list? A Brief Tangent
============
A list is a generic vector containing other objects.
For example, x is a list containing three vectors n, s, b, and a numeric 3.


```r
n = c(2, 3, 5)
s = c("aa", "bb", "cc", "dd", "ee")
b = c(TRUE, FALSE, TRUE, FALSE, FALSE)
x = list(n, s, b, 3)  # x contains copies of n, s, b
x
```

```
## [[1]]
## [1] 2 3 5
## 
## [[2]]
## [1] "aa" "bb" "cc" "dd" "ee"
## 
## [[3]]
## [1]  TRUE FALSE  TRUE FALSE FALSE
## 
## [[4]]
## [1] 3
```


---
List Slicing
==============
We retrieve a list slice with the single square bracket "[]" operator. 


```r
x[2]
```

```
## [[1]]
## [1] "aa" "bb" "cc" "dd" "ee"
```

```r
# With an index vector, we can retrieve a slice with multiple members.
x[c(2, 4)]
```

```
## [[1]]
## [1] "aa" "bb" "cc" "dd" "ee"
## 
## [[2]]
## [1] 3
```


---
List Reference
==============
In order to reference a list member directly, we have to use the double square bracket "[[]]" operator. 


```r
x[[2]]
```

```
## [1] "aa" "bb" "cc" "dd" "ee"
```

```r
# We can modify its content directly.
x[[2]][1] = "ta"
x[[2]]
```

```
## [1] "ta" "bb" "cc" "dd" "ee"
```


---

How do we save loop outputs
==============

Instead of printing to the screen, we usually want to create an object with the outputs on the loop. In general, we do do this either with a vector, or with a list.


```r
# Create an blank output
outputs <- list()

for (x in 1:5) {
    outputs[[x]] <- x * 10
}
outputs
```

```
## [[1]]
## [1] 10
## 
## [[2]]
## [1] 20
## 
## [[3]]
## [1] 30
## 
## [[4]]
## [1] 40
## 
## [[5]]
## [1] 50
```


--- &twocol

**Try it!**
----------

*** left

* 1. Create a for loop that computes x * 2 for 1:100, and place the output in a vector
* 2. Create a for loop that computes x * 2 for 1:100, and place the output in a list
* 3. How do we get the 47th position in question 1 and 2?

*** right

4. What does this code do?

```r
output <- list()
for (x in 1:10) {
    output[1] <- sum(x + x^2)
}
```


5. What does this code do?

```r
output2 <- list()
for (x in 1:11) {
    output2[x + 1] <- sum(x + x^2)
}
```


---
Flow Statements
-----------

Often, we want to control for loops to account for variables, options, and logical statements

Let's begin with the if statement:


```r
for (x in 1:5) {
    if (x > 3) {
        print(paste(x, "is greater than 3"))
    }
    if (x <= 3) {
        print(paste(x, "is less than or equal to 3"))
    }
}
```

```
## [1] "1 is less than or equal to 3"
## [1] "2 is less than or equal to 3"
## [1] "3 is less than or equal to 3"
## [1] "4 is greater than 3"
## [1] "5 is greater than 3"
```


---
Controlling Flow - Break
--------------

Often we need to handle logical cases within a loop; we can end a loop running based on an *if* and *break* statement


```r
for (x in 1:5) {
    if (x > 3) {
        break
    }
    if (x <= 3) {
        print(paste(x, "is less than or equal to 3"))
    }
}
```

```
## [1] "1 is less than or equal to 3"
## [1] "2 is less than or equal to 3"
## [1] "3 is less than or equal to 3"
```


--- &twocol

Controlling Flow - Next
===================
Sometimes we don't want to break the statement, just skip a troublesome object or R that we know will cause an error. We can continue within a loop running based on an *if* and *next* statement. Here we want to skip 4. 


```r
for (x in 1:5) {
    if (x == 4) {
        next
    }
    if (x > 3) {
        print(paste(x, "is greater than 3"))
    }
    if (x <= 3) {
        print(paste(x, "is less than or equal to 3"))
    }
}
```

```
## [1] "1 is less than or equal to 3"
## [1] "2 is less than or equal to 3"
## [1] "3 is less than or equal to 3"
## [1] "5 is greater than 3"
```


--- &twocol

**Try it!**
----------

*** left

1.  Create a for loop that computes x * 2 for 1:100, and place the output in a vector. However, make just the values of x=32 and x=67 x *3

2. Create a for loop that computes x * 2 for 1:100, and place the output in a list. However, break the loop after 51 iterations

3. Create a for loop that computes x * 2 for 1:100, and place the output in a list. However, skip x= 71, 74. How can you show that you suceeded? 

*** right

 4. Why does this code fail?

```r
for (x in 1:5) {
    if (x <= 4) {
        print(paste(x, "is less than or equal to 4"))
    }
    # Kill the loop after x=3
    if (x > 3) {
        break
    }
}
```


 5. Create a for loop that computes x * 2 for 1:100, and place the output in a list. However, break the loop when the  square root of the output of a statement is greater than 8.4. What is the last x value reported?
 
---
What did we learn today?
========================

- For loops
- Outputing loops to an object
- Indexing Lists
- Flow Statetments - If, Break, Next
 
---

Next time we will cover importing data, more subsetting and sampling, and introduction to bivariate plotting using ggplot.
==================

![plot of chunk unnamed-chunk-20](figure/unnamed-chunk-20.png) 

