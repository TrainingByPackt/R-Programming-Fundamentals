#lists
L1 <- list(1, "2", "Hello", "cat", 12, list(1, 2, 3))

L1[[1]]
L1[[4]]
L1[[6]][1]

L1_df <- as.data.frame(L1)
class(L1_df)
L1_vec <- as.vector(L1)
class(L1_vec)


#data frames
list_for_df <- list(list(1:3), list(4:6), list(7:9))

example_df <- as.data.frame(list_for_df)
colnames(example_df) <- c("one", "two", "three")
