# The for() loop

#for (name in vector, ){
  #body 
#}

#example 1
nums <- c(4, 8, 9, 80, 70) #example vector
ans <- numeric(0)  #defining empty vector to put new values in
for (n in nums) { #iterate length of vector 
  ans <- c(ans, n^2) # need to define new values and put them in a new vector (ans)
}
ans #print out the vector

#example 2
sq <- numeric(6) #defining size of vector before 
for (i in seq_len(6)){ #number of iterations
  sq[i] <- i^2 #changing each value individually of the vector
}
sq #outputs the vector

#Code the fibonacci sequence

#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
'''fib = numeric(10)
fib[1:2] <- c(1, 1)
for (i in seq_len(10)){
  fib[i + 2] <- fib[i] + fib[i + 1]
}
fib'''

#fib example
fib = numeric(10)
fib[1:2] <- c(1, 1)
for (i in seq_len(10)){
  fib[i + 2] <- fib[i] + fib[i + 1]
}
fib

# if statement
'''if (condition){
  #body
}'''

'''if (condition){
  #if true
} else {
  #if false
}'''

x <- 1
if (x > 1){
  x
} else {
  x + 1
}

var_fn <- function(x){
  sum((x - mean(x))^2) / (length(x) - 1)
}
var_fn(ans)
var_fn(c(NA, 1, 2, 3))
var_fn(y)

sum(y)
var_fun2 <- function(x){
  if(is.na(sum(x))){
    stop("the input has NAs") #providing a warning about NA's
  }
}
var_fun3(y)

var_fun4 <- function(x){
  if(is.na(sum(x))){
    message("the input has NAs") #providing a warning about NA's
  }
}
var_fun4(y)

