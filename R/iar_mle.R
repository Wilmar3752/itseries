iar_loglik <- function(x, phi) {
  w <- calc_w_fit(x, phi)
  ll <- (1 / 2) * sum(log(w))
  return(ll)
}

iar.mle <- function(par = 0,
                    fn = iar_loglik, data,
                    hessian = TRUE,
                    method = "Brent") {
    p <-  optim(par = par,
          fn = fn, x = data,
          hessian = hessian,
          method = "Brent", lower = -0.99, upper = 0.99)
    par <- p$par
    return(par)
}