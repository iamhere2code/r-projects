# Part One
'''
1. Sample P directions
2. Evaluate g(w^(k-1) + (alpha)(d)^1), g(w^(k-1) + (alpha)(d)^2), g(w^(k-1) + (alpha)(d)^3)...g(w^(k-1) + (alpha)(d)^P)
3. Compare and find min
4. Set the candidate update direction d^(k-1) = d^s
5. If w^(k-1) < w^k, then set w^k = w^(k-1), else set w^k <- w^k-1???
'''

#Part 2a

# Define function g, which we will find the minimum of
g <- function(x){
  cos(4 * x)+(0.4 * x^3)
}

# Define function f, which we will find the maximum of
f <- function(x){
  sin(3 * x) + (0.3 * x^2)
}

# Define the inputs
rsm <- function(g, alpha, w0, K){
  # Use a for loop to iterate for our K iterations
  for (i in seq_len(K)){
    # Set the two directions --> d1 for the positive direction, and d2 for the negative one
    d1 <- 1
    d2 <- -1
    # Find our two potential new points --> we will comparing them against each other to determine the direction
    w1 <- w0 + (alpha * d1)
    w2 <- w0 + (alpha * d2)
    # Conpare the values of the directions
    if (g(w1) < g(w2)){
      # Set the w1 to w0 so we can use it when we iterate again (this is if our positive directions yields a smaller result)
      w0 <- w1
    }
    else {
      # In the other case, set w0 to w2
      w0 <- w2
    }
  }
  # Output the list with the new w0 and its corresponding g(w0)
  list(arg = w0, val = g(w0))
}


# Run the function with g to find the minimum
rsm(g, 0.1, 1.5, 6)

# A different iteration
rsm(g, 0.1, -1.25, 6)

# Reverse sign of function to max instead of min
f_updated <- function(x){
  -f(x)
}

# Run the function
rsm(f_updated, 0.1, 0, 10)


# Part C: Optional Challenge Problem

# Define important varibles
xi = c(0.368, 0.714, 0.126, 0.006, 0.525, 0.36, 0.095,
       0.212, 0.107, 0.058)
n <- length(xi)

# The function as described in the assignment
challenge <- function(x){
  n * log(x) - x * sum(xi)
}

# Switching the sign
challenge2 <- function(x){
  -challenge(x)
}

# Run the function
(rsm(challenge2, 0.1, 1, 10))

# Make lists of all potential values
alpha_list = c(0.1, 0.01, 0.001, 0.0001)
K_list = c(10, 100, 1000, 10000)


make_it_a_table <- function(challenge2){
  # Create a matrix to store
  data <- matrix(nrow=4, ncol=4)
  # Use a nested loop to iterat through the combintations
  for (i in seq_len(length(alpha_list))){
    for (t in seq_len(length(K_list))){
      # Run and function and add the result to the data
      data[i, t] <- rsm(challenge2, alpha_list[i], 1, K_list[t])$arg
    }
  }
  return(data)
}
rsm(challenge2, alpha_list[1], 1, K_list[4])
print(make_it_a_table(challenge2))
