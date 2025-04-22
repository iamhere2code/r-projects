vec = c(u, v, xi)

der1 <- function(vec)){
  (1/vec[2]) * sum(vec[4] - vec[1])
}

der2 <- function(vec){
  (-5/vec[2]) + (1/2 * (vec[2]^2)) * sum((vec[4] - vec[1])^2)
}

mat1 <- function(vec){
  10/vec[1]
}

mat2 <- function(vec){
  (-1/vec[1]^2) * sum(vec[3] - vec[1])
}

mat3 <- function(vec){
  (-1/v^2) * sum(xi - u)
}

mat4 <- function(vec){
  (5/vec[2]^2) - (1/vec[2]^3) * sum((vec[3] - vec[1])^2)
}

hess <- function(vec){
  matrix(c(mat1(vec), mat2(vec), mat3(vec), mat4(vec)), ncol = 2, nrow = 2)
}

newtons_method <- function(vec, a, k, hess){
  wk <- w0
  for (i in seq_len(K)){
    grad <- c(der1(vec), der2(vec))
    wk <- wk - solve(hess(vec)) * grad
  }
  c(wk,)
}




hessian <- matrix()



x = c(162, 168, 171, 159, 175, 180, 172, 169, 165, 178)
