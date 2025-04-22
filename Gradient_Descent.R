g <- function(w){
  w[1]^2 + (w[2] * w[3]) + (w[1]* w[2]) + (w[1] * w[3]) + (w[2]^2 + w[3]^2)
}

dg <- function(w){
  return(c(2 * w[1] + w[2] + w[3], 2* w[2] + w[1] + w[3], 2 * w[3] + w[2] + w[1]))
}

#grad_desc <- function(g, dg, alpha, w0, N){
  #w_old <- w0
  #for(i in seq_len(N)){
    #wk <- w_old - alpha * dg(w_old)
    #w_old <- wk
  #}
  #c(wk, g(wk))
#}

grad_desc <- function(g, dg, alpha, w0, N){
  w_old <- w0
  for(i in seq_len(N)){
    wk <- w_old - alpha * dg(w_old)
    w_old <- wk
  }
  list(min = wk, val = g(wk))
}

grad_desc(g, dg, alpha = 0.4, w0 = c(1, 2, 3), 75)