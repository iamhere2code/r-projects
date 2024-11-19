#diagnol matrices

D <- matrix(1:9, nrow = 3, ncol = 3)
E <- matrix(1:9, nrow = 3, ncol = 3)
D*E
D

D %*% E
#D %*% A

diag(2)
diag(c(1, 2, 3))
diag(3, 6, 5)
?diag
diag(5)

diag(matrix(1:12, nrow = 3, ncol = 4))


solve(D)
solve(A)
solve(matrix(c(1, -1, 3, 4), ncol = 2, nrow = 2))
det(D)

vapply()
apply