#lists
list <- list(1, "2", "Hello", "cat", 12, list(1, 2, 3))
list
list[[1]]
list[[4]]
list[[6]][1]

as.data.frame(list)
list_vec <- as.vector(list)


#data frames
list_for_df <- list(list(1:3), list(4:6), list(7:9))

data_frame <- as.data.frame(list_for_df)
colnames(data_frame) <- c("one", "two", "three")
