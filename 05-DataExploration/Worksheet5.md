Worksheet 5- Data Exploration and Plotting
========================================================

One of the most challenging parts of R is reading in your data. For spreadsheet applications, i find that comma deliminated data, .csv is the most useful format. Try out your import skills by downloading the mammal data into excel: https://github.com/bw4sz/2013-10-09-canberra/tree/master/data. Easiest way is to right click on "raw"", and hit 'save as' and save it locally. This file gives the ages of extinct mammal taxa. 

Data Exploration
-----------------
> 1. Read in the file


> 2. How many records are in the data

> 3. Using a contingency table, how many records are there for the family Cervidae

> 4. How many familes are in the data? *Hint use length and table*

Subsetting
-------

> 5. Create a smaller dataframe for just extinct beavers (Castoridae)

> 6. When was the first beaver species present in the fossil record?

Plotting
----

> 7. Make a boxplot of the range of species Last appearance dates by Order (for your interest add + theme(axis.text.x = element_text(angle = 90)) to turn the names sideways)

> 8. Using your beaver subset data create a scatterplot showing the relationship between mass and first appearance in the fossil record.

> 9. Add a smoothing line to this data using geom_smooth. Explore the method="" arguments, what is the default? How would you make the smoothing line linear? Use the help screen and google. 

> 10 BONUS. Using the geom_linerange(), Create a plot showing the time in existance  (hint:ymin=?,ymax=?) for each species of extinct beaver. Color by mass. Make it legible using themes, scale_color_continious and labels.  
