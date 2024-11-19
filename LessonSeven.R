#challenge problem

#while loop

#while(condition) {
  #body
#}

num <- 1
while (num <= 20){
  num <- num + 6
}
num

fib1 <- 1
fib2 <- 1
full_fib <- c(fib1, fib2)

while(fib1 + fib2 < 500){
  old_fib2 <- fib2
  fib2 <- fib2 + fib1
  full_fib <- c(full_fib, fib2)
  fib1 <- old_fib2;
}
full_fib

'''repeat{
  #condition
}'''

#repeat loop

num <- 1
repeat{
  num <- num + 6
  if(num > 20){
    break
  }
}
num

#Matrices

#matrix(data, nrow, ncol, byrow)
matrix(1:6, nrow = 2, ncol = 3)
A <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE) #<- defining byrow fills out my row, not by column
A[1, 1] #<- give value at [row 1, column 1]
A[2]

dim(A) #<- gives dimension of matrix
dim(full_fib)

A <- matrix(1:4, nrow = 2, ncol = 6) #will reuse values to fill rows
B <- matrix(5:9, nrow = 5, ncol = 2)
matrix(0)

dim(A)
dim(B)
A + B

cbind(c(1,2), c(3, 4), c(5, 6)) #cbind = column bind that shows the values in columns
rbind(c(1,2), c(3, 4), c(5, 6)) #rbind = row bind that shows the values in row
rbind(A, B) #can also bind two matrices

attributes(1:6)
attributes(A)

attributes(A) <- NULL #turn matrix into vector
A

attributes(A) <- list("dim" = c(6, 2)) #turn back into matrix
A

attr(A, "dim") <- NULL #"dim" equals which attribute you want to change
attr(A, "dim")

