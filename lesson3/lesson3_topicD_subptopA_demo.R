
install.packages("nycflights13")
library(nycflights13)

data("flights")

str(flights)

sum(is.na(flights$air_time)) #9430

#replace with mean or median
flights$air_time_mean <- ifelse(is.na(flights$air_time), 
                                mean(flights$air_time, na.rm = TRUE), 
                                flights$air_time)

sum(is.na(flights$air_time_mean))

mean(flights$air_time)

mean(flights$air_time, na.rm = TRUE)
mean(flights$air_time_mean, na.rm = TRUE)


flights$air_time_median <- ifelse(is.na(flights$air_time), 
                                median(flights$air_time, na.rm = TRUE), 
                                flights$air_time)

median(flights$air_time, na.rm = TRUE)
median(flights$air_time_median, na.rm = TRUE)

#####

install.packages("simputation")
library(simputation)

flights2 <- impute_median(flights, air_time ~ month)

median(flights$air_time, na.rm = TRUE)
median(flights2$air_time, na.rm = TRUE)

library(dplyr)
flights2 <- flights %>% 
  group_by(month) %>% 
  mutate(air_time_median_by_month = 
           ifelse(is.na(air_time), 
                  median(air_time, na.rm = TRUE), 
                  air_time))
