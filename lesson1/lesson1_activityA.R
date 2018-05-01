#load the tidyverse packages
install.packages("tidyverse")

#load ggplot2
library(ggplot2)

#load the msleep dataset & examine with str
data("msleep")
str(msleep)

#save a copy of the global environment
save.image("introDSwR.RData")