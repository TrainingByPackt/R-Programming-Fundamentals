#tested and working
#tables
#one-way table
table(iris$Species)

#two-way table
table(diamonds$cut, diamonds$color)

#three-way table
table(diamonds$cut, diamonds$color, diamonds$clarity)

#continuous variable
table(mtcars$mpg)

### 
#dplyr methods

library(dplyr)

diamonds %>% 
  group_by(cut, color, clarity) %>% 
  summarise(n())

diamonds %>% 
  group_by(cut) %>% 
  summarise(mean = mean(price), median = median(price))

diamonds %>% 
  filter(color != "D" & color != "J") %>% 
  group_by(cut) %>% 
  summarise(mean = mean(price))
