#tested and working
## SPLITTING DATA
data("iris")

#split iris
iris_species <- split(iris, iris$Species)
#check the type & class
typeof(iris_species)
class(iris_species[[1]])

#print the head of 2, the versicolor data.frame
head(iris_species[[2]])

#turn the lists into data.frames
iris_setosa <- iris_species[[1]]
iris_versicolor <- iris_species[[2]]
iris_virginica <- iris_species[[3]]

#create iris_back
iris_back <- unsplit(iris_species, iris$Species)

library(dplyr)
all_equal(iris, iris_back)

#create the 3 iris datasets again with filter()
iris_setosa_2 <- iris %>% filter(Species == "setosa")
iris_versicolor_2 <- iris %>% filter(Species == "versicolor")
iris_virginica_2 <- iris %>% filter(Species == "virginica")

#rejoin the new iris datasets and evaluate the equality with iris
iris_back_2 <- rbind.data.frame(iris_setosa_2, iris_versicolor_2, iris_virginica_2)
all_equal(iris, iris_back_2)

## COMBINING DATA 

#install & load ggplot2
install.packages("ggplot2")
library(ggplot2)

#load midwest and examine with str()
data("midwest")
str(midwest)

#create midwest_1 and midwest_2
midwest1 <- midwest[1:round(nrow(midwest)/2), ]
midwest2 <- midwest[(round(nrow(midwest)/2)+1):nrow(midwest), ]

#create midwest_back
midwest_back <- rbind(midwest1, midwest2)

#check to see if datasets are equal
all_equal(midwest, midwest_back)

#combine more than 2 objects into data.frames
one <- 1:15
two <- 16:30
three <- 31:45
four <- 46:60

#create all1 and all2
all1 <- rbind(one, two, three, four)
all2 <- cbind(one, two, three, four)

#check the class of all1 
class(all1)

#recombine one, two, three, and four as data.frames
all3 <- rbind.data.frame(one, two, three, four)
all4 <- cbind.data.frame(one, two, three, four)

#look at the class of all3
class(all3)



## SPLITTING STRINGS

#install and load stringr
install.packages("stringr")
library(stringr)

#create the names vector & check its length
names <- c("Danelle Lewison", "Reyna Wieczorek", "Jaques Sola", "Marcus Huling", "Elvis Driver", "Chandra Picone", "Alejandro Caffey", "Shawnna Lomato", "Masako Hice", "Wally Ota", "Phillip Batten", "Denae Rizzuto", "Joseph Merlos", "Maurice Debelak", "Carina Gunning", "Tama Moody")
length(names)


#create names_split, which splits on blank spaces between names
names_split <- str_split(names, pattern = " ")

names_split[[1]]
names_split[[1]][1]

#create names_split_a
names_split_a <- str_split(names, pattern = "a")

names_split_a[[1]]
names_split_a[[1]][2]

names_split_a[[5]]

#combining strings
a <- "R"
b <- "is"
c <- "fun"

paste(a, b, c, "!")

paste0(a, b, c, "!")

paste(a, b, c, "x", 10)

