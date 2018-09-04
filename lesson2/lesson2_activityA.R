#tested and working
#load the datasets library
library(datasets)
install.packages("ggplot2")
library(ggplot2)
#load the data
data("iris")
data("mtcars")

#plot 1
plot(iris$Petal.Width)

#plot 2
plot(iris$Petal.Width, iris$Petal.Length,
     main = "Petal Length vs. Petal Width",
     xlab = "Petal Width",
     ylab = "Petal Length")

#plot 3
plot(as.factor(mpg$cyl),
     col = "blue",
     xlab = "# of cylinders")

#plot 4
par(mfrow = c(1,2))
plot(iris$Petal.Width, iris$Petal.Length,
     xlab = "Petal Width",
     ylab = "Petal Length")
plot(iris$Sepal.Width, iris$Sepal.Length,
     xlab = "Sepal Width",
     ylab = "Sepal Length")

dev.off()
