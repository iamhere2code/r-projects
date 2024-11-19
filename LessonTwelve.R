#Lists

l <- list (
  1:10,
  matrix(1:6, nrow = 2, ncol = 3),
  df,
  list(1:5, matrix(1:9, ncol = 3, nrow = 3))
)

l #first position is vector [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

char_vec <- c("kanzah", "erin")

c(l, char_vec) # what will it be coerced into?
c(l, list(char_vec))

length(l)
names(df)
names(l) #returns NULL because there are no names
names(l) <- c("Vector", "Matrix", "Data Frame", "List")

l[[3]] #returns 3rd index of the lisr
l[[1]]
l[[2]]
l[[2]][2, 2]
l[[1]][8]
l[[4]][[1]][4] #returns the 4 index of the first index of the fourth index of the list
l[[-1]] #error

l[[4]][[2]][,3]
l[[c(4,2,3)]] #4, 2 taken as double brackets, treats 5 as 5th value in matrix --> l[[4]][[2]][[3]]

l$Matrix[,3]
l$List # gives you everything in the list

l$L

l$Function <- mean
mode(l[1])
l[[1]]
l[-c(1,4)] #gives you all items in list excluding 1 and 4 indices
l$`Data Frame`

str(l)
summary(trees$Volume) # divides the data into 4 equal parts
summary(trees) #gives summary for each colun
summary(df)
summary

# apply()
apply(trees, 2, mean, na.rm = TRUE) # 2 means column, 1 means row --> gives mean value of all the columns

lapply() #<- applies function to all columns in the list
#l(x, function)
lapply(l, length)
lapply(trees, range) #apply(trees, 2, range)

which_median <- function(x){
  which(x == median(x))
}

lapply(trees, which_median)

#sapply
sapply(l, length) #formats answers nicely
sapply(trees, range)
