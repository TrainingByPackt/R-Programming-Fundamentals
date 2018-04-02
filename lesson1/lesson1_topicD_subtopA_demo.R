#import .txt
students_text <- read.table("students.txt")

?read.table

students_text <- read.table("students.txt", header = TRUE)

#import csv, 3 ways
students_csv1 <- read.table("students.csv", header = TRUE, sep = ",")

students_csv2 <- read.csv("students.csv")

library(readr)
students_csv3 <- read_csv("students.csv")

#import xlsx
library(xlsx)
students_xlsx <- read.xlsx("students.xlsx")

#create new variable
students <- students_text

students$Height_cm <-( students$Height_inches * 2.54)
students$Weight_kg <- (students$Weight_lbs/0.453592)

#.txt file
write.table(students, "students_out.txt")

#.csv file
write.csv(students, "students_out.csv")

#.xlsx file
write.xlsc(students, "students_out.xlsx")