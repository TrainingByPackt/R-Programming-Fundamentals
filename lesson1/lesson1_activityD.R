#load the datasets library
library(datasets)
#load the mtcars dataset
data("mtcars")
#view the data with str()
str(mtcars)

#create var 
mtcars$hpcyl <- mtcars$hp/mtcars$cyl

#write csv
write.csv(mtcars, "mtcars_out.csv")

?read.csv
mtcars_in <-read.csv("mtcars_out.csv")
