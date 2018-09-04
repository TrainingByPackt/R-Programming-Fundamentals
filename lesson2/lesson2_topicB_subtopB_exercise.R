#tested and working
#load the data if you haven't
data("msleep")

#bar charts
ggplot(msleep, aes(vore, fill = conservation)) +
  geom_bar(position = "dodge")

ggplot(msleep, aes(vore, fill = conservation)) +
  geom_bar(position = "fill")

#facet wrapping/gridding
ggplot(msleep, aes(conservation)) +
  geom_bar() +
  facet_wrap(~vore)

ggplot(msleep, aes(conservation)) +
  geom_bar() +
  facet_grid(vore~.)

#scatterplots
library(dplyr)
msleep2 <- msleep %>% filter(bodywt < 2000)

ggplot(msleep2, aes(brainwt, bodywt)) +
  geom_point(shape = 17)

ggplot(msleep2, aes(brainwt, bodywt)) +
  geom_point(shape = 17, size = 6)
