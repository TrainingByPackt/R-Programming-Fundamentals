data("iris")

apply(iris[,-c(5)], 2, function(x) c(mean(x), var(x)))

apply(iris, 2, function(x) c(mean(x), var(x)))

apply(iris[,-c(5)], 2, FUN = mean)

apply(iris[,-c(5)], 1, FUN = mean)

