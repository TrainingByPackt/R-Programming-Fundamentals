data("iris")

#split iris
iris_species <- split(iris, iris$Species)

iris_setosa <- iris_species[[1]]
iris_versicolor <- iris_species[[2]]
iris_virginica <- iris_species[[3]]

#unsplit iris
iris_back <- unsplit(iris_species, iris$Species)

#using dplyr
library(dplyr)

iris_setosa <- iris %>% filter(Species == "setosa")
iris_versicolor <- iris %>% filter(Species == "versicolor")
iris_virginica <- iris %>% filter(Species == "virginica")

#string splitting
names <- c("Danelle Lewison", "Reyna Wieczorek", "Jaques Sola", "Marcus Huling", "Elvis Driver", "Chandra Picone", "Alejandro Caffey", "Shawnna Lomato", "Masako Hice", "Wally Ota", "Phillip Batten", "Denae Rizzuto", "Joseph Merlos", "Maurice Debelak", "Carina Gunning", "Tama Moody")


library(stringr)

names_split <- str_split(names, pattern = " ")

names_split[[1]]
names_split[[1]][1]

names_split_a <- str_split(names, pattern = "a")

names_split_a[[1]]
names_split_a[[1]][2]

#combining data

data("midwest")
str(midwest)

midwest1 <- midwest[1:round(nrow(midwest)/2),]
midwest2 <- midwest[(round(nrow(midwest)/2)+1):nrow(midwest),]

midwest_back <- rbind(midwest1, midwest2)

#more than 1
one <- 1:15
two <- 16:30
three <- 31:45
four <- 46:60

all <- rbind(one, two, three, four)
all2 <- cbind(one, two, three, four)

all3 <- rbind.data.frame(one, two, three, four)
all4 <- cbind.data.frame(one, two, three, four)