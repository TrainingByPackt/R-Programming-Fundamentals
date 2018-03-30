#general syntax
  #THIS WILL NOT RUN
if(test_expression){
  some_action
}

if(test_expression){
  some_action
}else{
  some_other_action
}

if(test_expression){
  some_action
}else if(another_test_expression){
  some_other_action
}else{
  yet_another_action
}

#example 1
var <- "Hello"

if(class(var) == "character"){
  print("Your variable is a character string.")
}

#example 2
var <- 5

if(class(var) == "character"){
  print("Your variable is a character string.")
}else{
  print("Your variable is not a character")
}

#example 3
if(class(var) == "character"){
  print("Your variable is a character string.")
}else if (class(var) == "numeric"){
  print("Your variable is numeric")
}else{
  print("Your variable is something besides character or numeric.")
}

#var as date
var <- as.Date("01/01/2018")

if(class(var) == "character"){
  print("Your variable is a character string.")
}else if (class(var) == "numeric"){
  print("Your variable is numeric")
}else{
  print("Your variable is something besides character or numeric.")
}
