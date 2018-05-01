#load datasets
data("iris")
data("ChickWeight")

# if
var <- 100

if((var/5) >= 25){
  print("Big number")
}

if((var/5) >= 25){
  print("Big number")
} else{
  print("Not as big of a number")
}

if((var/5) >= 25){
  print("Big number")
} else if((var/5) >= 20){
  print("Medium number")
} else{
  print("Not as big of a number")
}

# for
for(i in seq(nrow(iris))){
  print(paste("iris", i, "is", as.character(iris$Species[[i]])))
}

# while
i <- 12

while(i > 0){
  print(paste(i, "is a positive number"))
  i = i - 1
}

# for and if
Diet1 <- NULL
Diet2 <- NULL
Diet3 <- NULL
Diet4 <- NULL

for(chick in seq(nrow(ChickWeight))){
  if(ChickWeight$Diet[[chick]] == 1){
   Diet1 <- rbind(Diet1, ChickWeight[chick,])
  }else if(ChickWeight$Diet[[chick]] == 2){
    Diet2 <- rbind(Diet2, ChickWeight[chick,])
  }else if(ChickWeight$Diet[[chick]] == 3){
    Diet3 <- rbind(Diet3, ChickWeight[chick,])
  }else{
    Diet4 <- rbind(Diet4, ChickWeight[chick,])
  }
}

