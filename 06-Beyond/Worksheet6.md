Biometry and Beyond - Worksheet 6
========================================================


Version Control
----------

1. Create a new repo on github. Make a clone of that repo locally using a new rstudio project, if you need a reminder, or have not set up git on your computer, follow instructions here:

http://www.molecularecologist.com/2013/11/using-github-with-r-and-rstudio/

User Defined Functions
----------

2. Describe the components and arguments of the following function.


```r
largest <- function(x, y, z) {
    a <- c(x, y, z)
    l <- which.max(a)
    paste(a[l], "is the largest number")
}
```


3. Create and test a function that takes in two vectors and determines which is the longer vector. 


Markdown
-------

3. Create a blank R markdown script and paste your answers from 1 and 2 into code blocks using ```{r}{code} chunks

4. Press the Knitr buttom.

5. Commit your worksheet with a simple commit message. 

6. Push your commit to your online repository.

7. Paste a link to your new online file:


