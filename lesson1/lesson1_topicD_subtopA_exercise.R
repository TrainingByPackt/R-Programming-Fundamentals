#tested and working
#part 1:
#import csv, 3 ways

#with read.table
students_csv1 <- read.table("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson1/students.csv", 
                            header = TRUE, 
                            sep = ",")

#with read.csv
students_csv2 <- read.csv("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson1/students.csv")

#with read_csv
install.packages("readr")
library(readr)

students_csv3 <- read_csv("https://raw.githubusercontent.com/TrainingByPackt/Beginning-Data-Science-with-R/master/lesson1/students.csv")

#examine 2 & 3, paying attention to variable types
str(students_csv2)
str(students_csv3)

#########

#part 2:
#install & load xlsx
 install.packages("openxlsx")
library(openxlsx)

#import excel
students_xlsx <- read.xlsx("students.xlsx")

#create id
students_xlsx$id <- seq(1:nrow(students_xlsx))

#.xlsx file
write.xlsx(students_xlsx, "students_xlsx_out.xlsx")
