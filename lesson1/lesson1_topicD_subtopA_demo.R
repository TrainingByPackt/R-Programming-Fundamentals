#tested and working
#import .txt file
students_text <- read.table("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson1/students.txt")

#open up students_text and take a look to see how it imported

?read.table

students_text <- read.table("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson1/students.txt", 
                            header = TRUE)

#open students_text again to be sure!

#create new variable
students_text$Height_cm <- (students$Height_inches * 2.54)
students_text$Weight_kg <- (students$Weight_lbs * 0.453592)

#.txt file
write.table(students_text, "students_text_out.txt")
