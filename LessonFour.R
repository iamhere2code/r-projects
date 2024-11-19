#Special Values = Values that represent unknown data

#includes an NA value --> number is not available
run <- c(34, 41, 87, 45, NA, 78, 100)
mean(run)
#calculates the mean without accounting for the NA
mean(run, na.rm = TRUE)
#calculates the standard deviation without accounting for the NA
sd(run, na.rm = TRUE)

#NULL --> number doesn't have a value

#mode shows type of data
mode(NA)
mode(NULL)
#NULL has length of 0 --> leaving answer blank
length(NULL)
#NA has length of 1 --> Answering NA
length(NA)

NaN #--> Not a Number
mode(NaN)
mode(character(0))
log(-1)

#Tells you how value is stored in R (e.g. double, integer)
typeof(1:10)
typeof(1.01)
mode(1.01)
mode(1:10)

n <- 1:10
#works because of order of operations
5/4 * 4/5 * n - n
2 * n

#different than equation above to to order of operations leading to rounding errors
1.25 * (n * 0.8) - n



#variance function --> gives squared distances from the mean for each value
var1 <- function(x){
  n <- length(x)
  #because are squaring first, we encounter a lot of rounding errors
  (sum(x ^ 2) - n * mean(x)^2)/(n-1)
}

variance <- function(x){
  n <- length(x)
  1/(n-1) * sum((x-mean(x))^2)
}

n <- 1:10
var1(n)
var(1:10)

#distance from mean should not change if you add the same number to every index
new <- n + 1e10
var(new)
var1(new)

#to avoid rounding errors, start with small operations and build up to bigger operations
