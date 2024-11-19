#vector arithmatic
x <- c(1, 2, 3)
y <- c(5, 6, 7)
x+y
x-y
x*y
x/y

x^y

#adds over twice!  result is [2, 4, 6, 5, 7, 9]
z <- c(1, 2, 3, 4, 5, 6)
x + z

#manually adding two vectors
c(1, 2, 3, 1, 2, 3) + c(1, 2, 3, 4, 5, 6)
x

x+4

a <- c(1, 2, 3, 4)

x + a

#squared function
squared_dev <- function(x, c) {
  (x - c)^2
}
squared_dev(x = 1.5, c = 0)
squared_dev(x = 1.5, c = 3)

#list of square roots from 1 to 20
sqrt(1:20)
log(1:10)
exp(1:30)

#VAPPLY FUNCTION
#fucntion that is not vectorizes but you want to make it vectorized
#vapply(x, fun, fun.value, ..., na.rm = TRUE/FALSE) --> x = vectors/values, fun = function you wan to change, fun.value = what you expext the output to be
#na.rm = remove missing values from vectors

#find if any numbers are even
vapply(z, function(x)[x%%2==0}, logical(1)) #logical(1) = output will be boolean type of length 1

iseven <-function(x){x%%2 == 0}

vapply(z, iseven, logical(1))

#checking if something is true
isTRUE(FALSE)
isTRUE(NA)

isTRUE(c(T, F, T, NA))

vapply(c(T, F, T, NA), isTRUE, logical(3))

#gives sum of all numbers in vector
sum(a)
prod(a)
mean(z)
sd(z)
var(z)
min(x)
max(z)
diff(x)
cumsum(z)
cumprod(z)
#sorting function
sort(x)
sort(x, decreasing = TRUE)
summary(x)

#trying to code variance function
hehe <- function(x){
  g = x - mean(x)
  g^2
  sum(g)/(length(x) - 1)
}
hehe(z)

var(z)

#coding variance function
variance <- function(x){
  n <- length(x)
  xbar <- mean(x)
  dif <- x - xbar
  sq_dif <- dif^2
  sum_sq_dif <- sum(sq_dif)
  1/(n-1) * sum_sq_dif
}

variance
