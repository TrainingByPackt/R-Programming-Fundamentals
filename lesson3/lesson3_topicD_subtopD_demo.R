#na.omit

?na.omit

#set some of the iris data to missing
iris$Sepal.Length[4:10] <- NA
iris$Sepal.Width[56:89] <- NA

#demonstrate complete.cases
complete.cases(iris)

#demonstrate na.omit
iris_no_missing <- na.omit(iris)

#how many are missing, total
sum(is.na(iris$Sepal.Length), is.na(iris$Sepal.Width))

nrow(iris_no_missing)