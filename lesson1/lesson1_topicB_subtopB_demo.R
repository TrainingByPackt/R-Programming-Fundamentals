#vectors
vector <- c(1,2,3,4)
class(vector)

vector <- c("1", 2, "3", 4)
class(vector)

#vector indexing
vector[1]
vector[2]
vector[3]
vector[4]
vector[5]

#lists
list <- list(1, "2", "Hello", "cat", 12, list(1, 2, 3))
list
list[[1]]
list[[4]]
list[[6]][1]

as.data.frame(list)
list_vec <- as.vector(list)

#matrices
vec1 <- rep(1:4)
vec2 <- rep(5:8)
vec3 <- rep(9:12)

matrix <- cbind(vec1, vec2, vec3)
class(matrix)
matrix

matrix <- rbind(vec1, vec2, vec3)
class(matrix)
matrix

matrix[1,2]

colnames(matrix) <- c("one", "two", "three", "four")
rownames(matrix) <- c("one", "two", "three")

matrix["one",]
matrix[,"one"]
matrix["one","one"]

matrix_test <- cbind(vector, vec1)
class(matrix_test[,2])
typeof(matrix_test)

#data frames
data_frame <- cbind.data.frame(vector, vec1)
