library(readr) #needed for read_csv()

#check your working directory - is this where the titanic_train.csv is located?
getwd()
list.files() #can be used to verify if titanic_train.csv is in your wd

#read in data
titanic_train <- read_csv("titanic_train.csv")

#examine variables
str(titanic_train)

#how many Age missing?
sum(is.na(titanic_train$Age)) #177

#mean, median Age
mean(titanic_train$Age, na.rm = TRUE)
median(titanic_train$Age, na.rm = TRUE)

#mean imputation
titanic_train$Age_mean <- ifelse(is.na(titanic_train$Age),
                                 mean(titanic_train$Age, na.rm = TRUE),
                                 titanic_train$Age)
mean(titanic_train$Age_mean)

#median imputation
titanic_train$Age_median <- ifelse(is.na(titanic_train$Age),
                                 median(titanic_train$Age, na.rm = TRUE),
                                 titanic_train$Age)
median(titanic_train$Age_median)


#run this code to see how drastically different age is by Embarked:
library(dplyr)
titanic_train %>% group_by(Embarked) %>% summarise(median(Age, na.rm=TRUE))

install.packages("simputation")

library(simputation)

titanic_train2 <- impute_median(titanic_train, Age ~ Embarked)
median(titanic_train2$Age)
