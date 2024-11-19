#first arg = what do you want to repeat?
#second arg = how many times do you want to repeat it
rep(3, 7)
#repeat a vector
rep(c(1, 2), 5)
#repeats first value 2 times and second value 3 times
rep(c(1, 2), c(2, 3))
rep(c(1, 2), c(5, 5))
#args need to be equal
rep(c(1, 2, 3), c(2, 3))

rep(seq(2, 20, by =2), 2)
rep(seq(2, 20, by =2), rep(2, 10))

#doing it with strings
rep(c("long", "short"), c(2, 3))

#Subsetting
#new vector
run <- c(51, 31, 78, 50, 44, 40, 38, 55)
#indexing (starts at one)
run [5]
run[c(3, 7)]
#getting all values between two indexes
run[4:6]
#going in the opposite direction
run[6:4]
#taking out an index
run[-4]
#removing all values between indices 1 and 5
run[-c(1,5)]
run[c(-1,6)]
run[0]
#removing all values between indices 1 and 4
run[-(1:4)]
#will cause error
run[-1:4]

# ^ running only temporarily in the console

#changung in the environment
run <- run[-4]
run[]

#remove variable from the environment
rm(hehe)
#indices round up
run[1.9]
#changing index in environment
run[5] <- 88

bad[1:2] <- c(3, 4)
#changes 4 and 5 value
run[4:5] <- c(3, 5)

#numeric, logical, character --> data types
#numberic = numbers
#logical = boolean (true or false)
#character = strings and text
good <- numeric(2)
good[1:2] <- c(3,4)
good
numeric(4)
character(4)
logical(5)
integer(0)
