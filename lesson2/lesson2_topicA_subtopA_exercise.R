#tested and working
#factor variables
data("mtcars")

#gear not as a factor:
plot(mtcars$gear)
#gear as a factor:
plot(as.factor(mtcars$gear))

#model objects + more than 1 plot at a time
mtcars_lm <- lm(mpg ~ disp + wt, data = mtcars)

par(mfrow = c(2,2))

plot(mtcars_lm)

dev.off()

#title & axis labels
data("iris")

plot(iris$Petal.Length, iris$Petal.Width)

plot(iris$Petal.Length, iris$Petal.Width,
     main = "Petal Width vs. Length",
     sub = "iris dataset",
     xlab = "Petal Length",
     ylab = "Petal Width")

#colors
plot(iris$Petal.Length, iris$Petal.Width,
     main = "Petal Width vs. Length",
     sub = "iris dataset",
     xlab = "Petal Length",
     ylab = "Petal Width",
     col = "blue")

plot(iris$Petal.Length, iris$Petal.Width,
     main = "Petal Width vs. Length",
     sub = "iris dataset",
     xlab = "Petal Length",
     ylab = "Petal Width",
     col = "111111")
