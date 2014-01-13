Worksheet 3 - Data Manipulation
--------------

Today in class we covered

* Dataframes
* Subsetting
* Logicals

1. What is wrong with this code example? Answer before running.

```
df <- data.frame(id = c("Jason","Paul","Mary", "Robert","Toby","Nina","Robin","James"), x = 1:10, y = rnorm(10))
```

2. Fix each of the following common data frame subsetting errors:

```
mtcars[mtcars$cyl = 4, ]
# Exclude only rows 1 through 4
mtcars[-1:4, ]
# Return only rows for cylinders less than 5
mtcars[mtcars$cyl <= 5]
# Return only rows for cylinders that are 4 or 6.
mtcars[mtcars$cyl == 4 | 6, ]
```

3. Why does `mtcars[1:20]` return a error? How does it differ from the similar `mtcars[1:20, ]`?


4. Load the `ggplot2` library. There should be a dataset called diamonds. You can verify that by typing in `data(diamonds)`

* How big is this dataset (number of rows and columns)?
* Create a new `data.frame` called `small_diamonds` that only contains rows 1 through 9 and 19 through 23. You can do this in one or two steps.
*How many records of "Ideal" cut diamonds?


Bonus: Using the str() command, investigate the following brand new data type.

*Given a linear model - Extract the residuals for the fitted values 

```
mod <- lm(mpg ~ wt, data = mtcars)
```


----

