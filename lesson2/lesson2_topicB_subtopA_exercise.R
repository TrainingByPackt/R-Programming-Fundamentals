#tested and working
install.packages("ggplot2")
library(ggplot2)

data("msleep")

#histogram
ggplot(msleep, aes(sleep_total)) +
  geom_histogram()

ggplot(msleep, aes(sleep_total)) +
  geom_histogram(binwidth = 10)

ggplot(msleep, aes(sleep_total)) +
  geom_histogram(binwidth = 1)

#bar chart
ggplot(msleep, aes(vore)) +
  geom_bar()

ggplot(msleep, aes(vore)) +
  geom_histogram(stat = "count")

#scatterplot
ggplot(msleep, aes(bodywt, sleep_total)) +
  geom_point()

ggplot(msleep, aes(bodywt, sleep_total)) +
  geom_jitter(width = 50)

#boxplot
ggplot(msleep, aes(vore, sleep_total)) +
  geom_boxplot()
