z <- c(1, 2, 3)

#mean function
meanie <- function(x){
  sum(x)/length(x)
}

meanie(z) #works!

#standard deviation
deviation <- function(x){
  sqrt(var(x))
}
deviation(z) #works!

#covriance --> (sum of all x - mean of x) * (sum of all of y - mean of y)
covariance <- function(x, y){
  (sum(x) - meanie(x)) * (sum(y) - meanie(y))/(length(x) - 1)
}

covariance(x, y)

#correlation
correlation <- function(x, y){
  cov(x, y)/(deviation(x) * deviation(y))
}

correlation(x,y)

#z-score
zscore <- function(x){
  (sum(x) - meanie(x))/(deviation(x))
}

zscore(x)

#skewness
skewness <- function(x){
  thing = length(x)/((length(x-1) * length(x-2)))
  ((((sum(x) - meanie(x))/deviation(x)))^3) * thing
}

#compound interest
interest <- function(p, r, n, t){
  (p * (1 + (r/n)))^(n*t)
}
 interest (1, 1, 1, 1)

#entropy
entropy <- function(x){
  (sum(x * log(x, base = 2))) * -1
}
entropy(x)

#cosine similarity
cosine <- function(a, b){
  top = sum(a + b)
  bottom = (sqrt(sum(a^2))) * (sqrt(sum(b^2)))
  top/bottom
}

#quad
quad <- function(a, b, c){
  c(((-b + sqrt((b^2) - (4 * a * c))/(2 * a))), ((-b - sqrt((b^2) - (4 * a * c))/(2 * a))))
}
quad(1, 1, 1)
