#general syntax
  #THIS WILL NOT RUN AT ALL
while(test_expression){
  some_action
}

#example 1
i <- 0 
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
while(i < 6){
  print(paste(j, "is this number"))
  i = i + 1
}

