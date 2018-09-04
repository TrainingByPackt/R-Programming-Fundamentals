#tested and working
#load ggplot2
library(ggplot2)

#load the dataset
data("mtcars")

#histogram
ggplot(mtcars, aes(mpg)) + 
  geom_histogram() + 
  ggtitle("mpg histogram", subtitle = "binwidth 30")

ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth  = 10)+ 
  ggtitle("mpg histogram", subtitle = "binwidth 10")

ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth = 1) + 
  ggtitle("mpg histogram", subtitle = "binwidth 1")

ggplot(mtcars, aes(mpg)) + 
  geom_histogram(binwidth = 3) + 
  ggtitle("mpg histogram", subtitle = "binwidth 3")

#bar chart
ggplot(mtcars, aes(cyl)) +
  geom_bar() +
  ggtitle("geom_bar()")

ggplot(mtcars, aes(cyl)) +
  geom_histogram(stat = "count") +
  ggtitle("geom_hist(stat = \"count\")")

#scatterplot and jitter
ggplot(mtcars, aes(wt, mpg)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg)) +
  geom_jitter(width = 0.1)

#boxplot
ggplot(mtcars, aes(cyl, mpg)) + 
  geom_boxplot()

ggplot(mtcars, aes(as.factor(cyl), mpg)) +
  geom_boxplot()
