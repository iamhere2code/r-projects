#import/export using dump

#source("name of file) --> used for functions that are in another r script

#dump <-- x < c(1, 2, 3, 4)

#save() <-- takes ijn various variables and arguments and creates a file containign them
#can include file, ascii save(x, y, file = "xy.R)
#.R files are used for saving r code 
#Rdata is used to save multipler multiple R objects
#.r files are used for saving sctips, rdata is used for saving objects
#read.table(), read.csv
#has format of read.table(file="Full file name")
#header = TRUE --> sets first row as the names 
#write.table --> used to taker input values anf turn them into a table
#write.table(data, )
#write.csv uses data from a csv file (like a sheet) ---> will open like a sheet

read.csv("/Users/alishuf/Downloads/student_scores.csv", header = TRUE, check.names = FALSE)


csv <- read.csv("/Users/alishuf/Downloads/student_scores.csv", check.names = FALSE)

save(csv, file = "thingy.RData")
names <- c("Kanzah", "Chloe", "Alisha", "Sam", "Mikey")
score <- c(5, 3, 8, 4, 6)
data <- data.frame(names, score)
write.csv(data, "/Users/alishuf/Downloads/data.csv")

dump("data", file = "/Users/alishuf/Downloads/hehe.csv")
source("LessonTwelve.R")
