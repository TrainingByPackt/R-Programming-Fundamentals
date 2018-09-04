#tested and working
#bar chart

ggplot(mpg, aes(class)) +
  geom_bar(fill = "purple")

ggplot(mpg, aes(class, fill = as.factor(drv))) +
  geom_bar(position = "fill")

#scatter plot
ggplot(diamonds, aes(carat, price, col = cut)) +
  geom_point(alpha = 0.4)

ggplot(diamonds, aes(carat, price)) +
  geom_point(shape = 6, alpha = 0.3)
