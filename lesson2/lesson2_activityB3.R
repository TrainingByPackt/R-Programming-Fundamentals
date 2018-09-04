#tested and working
ggplot(cars, aes(speed, dist)) +
  geom_point() + 
  labs(title = "dist vs. speed", subtitle = "cars dataset", y = "distance")

#OR
ggplot(cars, aes(speed, dist)) +
  geom_point() + 
  ggtitle("dist vs. speed", subtitle = "cars dataset") +
  ylab("distance")


###########

ggplot(diamonds, aes(carat, price, col = cut)) +
  geom_point(alpha = 0.4) +
  theme_minimal()
