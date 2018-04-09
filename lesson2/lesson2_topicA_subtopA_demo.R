library(datasets)

data("mtcars")

#minimal plot
plot(mtcars$mpg)

#mpg vs. wt
plot(mtcars$wt, mtcars$mpg)

#factor variable
plot(as.factor(mtcars$cyl))

#lm
mtcars_lm <- lm(mpg ~ wt, data = mtcars)
plot(mtcars_lm)

#title and axis labels
plot(mtcars$wt, mtcars$mpg, 
     main = "mpg vs. wt, mtcars data",
     xlab = "weight",
     ylab = "mpg")

#color
plot(mtcars$wt, mtcars$mpg, 
     main = "mpg vs. wt, mtcars data",
     xlab = "weight",
     ylab = "mpg",
     col = "red")

#more than 1 plot
par(mfrow = c(2,2))
plot(mtcars_lm)

dev.off()
