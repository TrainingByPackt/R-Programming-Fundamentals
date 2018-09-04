#tested and working
#install and load readr
install.packages("readr")
library(readr)

#load in students and students 2 from github
students <- read_csv("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson3/students.csv")
students2 <- read_csv("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson3/students2.csv")

#use str to examine both datasets
str(students)
str(students2)

#merge
students_combined <- merge(students, students2, by = "ID")
dim(students_combined)

students_combined2 <- merge(students, students2, by = "ID", all.y = TRUE)
dim(students_combined2)

#join
install.packages("dplyr")
library(dplyr)

#right join
students_right_join <- right_join(students, students2, by = "ID")
dim(students_right_join)

#anti join
students_anti_join <- anti_join(students, students2, by = "ID") 
dim(students_anti_join)


#no by variable
students_merge_noby <- merge(students, students2)
students_join_noby <- right_join(students, students2)

#join variable named different things
colnames(students)[6] <- "StudentID"

#specify the different merge variables
students_merge_diff <- merge(students, students2, by.x = "StudentID", by.y = "ID")
students_join_diff <- right_join(students, students2, by = c("StudentID" = "ID"))
