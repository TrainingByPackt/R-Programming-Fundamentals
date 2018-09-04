#tested and working
#plot 1
ggplot(iris, aes(Petal.Width)) +
  geom_histogram(binwidth = 0.5)

#plot 2
ggplot(mtcars, aes(gear)) +
  geom_bar()

#plot 3
ggplot(iris, aes(Petal.Width, Petal.Length)) +
  geom_point()

#plot 4
ggplot(iris, aes(as.factor(Species), Petal.Width)) +
  geom_boxplot()
