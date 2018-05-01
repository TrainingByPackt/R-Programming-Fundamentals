#all code comes from the dplyr introduction vignette, found here: https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html

#install and load dplyr
install.packages("dplyr")
library(dplyr)

#install the data package
install.packages("nycflights13")

library(nycflights13)
dim(flights)

flights

#filter
filter(flights, month == 1, day == 1)

flights[flights$month == 1 & flights$day == 1, ]

#arrange
arrange(flights, year, month, day)

arrange(flights, desc(arr_delay))

#select
select(flights, year, month, day)

select(flights, year:day)

select(flights, -(year:day))

#mutate
mutate(flights,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60
)

#summarise
summarise(flights,
          delay = mean(dep_delay, na.rm = TRUE)
)