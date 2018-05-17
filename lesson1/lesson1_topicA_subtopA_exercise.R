#check working directory
getwd()

#area function
area_rectangle <- function(length, width){
  length * width
}

#does it work?
area_rectangle(5, 10)

area_rectangle(80, 70)

area_rectangle(48209302930, 4)

#save an image of the global environment
save.image("introtoDSwR.RData")
