#tested and working
#load iris
data("iris")

#find the mean of all the columns except the 5th
apply(iris[,-c(5)], 2, FUN = mean)

#find the mean and variance of all the columns except the 5th
apply(iris[,-c(5)], 2, function(x) c(mean(x), var(x)))

#find the mean of all the rows of iris
apply(iris[,-c(5)], 1, FUN = mean)
