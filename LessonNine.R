'''Summary
Cbind
Matrices
Mean and range with matrices
Apply w/ matrices
'''

# apply()
mat <- cbind(c(62, 71, 66), c(115, 201, 119), c(4000, NA, 2000))
colnames(mat) <- c("Height", "Weight", "Income")
rownames(mat) <- c("Mas", "George", "Milton")

mean(mat[,1]) #with comma, how you select column, instead of row
mean(mat[,2])
mean(mat[,3])

#apply(data, #col(2) or row(1), function,...) --> number is whether you want to apply the function to column(2) or row(1)
apply(mat, 2, mean, na.rm=TRUE)
apply(mat, 1, mean, na.rm=TRUE)

range(mat[,1])
range(mat[,2])
range(mat[,3])

apply(mat, 2, range, na.rm=TRUE)

apply(mat, 2, function(x){
  (x - mean(x, na.rm = TRUE))^2
})
y <- matrix(0, nrow=3, ncol = 3)
for(i in 1:3){
  x <- mat[,i]
  y[,i] <- (x - mean(x, na.rm = TRUE))^2
}
y

#R Packages
search()
library(MASS)
CRAN #<- comphrehenisive R network
install.packages("boot")
library(boot)
data <- bigcity
library(help="MASS")

data2 <- city

data(trees) #<-- helps you get data in the dataset
?trees

?poisons

head(trees, 8) #gives you first part of the dataset
tail(trees, 8) #gives you second part of the dataset