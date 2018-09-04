#tested and working
#default theme
ggplot(mtcars, aes(wt, mpg, col = cyl)) +
  geom_point() 

#bw
ggplot(mtcars, aes(wt, mpg, col = cylfactor)) +
  geom_point() + 
  theme_bw()

#classic
ggplot(mtcars, aes(wt, mpg, col = cylfactor)) +
  geom_point() +
  theme_classic()

#dark
ggplot(mtcars, aes(wt, mpg, col = cylfactor)) +
  geom_point() + 
  theme_dark()

#minimal
ggplot(mtcars, aes(wt, mpg, col = cylfactor)) +
  geom_point() + 
  theme_minimal()
