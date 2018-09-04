#tested and working
library(dplyr)
library(datasets)

table(diamonds$clarity)

table(diamonds$clarity, diamonds$color)

diamonds %>% group_by(clarity) %>% summarise(median(depth))

diamonds %>% group_by(color, clarity) %>% summarise(median(price))

diamonds %>% filter(color != "D" & color != "H") %>% group_by(color) %>% summarise(median(depth))
