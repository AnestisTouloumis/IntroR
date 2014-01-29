---
title       : Distributions and Probability 
subtitle    : 
author      : Ben Weinstein
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : IR_BlACK      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

What did we learn last time?
===========================
> 1. The Basic Components of R and Rstudio
> 2. Vectors and Basic Math
> 3. How to access the help screen

---
Review
=======

What is the sum of (1 through 10 multiplied by two) plus (1 through 20 divided by three). 

*Bonus*: What is the mean number of 1 through 10 and 1 through 20 when taken together.

---

Distributions
================================

Generating random samples from a normal distribution

It is often very useful to be able to generate a sample from a specific distribution. To generate a sample of size 100 from a standard normal distribution (with mean 0 and standard deviation 1) we use the rnorm function. 


```r
norm <- rnorm(100, mean = 0, sd = 1)
head(norm)
```

```
## [1]  0.8013 -0.1754 -0.3681 -0.0395 -1.5400 -1.0176
```


---

**Try It!**
------------
1. Look up the rnorm function in help screen, locate the three arguments we used.
2. Draw 100 random numbers from a normal distribution with a mean of 3 and an sd of 2, assign it to an object "a"
3. Find the mean number if your draw, how close was it to the true mean?
4. Using the ?? tool, lookup the function for standard deviation *Hint* the ?? tool should not include spaces in the query.
5. What is the 13th number in the your vector a?

---

Generating random samples from other distributions
===========

R has many distributions in the base package, including all commonly used in biological analysis. Depending on the distribution, each function has its own set of parameter arguments. For example, the *'rpois()'* function is the random number generator for the Poisson distribution and it has only the parameter argument lambda. The *rbinom()* function is the random number generator for the binomial distribution and it takes two arguments: size and prob. The size argument specifies the number of Bernoulli trials and the prob argument specifies the probability of a success for each trial. Heather will pick up from here.

For now, its sufficient to know that a possion distribution is commonly used for count data, and has only paramater lambda, which is both the expected mean and var

---

**Try It!**
------------
6. Draw 100 values from a poisson with a lambda =3, assign it to an object a
7. Draw 1000 values from a poisson with a lambda = 3, assign it to an object b
8. Find the means of both draws, what is the difference in means?

---

Other distribution functions
--------------------------------------------
> For each of the distributions there are **four functions** which will generate fundamental quantities of a distribution. Let's consider the normal distribution as an example. We have already given examples of the **rnorm()** function which will generate a random sample from a specific normal distribution. 

> The **dnorm()** function will generate the density (or point) probability for a specific value for a normal distribution. This function is very useful for creating a plot of a density function of a distribution. In the list of the random number generator functions all the functions started with an "r", similarly the density functions for all the distributions all start with a "d". 

> The other two functions **pnorm()**, and **qnorm()** will be covered during Biometry. But it is sufficient to know they give the probability and quantile distributions. They are less commonly used.

---

**Try It!**
------------

9. What is the density of x =  -1.96 for a normal of mean =0, sd=1. 
10. We want to make a sequence of numbers, based on a given interval, look up, using ??sequence, and find the function that does this. *Hint* it is in the base package
11. Create a sequence beginning at 0 and ending at 4, with .2 intervals, save this as object x.

---

An introduction to plotting - Univariate
=====================================

Histograms are the most common univariate plot. Histograms place data into "bins", and count the number of data falling into each bin. Bins are usually plotted as bars, with the x range on the x axis, and count on the y axis.


```r
# Draw a thousand random normal points
pts <- rnorm(1000)
hist(pts)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


Histograms are an effective way of visualizing distributions
---

**Try It!**
------------
12. Draw 10 random normal points and plot a histogram, then 100, then 1000, what do you notice about the plot?

13. Explore atleast one other distribution, look up ?distributions *Hint remember to use the r-nameofdistribution function to pull random samples

14. Plot your new distribution and compare with your neighbor.

15. Draw 1000 random normals with a mean of 0 and a sd of 1. Look at the hist help screen. How do you specify the size of the bin range? Try making bins from -4 to 4, with intervals of .01, .1, and 1. *Hint* Consider using the seq() in the "breaks"" argument within hist().

---

Density plots
=====================================

```r
x <- seq(0, 4, 0.01)
dens <- dnorm(x, 2, 0.5)
plot(x, dnorm(dens, 2, 0.5), type = "l")
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


---

**Try It!**
------------

16. Plot your density function. Label your axis, "This is the x axis", "This is the y axis"
17. Repeat the above seq, from 0 to 4, but make the interval .01, replot your figure, how is the plot changed?

---&twocol

> The base package has an immense number of plotting tools, let's look at the plot help screen.
> One nice option is to plot the distribution not in terms of raw counts, but in terms of density, so the histogram sums to 1

*** left

```r
x <- rnorm(100, mean = 0, sd = 2)
hist(x)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


*** right

```r
hist(x, freq = FALSE)
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 


---

Very Brief Intro to Sampling
=======


In R, it's very easy to take a random sample of numbers with the sample() command. Suppose we want to take a random sample of 20 numbers from a vector of 100?

---


Sample without replacement
=============

```r
x <- 1:100
sample(x, 20)
```

```
##  [1] 68 30 86  3 53 77 15 35 22  4 91 87 65 64 79 34  9 23 67 11
```


Sample with replacement
===========

```r
x <- 1:100
sample(x, 20, replace = TRUE)
```

```
##  [1]  8 12 91 37 62 60 85 67 13 37 79 47 27  3  6 13 85  8 61 30
```


---

What did we learn today?
---------------------


> 1. Drawing from random normal distributions *rnorm()*
> 2. Histograms and Density Plots
> 3. The sample() function

<style>
pre {
  margin-bottom: -10px;
}
</style>
