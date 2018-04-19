library(readr) #needed for read_csv()

#check your working directory - is this where the titanic_train.csv is located?
getwd()
list.files() #can be used to verify if titanic_train.csv is in your wd

#read in data
titanic_train <- read_csv("titanic_train.csv")

#examine variables
str(titanic_train)

library(simputation)

titanic_train2 <- impute_lm(titanic_train, Age ~ Sex + Fare)
mean(titanic_train2$Age)

titanic_train3 <- impute_lm(titanic_train, Age ~ Sex + Fare + Pclass + Embarked)
mean(titanic_train3$Age)
