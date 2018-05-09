mtcars$cylfactor <- as.factor(mtcars$cyl)
mtcars$gearfactor <- as.factor(mtcars$gear)
#bar charts
ggplot(mtcars, aes(cyl, fill = gearfactor )) +
  geom_bar()


ggplot(mtcars, aes(cyl, fill = as.factor(gear))) +
geom_bar(position = "dodge")
ggplot(mtcars, aes(cyl, fill = gearfactor)) +
geom_bar(position = "dodge")
ggplot(mtcars, aes(cyl, fill = as.factor(gear))) +
geom_bar(position = "fill")
ggplot(mtcars, aes(cyl, fill = gearfactor)) +
  geom_bar(position = "fill")

#facet wrapping
ggplot(mtcars, aes(cyl)) +
  geom_bar() +
  facet_wrap(~gear)

#facet gridding
#columns
ggplot(mtcars, aes(cyl)) +
  geom_bar() +
  facet_grid(~gear)
#rows
ggplot(mtcars, aes(cyl)) +
  geom_bar() +
  facet_grid(gear~.)

#boxplots
ggplot(mtcars, aes(cylfactor, mpg)) + 
   geom_boxplot() +
     coord_flip()

#scatter plots

#fill
ggplot(mtcars, aes(wt, mpg, fill = cyl)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg, col = cyl)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg, colour = cyl)) +
  geom_point()

#shape
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 17)

#shape and size
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 17, size = 3)

#shape and size and transparency
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 17, size = 3, alpha = 0.6)
