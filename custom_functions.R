sum_missing <- function(variable_name){
  if(class(variable_name)=="character"){
    return(sum(variable_name==""))
  }else if(class(variable_name)=="numeric"){
    return(sum(is.na(variable_name)))
  }else{
    return(print("Your variable isn't of type character or numeric!"))
  }
}

#build xyz to test sum_missing()
x <- c(1,2,3,4)
y <- c(5,6,NA,8)
z <- c("a","b","c","d")
xyz <- as.data.frame(cbind(x,y,z))