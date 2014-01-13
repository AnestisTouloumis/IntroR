Worksheet 3 - Data Manipulation
--------------

Today in class we covered

* Dataframes
* Subsetting
* Logicals

1. What is wrong with this code example? Answer before running.


```r
print("Dataframes are collections of lists of vectors that require items of the same length. Ids have only 8 items")
```

```
## [1] "Dataframes are collections of lists of vectors that require items of the same length. Ids have only 8 items"
```



```r
df <- data.frame(id = c("Jason", "Paul", "Mary", "Robert", "Toby", "Nina", "Robin", 
    "James"), x = 1:10, y = rnorm(10))
```

```
## Error: arguments imply differing number of rows: 8, 10
```


2. Fix each of the following common data frame subsetting errors:

  1. mtcars[mtcars$cyl = 4, ]
  2. mtcars[-1:4, ]
  3. mtcars[mtcars$cyl <= 5]
  4. mtcars[mtcars$cyl == 4 | 6, ]


```r
# 1
x <- mtcars[mtcars$cyl == 4, ]

# 2 Exclude only rows 1 through 4
x <- mtcars[-c(1:4), ]

# 3 Return only rows for cylinders less than 5
x <- mtcars[mtcars$cyl <= 5, ]

# 4 Return only rows for cylinders that are 4 or 6.
x <- mtcars[mtcars$cyl == 4 | mtcars$cyl == 6, ]
```



3. Why does `mtcars[1:20]` return a error? How does it differ from the similar `mtcars[1:20, ]`?


```r
print("mtcars[1:20] calls the first 20 positions, but does not specify any columns")
```

```
## [1] "mtcars[1:20] calls the first 20 positions, but does not specify any columns"
```


4. Load the `ggplot2` library. There should be a dataset called diamonds. You can verify that by typing in `data(diamonds)`
* How big is this dataset (number of rows and columns)?
* Create a new `data.frame` called `small_diamonds` that only contains rows 1 through 9 and 19 through 23. You can do this in one or two steps.
*How many records of "Ideal" cut diamonds?


```r
library(ggplot2)
data(diamonds)

# 1
dim(diamonds)
```

```
## [1] 53940    10
```

```r
str(diamonds)
```

```
## 'data.frame':	53940 obs. of  10 variables:
##  $ carat  : num  0.23 0.21 0.23 0.29 0.31 0.24 0.24 0.26 0.22 0.23 ...
##  $ cut    : Ord.factor w/ 5 levels "Fair"<"Good"<..: 5 4 2 4 2 3 3 3 1 3 ...
##  $ color  : Ord.factor w/ 7 levels "D"<"E"<"F"<"G"<..: 2 2 2 6 7 7 6 5 2 5 ...
##  $ clarity: Ord.factor w/ 8 levels "I1"<"SI2"<"SI1"<..: 2 3 5 4 2 6 7 3 4 5 ...
##  $ depth  : num  61.5 59.8 56.9 62.4 63.3 62.8 62.3 61.9 65.1 59.4 ...
##  $ table  : num  55 61 65 58 58 57 57 55 61 61 ...
##  $ price  : int  326 326 327 334 335 336 336 337 337 338 ...
##  $ x      : num  3.95 3.89 4.05 4.2 4.34 3.94 3.95 4.07 3.87 4 ...
##  $ y      : num  3.98 3.84 4.07 4.23 4.35 3.96 3.98 4.11 3.78 4.05 ...
##  $ z      : num  2.43 2.31 2.31 2.63 2.75 2.48 2.47 2.53 2.49 2.39 ...
```

```r
nrow(diamonds)
```

```
## [1] 53940
```

```r
ncol(diamonds)
```

```
## [1] 10
```

```r

# 2
small_diamonds <- diamonds[c(1:9, 19:23), ]

# 3
nrow(diamonds[diamonds$cut == "Ideal", ])
```

```
## [1] 21551
```


Bonus: Using the str() command, investigate the following brand new data type.
*Given a linear model - Extract the residuals for the fitted values 


```r
mod <- lm(mpg ~ wt, data = mtcars)
str(mod)
```

```
## List of 12
##  $ coefficients : Named num [1:2] 37.29 -5.34
##   ..- attr(*, "names")= chr [1:2] "(Intercept)" "wt"
##  $ residuals    : Named num [1:32] -2.28 -0.92 -2.09 1.3 -0.2 ...
##   ..- attr(*, "names")= chr [1:32] "Mazda RX4" "Mazda RX4 Wag" "Datsun 710" "Hornet 4 Drive" ...
##  $ effects      : Named num [1:32] -113.65 -29.116 -1.661 1.631 0.111 ...
##   ..- attr(*, "names")= chr [1:32] "(Intercept)" "wt" "" "" ...
##  $ rank         : int 2
##  $ fitted.values: Named num [1:32] 23.3 21.9 24.9 20.1 18.9 ...
##   ..- attr(*, "names")= chr [1:32] "Mazda RX4" "Mazda RX4 Wag" "Datsun 710" "Hornet 4 Drive" ...
##  $ assign       : int [1:2] 0 1
##  $ qr           :List of 5
##   ..$ qr   : num [1:32, 1:2] -5.657 0.177 0.177 0.177 0.177 ...
##   .. ..- attr(*, "dimnames")=List of 2
##   .. .. ..$ : chr [1:32] "Mazda RX4" "Mazda RX4 Wag" "Datsun 710" "Hornet 4 Drive" ...
##   .. .. ..$ : chr [1:2] "(Intercept)" "wt"
##   .. ..- attr(*, "assign")= int [1:2] 0 1
##   ..$ qraux: num [1:2] 1.18 1.05
##   ..$ pivot: int [1:2] 1 2
##   ..$ tol  : num 1e-07
##   ..$ rank : int 2
##   ..- attr(*, "class")= chr "qr"
##  $ df.residual  : int 30
##  $ xlevels      : Named list()
##  $ call         : language lm(formula = mpg ~ wt, data = mtcars)
##  $ terms        :Classes 'terms', 'formula' length 3 mpg ~ wt
##   .. ..- attr(*, "variables")= language list(mpg, wt)
##   .. ..- attr(*, "factors")= int [1:2, 1] 0 1
##   .. .. ..- attr(*, "dimnames")=List of 2
##   .. .. .. ..$ : chr [1:2] "mpg" "wt"
##   .. .. .. ..$ : chr "wt"
##   .. ..- attr(*, "term.labels")= chr "wt"
##   .. ..- attr(*, "order")= int 1
##   .. ..- attr(*, "intercept")= int 1
##   .. ..- attr(*, "response")= int 1
##   .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
##   .. ..- attr(*, "predvars")= language list(mpg, wt)
##   .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
##   .. .. ..- attr(*, "names")= chr [1:2] "mpg" "wt"
##  $ model        :'data.frame':	32 obs. of  2 variables:
##   ..$ mpg: num [1:32] 21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##   ..$ wt : num [1:32] 2.62 2.88 2.32 3.21 3.44 ...
##   ..- attr(*, "terms")=Classes 'terms', 'formula' length 3 mpg ~ wt
##   .. .. ..- attr(*, "variables")= language list(mpg, wt)
##   .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
##   .. .. .. ..- attr(*, "dimnames")=List of 2
##   .. .. .. .. ..$ : chr [1:2] "mpg" "wt"
##   .. .. .. .. ..$ : chr "wt"
##   .. .. ..- attr(*, "term.labels")= chr "wt"
##   .. .. ..- attr(*, "order")= int 1
##   .. .. ..- attr(*, "intercept")= int 1
##   .. .. ..- attr(*, "response")= int 1
##   .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
##   .. .. ..- attr(*, "predvars")= language list(mpg, wt)
##   .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
##   .. .. .. ..- attr(*, "names")= chr [1:2] "mpg" "wt"
##  - attr(*, "class")= chr "lm"
```

```r
mod$residuals
```

```
##           Mazda RX4       Mazda RX4 Wag          Datsun 710 
##            -2.28261            -0.91977            -2.08595 
##      Hornet 4 Drive   Hornet Sportabout             Valiant 
##             1.29735            -0.20014            -0.69325 
##          Duster 360           Merc 240D            Merc 230 
##            -3.90536             4.16374             2.34996 
##            Merc 280           Merc 280C          Merc 450SE 
##             0.29986            -1.10014             0.86687 
##          Merc 450SL         Merc 450SLC  Cadillac Fleetwood 
##            -0.05025            -1.88302             1.17335 
## Lincoln Continental   Chrysler Imperial            Fiat 128 
##             2.10329             5.98107             6.87271 
##         Honda Civic      Toyota Corolla       Toyota Corona 
##             1.74620             6.42198            -2.61100 
##    Dodge Challenger         AMC Javelin          Camaro Z28 
##            -2.97259            -3.72687            -3.46236 
##    Pontiac Firebird           Fiat X1-9       Porsche 914-2 
##             2.46437             0.35643             0.15204 
##        Lotus Europa      Ford Pantera L        Ferrari Dino 
##             1.20106            -4.54315            -2.78094 
##       Maserati Bora          Volvo 142E 
##            -3.20536            -1.02750
```




