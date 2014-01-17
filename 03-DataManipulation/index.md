---
title       : Data Manipulation
subtitle    : Beginning with Data Frames
author      : Ben Weinstein
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

What did we learn last time?
============================

```r
# Draw a 100 points from a random normal of 100 with mean =6, sd =7
x <- rnorm(100, 6, 7)
# view distribution
hist(x)
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1.png) 

```r
# sample 5 without replacement
sample(x, 5)
```

```
## [1]  8.608  5.111  8.002 11.465 19.875
```


--- &twocol

Beyond Vectors - Beginning with Data frames
===========================================

A data frame is a very important data type in R. It's pretty much the de facto data structure for most tabular data and what we use for statistics. Data frames can have additional attributes such as rownames() and colnames(). This can be useful for annotating data.

**Useful functions**  

*** left

- 1. head() - see first 5 rows
- 2. tail() - see last 5 rows
- 3. dim() - see dimensions

*** right

- 4. nrow() - number of rows
- 5. ncol() - number of columns
- 6. str() - structure of the object

---
Data frames are usually read in from file, but R comes with many practice datasets. We will use the iris dataset, famously used by Fisher in 1936 (http://en.wikipedia.org/wiki/Iris_flower_data_set)

head(iris)
============

<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:54 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH> <TH> Petal.Length </TH> <TH> Petal.Width </TH> <TH> Species </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD align="right"> 5.10 </TD> <TD align="right"> 3.50 </TD> <TD align="right"> 1.40 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD align="right"> 4.90 </TD> <TD align="right"> 3.00 </TD> <TD align="right"> 1.40 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 1.30 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD align="right"> 4.60 </TD> <TD align="right"> 3.10 </TD> <TD align="right"> 1.50 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD align="right"> 5.00 </TD> <TD align="right"> 3.60 </TD> <TD align="right"> 1.40 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD align="right"> 5.40 </TD> <TD align="right"> 3.90 </TD> <TD align="right"> 1.70 </TD> <TD align="right"> 0.40 </TD> <TD> setosa </TD> </TR>
   </TABLE>


--- &twocol

**Try It!**
------------

*** left
> Try the basic dataframe functions:
  - 1. head()   
  - 2. tail() - see last 5 rows
  - 3. dim() - see dimensions
  - 4. nrow() - number of rows
  - 5. ncol() - number of columns
  - 6. str() - structure of the object
  
*** right

> 2. How many rows does the data have?
> 3. How many columns? What are the column names?
> 4. Using the str function, how many species are in the data?
> 5. What classes are each of the columns?

---
Dataframe syntax and subsetting
-------------------------------
R has many powerful subset operators and mastering them will allow you to easily perform complex operation on any kind of dataset. Allows you to manipulate data very succinctly. Dataframes are akin to a series of vectors combined into a tabular structure. 

**head(iris)**
<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:55 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH> <TH> Petal.Length </TH> <TH> Petal.Width </TH> <TH> Species </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD align="right"> 5.10 </TD> <TD align="right"> 3.50 </TD> <TD align="right"> 1.40 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD align="right"> 4.90 </TD> <TD align="right"> 3.00 </TD> <TD align="right"> 1.40 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 1.30 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD align="right"> 4.60 </TD> <TD align="right"> 3.10 </TD> <TD align="right"> 1.50 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD align="right"> 5.00 </TD> <TD align="right"> 3.60 </TD> <TD align="right"> 1.40 </TD> <TD align="right"> 0.20 </TD> <TD> setosa </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD align="right"> 5.40 </TD> <TD align="right"> 3.90 </TD> <TD align="right"> 1.70 </TD> <TD align="right"> 0.40 </TD> <TD> setosa </TD> </TR>
   </TABLE>


---
Dataframes syntax
----------------

Use the $ sign to call a column


```r
x <- iris$Sepal.Length
head(x)
```

```
## [1] 5.1 4.9 4.7 4.6 5.0 5.4
```

```r

y <- iris[, "Sepal.Length"]
head(y)
```

```
## [1] 5.1 4.9 4.7 4.6 5.0 5.4
```


---
Indexing
-----

Indexing a dataframe is given by nameofdf[rows,columns]

```r
colnames(iris)
```

```
## [1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width" 
## [5] "Species"
```

```r
# Identical to iris$Sepal.Length
SL <- iris[, "Sepal.Length"]
head(SL)
```

```
## [1] 5.1 4.9 4.7 4.6 5.0 5.4
```

```r
SL2 <- iris[, 1]
```


--- &twocol

Dataframes can be indexed for both rows and columns
=================================================
Get all rows and the first two columns
**a<-iris[,1:2]**
<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:55 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD align="right"> 5.10 </TD> <TD align="right"> 3.50 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD align="right"> 4.90 </TD> <TD align="right"> 3.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 3.20 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD align="right"> 4.60 </TD> <TD align="right"> 3.10 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD align="right"> 5.00 </TD> <TD align="right"> 3.60 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD align="right"> 5.40 </TD> <TD align="right"> 3.90 </TD> </TR>
   </TABLE>


---
**Try It!**
------------
5. What is the 9th entry of the Sepal.Width column? Call it x.
6. How would you get all entries of iris for the 17th row?
7. Return an object with the 1 4 and 7 rows of the iris dataframe?
8. Use the seq command to get all odd rows in the iris dataset?
9. What happens when you use negative numbers? *Hint* Use *dim()* on the original and final objects. 

---
Using logical statements
------------------------
An extremely helpful tool is to subset your data using logic rather than an index. Let's begin with continious numeric data.

```r
# Grab the Sepal.Width
x <- iris$Petal.Width
# Histogram
hist(x)
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7.png) 


---

Subset Using Statements
--------

```r
# Which values are greater than 1?
x <- iris$Petal.Width
logi <- x > 1

# Return all columns based on iris$Petal.Width
a <- iris[logi, ]
```


<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:55 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH> <TH> Petal.Length </TH> <TH> Petal.Width </TH> <TH> Species </TH>  </TR>
  <TR> <TD align="right"> 51 </TD> <TD align="right"> 7.00 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 1.40 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD align="right"> 6.40 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 4.50 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD align="right"> 6.90 </TD> <TD align="right"> 3.10 </TD> <TD align="right"> 4.90 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD align="right"> 5.50 </TD> <TD align="right"> 2.30 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD align="right"> 6.50 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.60 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD align="right"> 5.70 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.50 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
   </TABLE>


---
More Subsets
====


```r
# Return all columns based on iris$Petal.Width values are greater than 1?
a <- iris[iris$Petal.Width > 1, ]
```



```r
a <- iris[, 1:2]
# Return the same column as was subsetted.
head(x[logi])
```

```
## [1] 1.4 1.5 1.5 1.3 1.5 1.3
```


Return a different column based on the subset

```r
# Return all values in Sepal.Length where Sepal.Width is greater than 1.
head(iris[logi, "Petal.Length"])
```

```
## [1] 4.7 4.5 4.9 4.0 4.6 4.5
```


---

**Try It!**
------------
10. Why is iris[iris>3,] a nonsensical command? 
11. What about iris[iris$Sepal.Length >3]? 
12. Create a histogram of petal lengths for the entire data
13. Subset the data for values greater than two
14. Create a histogram of your new data

---

Other types of logical statements 
---------------------------------

Many different types of logical statements can be used to subset data.

For all types of data, if we want a specific value/character/factor we use ==


```r
Only4 <- iris[iris$Petal.Length == 4, ]
```


<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:55 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH> <TH> Petal.Length </TH> <TH> Petal.Width </TH> <TH> Species </TH>  </TR>
  <TR> <TD align="right"> 54 </TD> <TD align="right"> 5.50 </TD> <TD align="right"> 2.30 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD align="right"> 6.00 </TD> <TD align="right"> 2.20 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.00 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD align="right"> 6.10 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD align="right"> 5.50 </TD> <TD align="right"> 2.50 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD align="right"> 5.80 </TD> <TD align="right"> 2.60 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.20 </TD> <TD> versicolor </TD> </TR>
   </TABLE>


---
Get only records from the species versicolor
==============================================


```r
Vers_Only <- iris[iris$Species == "versicolor", ]
```


<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:56 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH> <TH> Petal.Length </TH> <TH> Petal.Width </TH> <TH> Species </TH>  </TR>
  <TR> <TD align="right"> 51 </TD> <TD align="right"> 7.00 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 1.40 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD align="right"> 6.40 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 4.50 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD align="right"> 6.90 </TD> <TD align="right"> 3.10 </TD> <TD align="right"> 4.90 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD align="right"> 5.50 </TD> <TD align="right"> 2.30 </TD> <TD align="right"> 4.00 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD align="right"> 6.50 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.60 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD align="right"> 5.70 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.50 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
   </TABLE>


---

Logical statments 
=================

Combined using & (and) if you want both statements to be true, or | (or) if you want either statement to be true.


```r
subsetX <- iris[iris$Petal.Length > 4 & iris$Species == "versicolor", ]
```


<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Fri Jan 17 10:11:56 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Sepal.Length </TH> <TH> Sepal.Width </TH> <TH> Petal.Length </TH> <TH> Petal.Width </TH> <TH> Species </TH>  </TR>
  <TR> <TD align="right"> 51 </TD> <TD align="right"> 7.00 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 1.40 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD align="right"> 6.40 </TD> <TD align="right"> 3.20 </TD> <TD align="right"> 4.50 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD align="right"> 6.90 </TD> <TD align="right"> 3.10 </TD> <TD align="right"> 4.90 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD align="right"> 6.50 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.60 </TD> <TD align="right"> 1.50 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD align="right"> 5.70 </TD> <TD align="right"> 2.80 </TD> <TD align="right"> 4.50 </TD> <TD align="right"> 1.30 </TD> <TD> versicolor </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD align="right"> 6.30 </TD> <TD align="right"> 3.30 </TD> <TD align="right"> 4.70 </TD> <TD align="right"> 1.60 </TD> <TD> versicolor </TD> </TR>
   </TABLE>


---

**Try It!**
------------
Explain in words each of the following logical statements

15. iris[1:4,]

16. iris[c(1:15,),c(1,3)]

17. iris[iris$Species == "setosa","Petal.Width"]

18. What happens when you add a ! before a logical statment, 

*Hint* compare:
iris[iris$Species == "setosa",] with iris[!iris$Species == "setosa",]

---
What did we learn today?
----------------------

Today we covered basic data manipulation of dataframes in R
============================

> 1. Properties of a Data frame

> 2. Indexing columns 

> 3. Subsetting Data

> 4. Logical Statements

---
Next Time
==========

- For loops
- Outputing loops to an object
- Indexing Lists
- Flow Statetments - If, Break, Next
