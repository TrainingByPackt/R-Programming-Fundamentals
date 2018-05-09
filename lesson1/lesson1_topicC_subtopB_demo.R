data("iris")

str(iris)

mean(iris$Sepal.Length)
mean(iris$Sepal.Width)
mean(iris$Petal.Length)
mean(iris$Petal.Width)

#first for loop
for(i in seq_along(iris)){
  print(mean(iris[[i]]))
}

#for loop + if
for(i in seq_along(iris)){
  if(class(iris[[i]]) == "numeric"){
    print(mean(iris[[i]]))
  }
}

#for loop + if/else
for(i in seq_along(iris)){
  if(class(iris[[i]]) == "numeric"){
    print(mean(iris[[i]]))
  }else{
    print(paste("Variable", i, "isn't numeric"))
  }
}

#nrow
for(i in 1:nrow(iris)){
  print(iris[i, "Sepal.Width"])
}

nrow(iris)
seq_along(iris)
