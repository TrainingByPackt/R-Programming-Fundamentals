#read in students data
students <- read_csv("./lesson1/students.csv")
#add an ID variable
students$ID <- seq(1:nrow(students))

#create second students dataset
students2 <- data.frame("ID" = seq(1:25),
                        "Gender" = sample(c("M","F"), size = 25, replace = TRUE),
                        "Grade" = sample(c(9,10,11,12), size = 25, replace = TRUE),
                        "Sport" = sample(c("Basketball", "Tennis", "Track", "None"), size = 25, replace = TRUE))
str(students2)

#merge
students_combined <- merge(students, students2, by = "ID")

students_combined <- merge(students, students2, by = "ID", all.y = TRUE)

#join
install.packages("dplyr")
library(dplyr)
students_joined <- right_join(students, students2, by = "ID")

students_joined_inner <- inner_join(students, students2, by = "ID")
students_join_anti <- anti_join(students, students2, by = "ID") #nothing

#no by variable
students_merge_noby <- merge(students, students2)
students_join_noby <- right_join(students, students2)

#join variable named different things
colnames(students)[6] <- "StudentID"

#specify the different merge variables
students_merge_diff <- merge(students, students2, by.x = "StudentID", by.y = "ID")
students_join_diff <- right_join(students, students2, by = c("StudentID" = "ID"))
