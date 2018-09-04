#tested and working
#read in students data
library(readr)
students <- read_csv("https://github.com/TrainingByPackt/Beginning-Data-Science-with-R/blob/master/lesson1/students.csv")
#add an ID variable
students$StudentID <- seq(1:nrow(students))

#create second students dataset
students2 <- data.frame("ID" = seq(1:25),
                        "Gender" = sample(c("M","F"), size = 25, replace = TRUE),
                        "Grade" = sample(c(9,10,11,12), size = 25, replace = TRUE),
                        "Sport" = sample(c("Basketball", "Tennis", "Track", "None"), size = 25, replace = TRUE))
str(students2)

#create third students dataset
students3 <- data.frame("SID" = seq(1:16),
                        "HomeroomTeacher" = sample(c("Brown", "Mullins", "Mosadek", "Rivers"), size = 16, replace = TRUE),
                        "ACTScore" = sample(20:32, size = 16, replace = TRUE),
                        "CollegePlans" = sample(c("None", "State", "Private"), size = 16, replace = TRUE))


#merge
students_first_merge <- merge(students, students2, by.x = "StudentID", by.y = "ID")
students_final_merge <- merge(students_first_merge, students3, by.x = "StudentID", by.y = "SID")

#join
students_first_join <- left_join(students, students3, by = c("StudentID" = "SID"))
students_final_join <- full_join(students_first_join, students2, by = c("StudentID" = "ID"))
