#tested and working
#split/unsplit
install.packages("datasets")
library(datasets)
data("mtcars")

mtcars_split <- split(mtcars, mtcars$cyl)

mtcars_4 <- mtcars_split[[1]]
mtcars_6 <- mtcars_split[[2]]
mtcars_8 <- mtcars_split[[3]]

mtcars_unsplit <- unsplit(mtcars_split, mtcars$cyl)

#combining data
l1 <- letters[1:4]
l2 <- letters[5:8]
l3 <- letters[9:12]
l4 <- letters[13:16]
l5 <- letters[17:20]

letters1 <- rbind.data.frame(l1, l2, l3, l4, l5)
letters2 <- cbind.data.frame(l1, l2, l3, l4, l5)
