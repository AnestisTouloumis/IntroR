15min Group Assignment - Answers
=================
Choose one of the following challenges.

1. Plot the ranges of bill sizes using geom_linerange() for each clade. *Hint* to get a vector of clade names, use levels(traits$Clade)
2. Create a new index of wing to mass ratios. Plot the index by species, colored by the clade, add a dotted line (geom_abline()) to show whether species fall above or below 1.
3. Does the number of species in a genus relate to the variance in body size?

1.

```r
# read in the data
traits <- read.csv("C:/Users/Ben/Documents/GitHub/IntroR/05-DataExploration/Traits.csv", 
    row.names = 1)

# Get a list of all the clades
clades <- levels(traits$Clade)
clades
```

```
## [1] "Bee"       "Brilliant" "Coquettes" "Emerald"   "Hermit"    "Mangoe"   
## [7] "MtGem"     "Patagona"  "Topazes"
```

```r

# Create a blank list to store outputs
out <- data.frame()

# For each clade, subset the trait matrix to get just members of that clade
for (x in 1:length(clades)) {
    cladetoSelect <- clades[x]
    print(cladetoSelect)
    cladeD <- traits[traits$Clade == cladetoSelect, ]
    # Get the row of the species with the largest bill
    rowL <- which.max(cladeD$Bill)
    # Get the fow of species with the smallest bill
    rowS <- which.min(cladeD$Bill)
    # Subset the clade data to get those rows
    out <- rbind(out, cladeD[c(rowL, rowS), ])
}
```

```
## [1] "Bee"
## [1] "Brilliant"
## [1] "Coquettes"
## [1] "Emerald"
## [1] "Hermit"
## [1] "Mangoe"
## [1] "MtGem"
## [1] "Patagona"
## [1] "Topazes"
```

```r

# plot the results
```


2. Create a paneled ggplot figure using facet_wrap() that shows the allometric relationship between mass and wingchord for each clade. Add a linear smoothing line following the instructions in "stat_smooth()


```r
# Create new column for the w/m ratio
traits$w_m <- traits$WingChord/traits$Mass

ggplot(traits, aes(x = Mass, y = WingChord, col = Clade)) + geom_point() + geom_smooth(method = "lm", 
    aes(group = 1)) + facet_wrap(~Clade)
```

```
## Error: could not find function "ggplot"
```

```r
ggplot(traits, aes(x = Species, y = w_m)) + geom_point() + geom_smooth(aes(group = 1), 
    method = "lm") + facet_wrap(~Clade, scales = "free")
```

```
## Error: could not find function "ggplot"
```


