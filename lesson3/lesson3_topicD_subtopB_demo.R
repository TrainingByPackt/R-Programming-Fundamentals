library(simputation)
install.packages("nycflights13")
library(nycflights13)
#reminder of how many are missing
sum(is.na(flights$air_time))

#look at variables in flights
str(flights)

#create lm to fill in missing values
flights2 <- impute_lm(flights, air_time ~ carrier)

mean(flights$air_time, na.rm = TRUE)
mean(flights2$air_time)

flights3 <- impute_lm(flights, air_time ~ carrier + distance + month)

mean(flights$air_time, na.rm = TRUE)
mean(flights3$air_time)

##if anyone asks how to impute missing categorical variables:
install.packages("Hmisc")
library(Hmisc)
flights$carrier[1200:6500] <- NA

flights$carrier2 <- impute(flights$carrier)
