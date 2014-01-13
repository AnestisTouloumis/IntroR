Worksheet #1 - Basics of R
===========================
The most important aspect to learn about R, and perhaps programming in general, is that tasks are completed sequentially. Large functions are objects built on small steps. Code is written into the script, run in the console, and plots are rendered on the right pane to visualize results.  

The goal of this worksheet is begin enganging with R on basic levels, including computing arithmatic, saving objects, and subsetting vectors. 

Basic Math
---------

R can compute all commonly used arithmatic operations. The user inputs the parameters into a function, or specifies the relationship among objects, the result is returned in the console.

  1. What is the sum of 856 + 765?
  2. What is 104 multiplied by 187
  3. What is 1 divided by 12 + 47

Vectors
--------

The most straightforward way to combine numbers, letters or logicals is in a *vector*. Vectors are created directly using the function *c()*. Vectors have positions, beginning at 1. To call a position, nameofvector[indexnumber]

  4. Create a vector of 1 to 5, save it as object x
  5. Create a vector of 12, 17, 9, 11, save it as object y
  6. Create a vector of both x and y together
  7. Run g<-seq(11,333,3), what is the 68 position in this vector?
  8. How do you call both the 68 position and 79 simultaneously?
  
Functions
-----------

Functions are the heart of R. They sourced files allow users to call code created and distributed within packages, or sent from friends! Functions have three essential parts.

* A name, more accuracteuly, a namespace, which declares which function to use.
* Input parameters or arguments which tell the function what you want to do.
* Output, either saved as a object, or returned directly into the console.


8. What is the mean of vector of 1:33
9. What is the sum of 1 divided by 5 + 10, plus 1 divided by 6 * 46
10. What is the cube root of natural log (8)
11. What is the cube root of log based 10 (8)

**Getting help on functions**

The secret to R is a robust sense of adventure and confidence. There are tens of thousands of functions, in thousands of packages. One cannot expect to ever "know" R, this is simply the wrong mindset. Instead of focusing on memorizing the syntaxes, functions and design - place the following skill above all others: **Reading the help screen**

All published functions have help screens. They have a standardized format. At the top is a brief *description* explains the goal of the function.There may be a small paragraph on **usage**, especially in the function takes on multiple forms. The **arguments** are described next, each argument is described in a row, and should specify whether there is a default. All arguments without defaults are mandatory. This is followed by additional **details**, other sources, and citations. Finally the **value** section reports the format of the output. Most importantly, good help screens come with reproducible code **examples** at the very bottom. This code should run without any additional lines, thereby giving the user a good idea about the format of the code.

  12. Look up the help screen for the function cut; What is the goal of this function?
  13. Make a vector x<-0:100; cut this vector into 2 pieces. What is the default breaks?
  14. What does the argument dig.lab do?
  15. Cut the vector into 3 pieces
  16. Specify the breaks to be exactly intervals of 25 *hint* use a vector!
