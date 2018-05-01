#part 1: vectors

#twenty vector
twenty <- c(1:20)

#alphabet
alphabet <- c(letters)

#examine type and class
class(twenty)
typeof(twenty)

class(alphabet)
typeof(alphabet)

#accessing twenty
twenty[5]
twenty[17]
twenty[25]

#accessing alphabet
alphabet[6]
alphabet[23]
alphabet[33]

#########
#part 2: matrices

#by column
matrix1 <- matrix(c(1:12), nrow = 3, ncol = 3, byrow = FALSE)
#by row
matrix2 <- matrix(c(1:12), nrow = 3, ncol = 3, byrow = TRUE)

#class
class(matrix1)
class(matrix2)

#set the row and column names of matrix1
rownames(matrix1) <- c("one", "two", "three")
colnames(matrix1) <- c("one", "two", "three")

#matrix indexing
matrix1[1, 2]
matrix1["one",]
matrix1[,"one"]
matrix1["one","one"]