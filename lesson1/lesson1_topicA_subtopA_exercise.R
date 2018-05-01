#check working directory
getwd()

#subtract function
subtract <- function(x, y){
  x - y
}

#does it work?
subtract(1, 2)

subtract(100, 5)

subtract(56, 234)

#save an image of the global environment
save.image("introtoDSwR.RData")