#tested and working
#create factor variables
library(datasets)

data("midwest")
str(midwest)

midwest$state <- as.factor(midwest$state)

data("band_instruments")
str(band_instruments)

band_instruments <- data.frame(apply(band_instruments, 2, as.factor))
str(band_instruments)

#####
levels(band_instruments$plays)

band_instruments$plays2 <- ifelse(band_instruments$plays == "bass", 1,
                                 ifelse(band_instruments$plays == "guitar", 2, band_instruments$plays))


levels(midwest$state)

library(dplyr)
midwest$state2 <- recode(midwest$state,
                         "IL" = "Illinois",
                         "IN" = "Indiana",
                         "MI" = "Michigan",
                         "OH" = "Ohio",
                         "WI" = "Wisconsin")

########
#ordered factor

gas_price <- rep(c("low", "medium", "high"), times = 146)
gas_price <- gas_price[-1]

midwest$gas_price <- factor(gas_price, 
                            levels = c("low", "medium", "high"), 
                            ordered = TRUE)

table(midwest$gas_price)
