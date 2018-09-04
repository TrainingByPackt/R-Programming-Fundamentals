#tested and working
data("mtcars")

str(mtcars)

apply(mtcars[,-c(2,10,11)], 2, function(x) c(mean(x), var(x)))
