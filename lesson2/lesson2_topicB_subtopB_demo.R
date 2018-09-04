#tested and working
#create factor versions
mtcars$cylfactor <- as.factor(mtcars$cyl)
mtcars$gearfactor <- as.factor(mtcars$gear)

#bar charts
ggplot(mtcars, aes(cyl, fill = gearfactor)) +
  geom_bar()

#these do the same thing:
ggplot(mtcars, aes(cyl, fill = as.factor(gear))) +
geom_bar(position = "dodge")
ggplot(mtcars, aes(cyl, fill = gearfactor)) +
geom_bar(position = "dodge")
#so do these
ggplot(mtcars, aes(cyl, fill = as.factor(gear))) +
geom_bar(position = "fill")
ggplot(mtcars, aes(cyl, fill = gearfactor)) +
  geom_bar(position = "fill")

#facet wrapping
ggplot(mtcars, aes(cylfactor)) +
  geom_bar() +
  facet_wrap(~gearfactor)

#facet gridding
#columns
ggplot(mtcars, aes(cylfactor)) +
  geom_bar() +
  facet_grid(~gearfactor)
#rows
ggplot(mtcars, aes(cylfactor)) +
  geom_bar() +
  facet_grid(gearfactor~.)

#boxplots
ggplot(mtcars, aes(cylfactor, mpg)) + 
   geom_boxplot() +
     coord_flip()

#scatter plots

#fill
ggplot(mtcars, aes(wt, mpg, fill = cylfactor)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg, col = cylfactor)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg, colour = cylfactor)) +
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
