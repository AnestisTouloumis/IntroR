Worksheet 5- Data Exploration and Plotting
========================================================

One of the most challenging parts of R is reading in your data. For spreadsheet applications, i find that comma deliminated data, .csv is the most useful format. Try out your import skills by downloading the mammal data into excel: https://github.com/bw4sz/2013-10-09-canberra/tree/master/data. Easiest way is to right click on "raw"", and hit 'save as' and save it locally. This file gives the ages of extinct mammal taxa. 

Data Exploration
-----------------
> 1. Read in the file


```r
dat <- read.csv("C:/Users/Jorge/Documents/2013-10-09-canberra/Ben/mammals.csv")
```


> 2. How many records are in the data

```r
nrow(dat)
```

```
## [1] 2022
```

> 3. Using a contingency table, how many records are there for the family Cervidae


```r
table(dat$Family)
```

```
## 
##        Perdectidae      Achaenodontidae            Adapidae 
##                   1                   1                   7 
##      Agriochoeridae           Ailuridae         Alagomyidae 
##                   8                   1                   1 
##          Allomyidae       Alphadontidae       Amphicyonidae 
##                  13                  11                  19 
##      Amphilemuridae       Amynodontidae   Anthracotheriidae 
##                  11                   6                   5 
##     Antiacodontidae      Antilocapridae         Apatemyidae 
##                   1                  12                  12 
##        Aplodontidae     Apternodontidae     Aquiladelphidae 
##                  10                   3                   1 
##       Arctocyonidae     Arctostylopidae     Barbourofelidae 
##                  35                   1                   5 
##       Barylambdidae             Bovidae     Brontotheriidae 
##                   3                   2                  18 
##           Camelidae          Camelidae              Canidae 
##                  45                   1                  96 
##       Carpolestidae          Castoridae            Cervidae 
##                   7                  30                   3 
##    Chalicotheriidae        Cimolestidae      Cimolodontidae 
##                   3                  11                   4 
##        Cimolomyidae     Coryphodontidae          Cricetidae 
##                   7                   5                 144 
##    Cylindrodontidae   Cylindrodontidae         Dichobunidae 
##                  17                   2                  32 
##        Elephantidae      Entelodontidae            Eomyidae 
##                   1                   7                  49 
##     Epoicotheriidae             Equidae      Erethizontidae 
##                   2                  95                   4 
##         Erinaceidae    Escavadodontidae       Esthonychidae 
##                  17                   1                  11 
##     Eucosmodontidae        Eutypomyidae             Felidae 
##                   5                   9                  27 
##     Florentiamyidae        Geolabididae           Geomyidae 
##                  10                  12                  40 
##          Glasbiidae     Gomphotheriidae     Gypsonictopidae 
##                   1                   9                   2 
##      Hapalodectidae         Helaletidae        Helaletidae  
##                   2                   1                   2 
##       Heliscomyidae          Helohyidae    Herpetotheriidae 
##                   5                   3                   9 
##        Heteromyidae           Hyaenidae      Hyaenodontidae 
##                  64                   1                  28 
##      Hydrochoeridae      Hyopsodontidae     Hypertragulidae 
##                   2                  45                  10 
##         Hyrachyidae      Hyracodontidae      Incertae sedis 
##                   3                  11                  44 
##       Ischyromyidae      Isectolophidae           Leporidae 
##                  57                   3                  30 
##         Leptictidae      Leptochoeridae      Leptomerycidae 
##                   8                   3                   4 
##          Mammutidae      Megalonychidae          Mephitidae 
##                   3                   5                   2 
##   Merycoidodontidae  Merycoidodontidae         Mesonychidae 
##                  35                   1                  10 
##            Miacidae  Microcosmodontidae       Micromomyidae 
##                  15                   4                   5 
## Micropternodontidae       Microsyopidae        Mixodectidae 
##                   3                  19                   3 
##           Moschidae            Muridae           Musteliade 
##                   4                   3                   1 
##          Mustelidae         Mustelidae         Mylagaulidae 
##                  43                   3                   7 
##   Neoplagiaulacidae          Nimravidae           Not known 
##                  29                   7                   1 
##        Notharctidae     Nothrotheriidae      Nyctitheriidae 
##                   9                   1                  14 
##         Ochotonidae           Omomyidae        Oromerycidae 
##                  12                  58                   9 
##          Oxyaenidae        Oxyclaenidae     Pachynolophidae 
##                  15                   4                   1 
##     Palaechthonidae     Palaeomerycidae      Palaeoryctidae 
##                   9                   8                   5 
##     Palaeotheriidae      Pampatheriidae      Pantolambdidae 
##                   5                   2                   4 
##       Pantolestidae      Pantolestidae         Paromomyidae 
##                  15                   3                   8 
##       Paromomyidae          Pediomyidae        Peradectidae 
##                   1                   4                   1 
##         Perdectidae       Periptychidae     Phenacodontidae 
##                   6                  28                  19 
##       Picrodontidae       Picromomyidae       Plagiomenidae 
##                   1                   1                   8 
##      Plagiomenidae        Plesiadapidae     Plesiosoricidae 
##                   1                  18                   3 
##         Procyonidae    Prodinoceratidae       Proscalopidae 
##                  10                   3                   3 
##      Protoceratidae      Protoptychidae       Ptilodontidae 
##                  20                   1                   8 
##   Reithroparamyidae      Rhinocerotidae     Rhinocerotidae  
##                   5                  21                   1 
##        Saxonellidae         Sciuravidae           Sciuridae 
##                   1                  12                  69 
##          Simimyidae         Simimyidae            Soricidae 
##                   2                   1                  35 
##          Soricidae     Spalacotheriidae      Stagodontidae  
##                   1                   4                   1 
##     Stylinodontidae     Taeniolabididae            Talpidae 
##                   5                   8                  18 
##           Tapiridae         Tayassuidae       Titanoideidae 
##                  17                  12                   4 
##     Triconodontidae      Triisodontidae             Ursidae 
##                   1                   4                  11 
##        Viverravidae           Zapodidae         Zhelestidae 
##                  21                  13                   3
```


There are three extinct Cervidae species

> 4. How many familes are in the data? *Hint use length and table*


```r
length(table(dat$Family))
```

```
## [1] 159
```


Subsetting
-------

> 5. Create a smaller dataframe for just extinct beavers (Castoridae)


```r
Cast <- dat[dat$Family == "Castoridae", ]
```


> 6. When was the first beaver species present in the fossil record?


```r
d <- which.min(Cast$First_appearance_mya)
paste(d, "Million Years Ago")
```

```
## [1] "26 Million Years Ago"
```


Plotting
----

> 7. Make a boxplot of the range of species Last appearance dates by Order (for your interest add + theme(axis.text.x = element_text(angle = 90)) to turn the names sideways)


```r
require(ggplot2)
```

```
## Loading required package: ggplot2
```

```r
ggplot(dat, aes(x = Order_or_higher, y = Last_appearance_mya)) + geom_boxplot() + 
    theme(axis.text.x = element_text(angle = 90))
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7.png) 

> 8. Using your beaver subset data create a scatterplot showing the relationship between mass and first appearance in the fossil record.


```r
ggplot(Cast, aes(x = Mass_ln_g, y = First_appearance_mya)) + geom_point()
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8.png) 


> 9. Add a smoothing line to this data using geom_smooth. Explore the method="" arguments, what is the default? How would you make the smoothing line linear? Use the help screen and google. 


```r
ggplot(Cast, aes(x = Mass_ln_g, y = First_appearance_mya)) + geom_point() + 
    geom_smooth()
```

```
## geom_smooth: method="auto" and size of largest group is <1000, so using
## loess. Use 'method = x' to change the smoothing method.
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9.png) 



```r
ggplot(Cast, aes(x = Mass_ln_g, y = First_appearance_mya)) + geom_point() + 
    geom_smooth(method = "lm")
```

![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-10.png) 


> 10 BONUS. Create a plot showing 


```r
ggplot(Cast, aes(ymin = First_appearance_mya, ymax = Last_appearance_mya, x = Species, 
    col = Mass_ln_g)) + geom_linerange(size = 3) + scale_y_reverse() + coord_flip() + 
    scale_color_continuous(high = "red", low = "blue") + ylab("Mya") + xlab("Species")
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-11.png) 


>
