#general syntax
  #THIS WILL NOT RUN AT ALL
while(test_expression){
  some_action
}

#example 1
<<<<<<< HEAD
#i <- 0 
=======
i <- 0
>>>>>>> 9779633908292b174cc9f07c5fcce8e17478c439
while(i <= 5){
  print(paste("loop", i))
  i = i + 1
}

#example 2
while(TRUE){
  print("yes!")
  break
}

#example 3
j=1
while(j < 7){
  print(paste(j, "is this number"))
  j = j + 1
}

