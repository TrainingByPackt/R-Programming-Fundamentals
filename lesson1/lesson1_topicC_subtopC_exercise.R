#loop 1
vec <- seq(1:10)

for(num in seq_along(vec)){
  if(num %% 2 == 0){
    print(paste(num, "is even"))
  } else{
    print(paste(num, "is odd"))
  }
}

#loop 2
example <- data.frame(color = c("red", "blue", "green"),
                      number = c(1, 2, 3))

for(i in seq(nrow(example))){
  print(example[i,1])
}

#loop 3
var <- 5
while(var > 0){
  print(var)
  var = var - 1
}
