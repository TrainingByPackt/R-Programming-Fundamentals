#tested and working
library(datasets)

#diamonds
data("diamonds")
str(diamonds)

class(diamonds$cut)
class(diamonds$color)
class(diamonds$clarity)

#midwest
data("midwest")
str(midwest)

to.factor <- c("county", "state", "category")
midwest[,to.factor] <- data.frame(apply(midwest[,to.factor], 2, as.factor))
str(midwest)
