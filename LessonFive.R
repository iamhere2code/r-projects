#Relational operators

#greater than or less than
#outputs false
3 > 4

#outputs true
8 < 9

#greater then or equal to and less than or equal to
6 <= 9
0 >=8

#something equal to each other
7 == 7
7 != 0

#comparing equations
9 * 3 == 6 * 8

#outputs false because of rounding errors
49 * (4/49) == 4

#round function --> round(number, # of decimal places)
round(49 * (4/49), 3) == 4

#compares each number of the vector --> returns FALSE FALSE
c(3, 8) > 9

c(1, 4, 9) != 9

c(1,4) > c(3, 8)

#gives error
c(1, 4, 6) < c(3, 8)

#any = non vectorized --> returns true is any of what you give it is true
any(1:10 > 7)

#all = returns true is ALL of what you give it is tru (returns false if one false)
all(1:10 > 7)

#application
all(1:5 == seq(1, 5))
identical(seq(1, 10), 1:11)

first_five <- c(1, 2, 3, 4, 5)
#identical -> 
identical(first_five, 1:5)

typeof(first_five) #double because declared that way
typeof(1:5)

NA > 8

#runs normally, unless encounter NA, in which case it will return NA
c(1, NA, 9) < 0

#returns logical(0)
c(TRUE, FALSE) > NULL

#returns logical(0) 
c(1,2) > NULL

# returns logical(0)
"a" > NULL

c(1, 4, 7) == NaN

is.na(c(1, NaN, NULL, 3, NA, 5, NA)) #NaN is counted as NA
is.na(NULL)

#not vectorized --> return true only one is null --> one false and it will return false
is.null(NULL)
is.null(c(NULL, NULL))
is.infinite(c(7, -Inf, Inf, NA, 6, NaN))
is.finite()
