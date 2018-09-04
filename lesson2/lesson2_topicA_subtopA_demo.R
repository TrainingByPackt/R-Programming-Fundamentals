#tested and working
#how to get help with plots
  #all 3 of these do the same thing!
?plot

help("plot")
help(plot)

#plotting demo
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
     main = "MPG vs. Weight",
     sub = "mtcars dataset",
     xlab = "Weight",
     ylab = "MPG")

#color
plot(mtcars$wt, mtcars$mpg, 
     main = "MPG vs. Weight",
     sub = "mtcars dataset",
     xlab = "Weight",
     ylab = "MPG",
     col = "red")

#more than 1 plot
par(mfrow = c(2,2))
plot(mtcars_lm)

dev.off()
