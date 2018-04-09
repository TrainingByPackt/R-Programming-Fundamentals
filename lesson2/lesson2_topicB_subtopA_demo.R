#load ggplot2
library(ggplot2)

#load the dataset
data("mtcars")

#histogram
ggplot(mtcars, aes(mpg)) + 
  geom_histogram()

ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth  = 10)

ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth = 1)

ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth = 3)

#bar chart
ggplot(mtcars, aes(cyl)) +
  geom_bar()

ggplot(mtcars, aes(cyl)) +
  geom_histogram(stat = "count")

#scatterplot and jitter
ggplot(mtcars, aes(wt, mpg)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg)) +
  geom_jitter()

#boxplot
ggplot(mtcars, aes(cyl, mpg)) + 
  geom_boxplot()

ggplot(mtcars, aes(as.factor(cyl), mpg)) +
  geom_boxplot()