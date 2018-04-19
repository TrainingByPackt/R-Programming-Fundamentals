#if someone asks for demo of rpivotTable:
install.packages("rpivotTable", "htmlwidgets")

library(rpivotTable)
rpivotTable(diamonds)

#demo starts here:

table(iris$Species)

table(diamonds$cut, diamonds$color)

table(diamonds$cut, diamonds$color, diamonds$clarity)

library(dplyr)

diamonds %>% group_by(cut, color, clarity) %>% summarise(n())

table(mtcars$mpg)

#summarising with dplyr
diamonds %>% group_by(cut) %>% summarise(mean = mean(price), median = median(price))

diamonds %>% filter(color != "D" & color != "J") %>% group_by(cut) %>% summarise(mean = mean(price))
