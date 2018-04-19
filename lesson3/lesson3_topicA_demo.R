#load datasets:
library(datasets)

data("mtcars")
str(mtcars)

data("iris")
str(iris)
levels(iris$Species)


#class & type of a factor variable
class(iris$Species)
typeof(iris$Species)


#lesson 2 demo e.g.:
plot(as.factor(mtcars$cyl))


#model e.g.
summary(lm(mpg ~ cyl, data = mtcars))

summary(lm(mpg ~ as.factor(cyl), data = mtcars))


#plot e.g.
plot(mtcars$cyl)

library(ggplot2)

ggplot(mtcars, aes(cyl, mpg)) + geom_boxplot()

ggplot(mtcars, aes(as.factor(cyl), mpg)) + geom_boxplot()


#cyl as factor
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$cyl2 <- as.factor(mtcars$cyl) 


#transform multiple variables
factors <- c("cyl", "am", "gear")
mtcars[,factors] <- data.frame(apply(mtcars[,factors], 2, as.factor))
str(mtcars)

head(mtcars[,factors])


#check for factors
is.factor(mtcars$cyl)
is.factor(mtcars$mpg)

class(iris$Species)
str(iris$Species)


#factor levels
levels(iris$Species)

iris$Species2 <- ifelse(iris$Species == "setosa", 1,
                        ifelse(iris$Species == "versicolor", 2, 3))

table(iris$Species)
table(iris$Species2)

library(dplyr)

iris$Species3 <- recode(iris$Species,
                        "setosa" = 1,
                        "versicolor" = 2,
                        "virginica" = 3)


#ordered factors
speed <- rep(c("low", "medium", "high"), times = 11)
speed <- speed[-1]

mtcars$speed <- factor(speed, levels = c("low", "medium", "high"), ordered = TRUE)
levels(mtcars$speed)
class(mtcars$speed)
